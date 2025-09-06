Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD8E14A8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757184594; cv=none; b=dP2SVeM/V1Abb648v6o0mCjNoTbqMdT3bACIMk+ZZa+sKIlVWTd1zrueTcfYrmlyxV3ikDXUeXIj+Rv4x93ioplO+ebRVq0WkBFmhVSeBagSZmzP8Xd/lH+0/u0eSlCj+2PgzQ8oemim4XesfS4F9VXG2GIvRZVg3KS5xTeEAPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757184594; c=relaxed/simple;
	bh=5CSzSFZySxGo1zjxuU7gzv8DOpjHElTtOyjHlkJDOMk=;
	h=To:Subject:From:Message-Id:Date; b=Kjo7Xo1O/tKwMPtsT4FffVGqws36OODGwGcKHCMtQNAz1oWWXBvNj2MrW6LmBF1K7fN9nFWPeYBSbsHRjbMIM9WvQQ3v/IddQSy2Hw/NDU1lRGyec0iiVsQHrIHtiYglUHh8TiasIaHaAvO0/cgGeAlCX8UNIW/m/QdkTc+iA4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojejjqku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojejjqku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEDCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757184593;
	bh=5CSzSFZySxGo1zjxuU7gzv8DOpjHElTtOyjHlkJDOMk=;
	h=To:Subject:From:Date:From;
	b=ojejjqkudZQG8Gbf8fmomBbaSLNp6hhQzd2pYmITAmqwKt8EyAgqw8sIVHHWvvLFU
	 xBNzXfUEiTPZm6BR2v739vFsaoh6NQbduribUmoLngSfeSjkIkn//3STYPaGFn2X9i
	 1pK5k8l+q4mdJh5OlVf+LPh7HQAKTHWfRBBj1bc8qLiTeIULNBStsrZud0tg9+lfr8
	 eL7Wi4Jpdbg4xuv79a8+Ft780nAQXwwVEqpHVDC3C0E6m5tfOxHtGFxHWhagRImxr6
	 1K7sY2iowRT06irLuOsfraY9lehiR5YKLMT1GwetqZLGaVJyQIq1UplJcypcC57Gm6
	 PEFXhwCCrwWEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CACA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718459357.19794.16043884715731039450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dedc1728663e53065b8d57fc0126df1619625b135006ec3a1b609d05ad7419f
Date: Sat, 06 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757184593
