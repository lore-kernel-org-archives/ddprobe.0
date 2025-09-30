Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1EB260569
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759238994; cv=none; b=M2+77z7p710qkXK71Df5euCvxKLIfTjODfzIPLn9bZztJuXEWdRRlSVTPs9Y2aSe2cOmglR2pxSkeaPTKRqFOP3uIpvbYmbvkmsvR36Lhs15wgPSkac3mAFrJ2YcKGaGNFvPbAf1USEO8BzkGlHFUmQLQldLsN/7bbZeLhxTaiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759238994; c=relaxed/simple;
	bh=iTOB80VzZjzp12MSIx4adzDT/+OSrmnTGcsuWUfs2BU=;
	h=To:Subject:From:Message-Id:Date; b=bSG9XcM3VoJ2kXSwdItrX4kvSJQeBYBOhG4teUQgW6IjqImzxKeUqUWWzwC6bzkNgNbmq3Z7+6Jl8WsgjZDgwjVIoBYk/SQVH6aW/IkvAg6Q8DeGMnQNS4lFq7TV1gNHxll0t1OUNUdsZnpMec78qbAb7o8vwjdiFmtl4+Vzq70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yl6l+EyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yl6l+EyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF49C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759238993;
	bh=iTOB80VzZjzp12MSIx4adzDT/+OSrmnTGcsuWUfs2BU=;
	h=To:Subject:From:Date:From;
	b=Yl6l+EyMRTvhrRU5fnS5KzuJ11LVSUyIimX+jLk+sM9O7FpxZT2vpbA86MSrntW/i
	 DQzNYgJAedeg/WcSaprRodiPvvtOrjZtp8niMDrMQKcaz0QXb1cNDqhMuD8xMjmR7j
	 88KUhzNkPLWtK40BF3ZI/fqb+VF1ZXpp02Jh9dCi+Dc21RZ2aZYL8FfalVTvOCnCGA
	 Ax3nZQSRlQHDPwzolsFJBStR41BxTJBiT04W1JHvTLO4rjXgIUa12SuNJjCYSHKWeS
	 0V95140yumRlqyP7TxJlcMNJhcsb6QXRUwiDmlm5TwK/u5l/hUZhoInfGKA7FrGeYG
	 wn8OlyDkPKhUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9104ACCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923899358.11252.17835908840538951416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13735401db3725f4c3d44235fdab923c26e1aad0ea426f78f62f84c7a4443e4
Date: Tue, 30 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759238993
