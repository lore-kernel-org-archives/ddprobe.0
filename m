Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D1A27F754
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774998294; cv=none; b=PxNckXmyX9tz7fdDMRFS/hVxqEvjX//u3VXUBFa8OSaZ9ofqPHIAEQqx7CZjJG1QRUb+aY4f2/rPhBgbvRI2PIrlkZS4lETh0+ahyw4OyjUWhCKVNmbxuzOWbLKkHAMg18tqGvQ03BggiINE6kcOHm19Zg0FhltdCKVKXGXAnhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774998294; c=relaxed/simple;
	bh=vecGsKAx3shuHkgRNHqD0iH0zZy96bb+a5UqxJWIPVY=;
	h=To:Subject:From:Message-Id:Date; b=aDk1+CT/NhV9KBuA45uBzgXbJUvNrGH8xIYZWNEPItwvHwnr+eIgVxoIaOFqR1ldKfTZHxwk6piW8I+QxahxsBNJT72MT9mcE38voDLtlL8XSTpJG0foTAwGe0nzo8DOp6SVn9+MG+L+tH085aH5MHbOECMv2Z1eEC2hDggKQpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPQo0qbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPQo0qbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15D1C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774998293;
	bh=vecGsKAx3shuHkgRNHqD0iH0zZy96bb+a5UqxJWIPVY=;
	h=To:Subject:From:Date:From;
	b=NPQo0qbhxKK3/G9Etz+hWAl7Eo7Ijjc4UgPUKrc5/hKD7xekW1wnY5mebg/U3eCKj
	 CTIozwFQ5Ozv7ELUY3GUrOaysS0M5UaRXdBLUn/x8acYW0Q207pzJMnD7QQ+rUMPqe
	 zVTsfzynZneUVsOK4NyyGMxkwldB8qWy2dsyUC5Vo3a2ojPLbU+5FBUSHq01a2f4fN
	 6JmCr3Z6ZPPVUUI9oGuURTrpwDAqsxd11RPcHBoUMwAk0izBPPX50cOQHm2hkV4uhT
	 VHAOMEucATWCsySL20C4MPByHrdnWdn63tMV5M65G/WMlBjMfEnuzt/Tfme+AWuCxY
	 3ouymLHy4Jn3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8A010F9309
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499829360.26069.7973149627598611530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc0a922191b0ac9c0238730d38ea5f19a96ba9e0571b155fe491b7f8d12bac0
Date: Tue, 31 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774998293
