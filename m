Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F79228CB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779098434; cv=none; b=bQYKIHQkHCRCTyWTaOcHmgmFfR9gg9p+HjTrFZIzQGy7nvbVkxTE4pOzNySwuJpEHny9ERkGO7pn58C8wXYZJeRLW4Rfc8KS7/5Aa2l18yoSU2Zs2kC+AYxAYpBBfALuJbKv0Pafy22dI3a4lHEc4Urm7w8ufPD6VMOrHDMnkLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779098434; c=relaxed/simple;
	bh=Pr3HDBXz69MFbtO3UpmgjV2bzDDtazNQfTzWFebjs2Q=;
	h=To:Subject:From:Message-Id:Date; b=o0Ol5Q1Erd9Eg43NTjGojQkb+M7bUEAFNVtX3/4v+pNxaX0mx3R/bitUfvWc9WnGcUD7FcPVpt4f/JxixL998BR+m1APjL6lqRkZ+y1gcSeFIkU1Jem18OAJHLizGQC1uydW3uIOVW7sVxgEg7d43XSMgsjuVsNuLGeYH1PCm+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy/s93ii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy/s93ii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E2AC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779098433;
	bh=Pr3HDBXz69MFbtO3UpmgjV2bzDDtazNQfTzWFebjs2Q=;
	h=To:Subject:From:Date:From;
	b=dy/s93iieyCaaPe+KcyJzAhv2tJLlAPqzXt8EKMhp42brJslEH7L8tEXevsZuZ0dJ
	 9eGG3Y5OmcqHvNwylKBufSPLjzptYMie5+Idawh+Wwit9liXrq91VHDfzmsODjtouz
	 GtLrsy6OC6i30KgkZOFrDH7V3+zcWLTT1FXg2KEW59dEWy31oOVKqyIFKhtsx/32Mr
	 mm8PkXYxK3h4uDAzaciOC9JMfaZPQYR4/g2A4EoAcOZpmdAyZrzkTX7EDvJ0yKKCZp
	 wEkXnBzmO+OIVa6zDlPa0jjfqzJrVUZfTLgsvtiFwdIyUWvRWNqKdM6U2Pmww78akb
	 ISAldwz9o4bOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD84CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909843370.21210.6272016012585458770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afd32daff663d5816ad66ae3a6635e87bdcd2c9bbd39d378750f799f8fc194c
Date: Mon, 18 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779098433
