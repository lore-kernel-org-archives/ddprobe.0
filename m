Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EDA1392
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744483795; cv=none; b=e1n4qBmeX02QN5G53rxUnzMh7ruZDuKR9qBn1HK3QcEgA1GRhWOj+BRKoEjUf9ncQNotazWU817RVSbHacOO8Lx8wlaauVayjCykAKMRSZ9kfUCfKGlFO4a3sfM9yulQ057azs0ATv93WR2PCt9vn5xLOEVBkQFbBzvTYeeUhiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744483795; c=relaxed/simple;
	bh=vWHVhx6qgbvpZf+z4gfSq58brDNXzheQbPJKycHb/9c=;
	h=To:Subject:From:Message-Id:Date; b=qqrx2bplqB9BVoFV9bS2RT36LSetmPg46Aqiwzp/wc+LKEOuDSRAzPXIwLvPSWxHnzRO5hcP5utGj0220xf1H4OvDB5sM0ztXvvRcwmKOulnWRswbFl3G8sBJbZl0TZ9JxgfPmEhgNrKMjS0AIRkOOS/j16LdMlCPhbG39s/zXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqO2JHIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqO2JHIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6624C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744483793;
	bh=vWHVhx6qgbvpZf+z4gfSq58brDNXzheQbPJKycHb/9c=;
	h=To:Subject:From:Date:From;
	b=UqO2JHIKPgsV3ELXjHtXlvjh6hMXBu8PPIsw+A+trlz1FlgPaWrTn72JYjI4m23jV
	 8y4hpqMZ2jf7dT5iZGKxlGj1X1ISU1Y6jVFZUwqJvCHawmZvWbIOzmX6tlEcuRFmSE
	 B+TukUVYZO8WAIYr3SciuJX5hoKorHH5VPmT7bPxhUaBF82KVfVSRx0eplPm7/nx+8
	 0xXTIP44rHD/Hrahm3k6q2MrJo3AM6dXXII2U4VLfEbHIyz3J7L1rxn2IIItUcjXqf
	 Ouc7MrmR5/CA4NBj5CDml6RynpQ4tsc2M+DVyNMOElSurybN568+9vIDaoJajiGcpb
	 a/lqmhrzQLIOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F08CC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448379360.27858.15200152533097571104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d8254816483e5cbadb7dc7de5b0ffc7d41125b78fc940d94b1c537f79aa977
Date: Sat, 12 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744483793
