Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CF238B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752193794; cv=none; b=Pf7a1iaC1fLDm/H27L+UBOj2ScmXaU2ArNPPI112L+L00MUkMllckPlch4Bz1J2POZOrf/vbMpQlk+gO82jvQIcmy6+DNei/wYI24oDdJTWoVs0rgUUAyxym1rsWhR+MELMQqFTqWPii61P7km+ZvcegQwbQy9uKOtC+x5J3s1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752193794; c=relaxed/simple;
	bh=51bm09xDacAAF8NT3ZpjuKi1usmH+2DGZS/qPeABcPs=;
	h=To:Subject:From:Message-Id:Date; b=QcelXJM0Rjfp3EmAiRKQSBn0YtQ4Nola0O+L+yuBV2+WrqIift5xCsa9x9OxL8Rz8+jeabyiJMiImllkWfZF2nSlOhQdCfVSnWUSX9xLk5g/Wg0e6wE7lzB+1tUYvLsXUaTWoiTa1SVNMoxnfCxqhSHWo6k2rGa1eQ1h9MH1KJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0VVONjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0VVONjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752193793;
	bh=51bm09xDacAAF8NT3ZpjuKi1usmH+2DGZS/qPeABcPs=;
	h=To:Subject:From:Date:From;
	b=O0VVONjG/CrBG04LjovZuW30fkDJB51tgpJgiNB3PBVY/26inyC402s1pOX/7lGw7
	 MZQe85Vv/QePgkRDGmx4aIFisX+/71U4HFWE7kj2CJ5HqC5SQvJVc9zusRUqW5n+z0
	 d5zakDHWRKS2eOTztJhfIK7M8R1tcWo+aTOJONDP7SYbyL9K3R6EPDpiytDZmWXKVl
	 qNV6V0cMKHyE0NLigvUJ9FbYaY3ZL1XrobUeEyFK16NHk1QOi1jxzKMO/QEUc+WGF9
	 Wg7WbGP/Gbxk7++niYcIYWQvb+LvCmr+N28hjZKpwaC0nH/q0SSNp2KpnfdiAUq9Fn
	 M3rVklgnhIANA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C62C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219379357.24265.3734706544062968442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0715b0faf8ca9f26ceea2cbf7aeee23ccab3fc21763434e3f4dcef22786762
Date: Fri, 11 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752193793
