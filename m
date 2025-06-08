Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227FB18CC1C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749415194; cv=none; b=juzi5caK8IfiwGEdJW4hsUmlQRnoEnm590ShSc7FMTNcW/zDTrSxGH3PGcyFWwnD1wuMU8fE+yclXnLBpSVIMlWJP8HiwPVziYbLuK+zfgD5VgSDHyMGDKiNuujY6AQzkQyZHbZgs4MHHsHbKnPCDI4kZqWtTYbyCJQDw3jcg58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749415194; c=relaxed/simple;
	bh=JyC5xoY2UzJjg1wIOT0rnJM/6SEdHGNvUYvdwo5YVfY=;
	h=To:Subject:From:Message-Id:Date; b=gTinAyivibKgvoEbAqcfJVR8iJS5T8GGGSpXKw4crakQXa+2dEEH0bcspKt0vTmU1oAnvmxn56F+FQ/jZhMaw+VLr0FSBT0nN8pGFgQ5rQRageVu1m4gzD2N4B5GFi0NK66/QPUjNf77J2jkrigQslQaYXhJSJMZMZvcv9scelE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRmFE283; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRmFE283"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6150C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749415193;
	bh=JyC5xoY2UzJjg1wIOT0rnJM/6SEdHGNvUYvdwo5YVfY=;
	h=To:Subject:From:Date:From;
	b=eRmFE283q64aFPvpPaVyGlKqjefFt+479o3b2sulnxSw387FksPmKq3fBB7rr5PN1
	 4BVrJu6FUystQcRXtcK3P3eQogmReQbfLVt89pU5d1QFrIMPQJD/MUKloLeGuEQRL4
	 qVODvK4hdryujylH3FgeH5pWHngcTRQfoqIc9Muqo3E+W/pZb9WwJo1N8MCz6S/w5Q
	 Es2Uc6Y5/NrMRDXVMOzmWDz/80ZfcCS389mukHjLVjyefQlfxEsC8kk6r8c2ThwlTL
	 xMlORrrmcu0FmjOydoNCy1Ly2tsumCgs7b8/97eL41vKIr0if/mDb7cCumwBh7Bv7t
	 OkQ0qv+1VOzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93754C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941519357.30923.4647045919182848447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c501a537907a4ff36219c1bbc67efff6744fe0306a2026468154c7d85c83dc
Date: Sun, 08 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749415193
