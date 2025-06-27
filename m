Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5499025E46A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751059194; cv=none; b=RA7zQ8Onox1Z8Fw0q3uGYs9tTd44oZJVkqNypodMLxNvKox7btvywoxMXn/N1aisU1LN0YCCk8BinoFJQd3NwaRzUXBPcNG0tXZ4qQclpc+CRpTm4fhgKIruKrSr/uRMkJoitv0rdLmBdJLRTwQ7uWmycHOrxee4xt1PUTs9mGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751059194; c=relaxed/simple;
	bh=wpUqxUWPWqA1JO6ziJB51OlsrbYSmhyJmUIhzcf4PFM=;
	h=To:Subject:From:Message-Id:Date; b=Ol+hZCWQRHxrIccABqsbYqRnqwiIQFiAw48eg3dZJvr8HnWcA+pcC29rX1QVgU5bZB1ggrs/5q3SWKj4iJGzsbszZ+hxFIhjSH1MeOL8didGKX4aWxdwfOSabtNFR8m+FBnYrmy21+oxZCPG6bOwgas764j0cV5zOaHW0BKPpMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNIZDGVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNIZDGVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30FFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751059193;
	bh=wpUqxUWPWqA1JO6ziJB51OlsrbYSmhyJmUIhzcf4PFM=;
	h=To:Subject:From:Date:From;
	b=JNIZDGVnj2ZRZYNXg1bi0C+jcSRzgDGUhAokRqgec11AgqBYfwFRtd6bmnGZAy6iE
	 OSyP842ffrrBDCcBRNbHIThv/2x7Yvlb8kcPmryggClhsBSVINvs0gr/oSqM3Mj7Qi
	 DREE/KqQAlj73CxnFIpwqbcI0poathyAoq/DBH50QZPY9xfhAiPTzOphSOtoU8YiRe
	 JiAmxqR6KAg/0qa+tQC2ynipd+nIG1ZFEzzQwzEjusM15dO5BtGJM8mvOt2FnSLCxO
	 l3Zk2NtnjQY9Nlvez0m+zgxoy/cho87NOLiAFJj1dLLOsLc/CzDquevVkqOLOFNbNt
	 CJo60pHKutKFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCCDC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105919367.21322.10234415736843334903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5863b11e592d6fd603a51a52daa569f066dc7f6b2f4f4466ad1f77ac7b309ad1
Date: Fri, 27 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751059193
