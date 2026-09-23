Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A57B2E4257
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790166634; cv=none; b=kjGEZmyRFPmQ7OuSO5GVsmd1Vv5aCdkY3HuGyowjy+f6PcKgCVOKpEBFk7tKXzFY1FBLo7MMo21hnQEU8IelrpxXg1XQEmbt/pVBYsEcpat9cdJPKWfkGxQ7heQ4U5n+TIZgIxunR/Hi6mBOQksdjnK5AgnRQxwFB1HBfb6kDm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790166634; c=relaxed/simple;
	bh=1TCJ2ybHHuRsRe9g4Rs3DdHQZhJmdIBlaNhifW4A0bQ=;
	h=To:Subject:From:Message-Id:Date; b=gh1Hq2KnFKtl6uuREg4kWwl2axcm15k8gA7IbGM4IytWcfHyXJ7+VtNgc6qcePhaNA149KdxANZ+0hjcsRwF6NmotY+BqrjpodM1YQSiJwbffqQPIZ3XFYExelWJ5JsxVIjrRjHRLc4YzqBiHMtBL7Rf6IkHwSNcguAcX852N4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcM8r3Dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcM8r3Dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B1BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790166633;
	bh=1TCJ2ybHHuRsRe9g4Rs3DdHQZhJmdIBlaNhifW4A0bQ=;
	h=To:Subject:From:Date:From;
	b=ZcM8r3DjjgPWqc+m8i6cDcZs4IDcffjQqu9xb70/KQTkdpug0S0nvhCgFPScrMvPG
	 9L0fdX6L8bHme8LerubwqR+zK26dEiPHBvTj+ACTARCKdPfSDN0g2Htl5Qz+d0AzNr
	 HtHA8YtPSlcdUg8HuxX7l2UdEa4lFPQNHfO+iVJwP69Hat+7bqfI5IBG7YiX3zpfwq
	 UoLY9jKz6+6zPVM5mgBXDQqKTsgSxrRQlH3Hq9D7RqoDZQeoaGxJ/ZM24OvcTtxrc8
	 xZpOPfs6/9gadqL16F1H8kSUWIilm7J0xFUzFyNVnANPXngOhVNT84bIdMbw4A8KTg
	 lgveuGpG8FHiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A8EC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016663370.27588.13898136495617759380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 293a17a87479e606e8a1c9037cb2617ee1982ba26631342f2ad268abab773b35
Date: Wed, 23 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790166633
