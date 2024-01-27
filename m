Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05811D2F7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706335697; cv=none; b=LLJ0CviR75jXkfY4HO8mGUMSR5z68zOLOe/T5f+B5utcnKWDuBRsauUtDUNqBs6p0UjMs9PIAvWH3ZK1qxF9eAQTch1FQQA4iA8oFwJa65tO8iJxyY4QW/N/UkOh5DYWz1KS5shiN5jJ2PuLM6oTkbyFxHHJUVUCxEdOpfbURmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706335697; c=relaxed/simple;
	bh=cJibOD5p+9vm8/ExtbKCMzCkkqc6BpbWvHN61TZyUuI=;
	h=To:Subject:From:Message-Id:Date; b=EMA7yCY4UM/FuxbQGy+h/vPPHEyP4gfistfiUFqFpaHybAKImwYlMhacaS3mxqABjZl8v79Rr6aHjtYW6wW6+FuXH2aZCDEOoMBTIJCKdnLQYJWK20O3Uut0QcgstIagDcrc1c+nyRMaIi7E56iVCdGtI/fLZb2dolUODoZ1rzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsNDensQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsNDensQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1C0C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706335696;
	bh=cJibOD5p+9vm8/ExtbKCMzCkkqc6BpbWvHN61TZyUuI=;
	h=To:Subject:From:Date:From;
	b=TsNDensQX2O5G2VyLJdrfoJb6vUu1bYmae+PikIRiNDCncdu0DNzGRPzQHMSlrA3v
	 UVLnb91/iS52gf+ZTOa5JJ/7dXktw5GNnZfxXfyxfv3D6wPop4AGfC5XaYRQLzJiar
	 K3/ZktDDFQLPrrVPRc6jRtvgEV0AR487AcXklY8UNOUEZvglwfTgkHAcgYU8hLDAwj
	 KmTOANG1/SP5TYDcRHNB/XcnrZQsN1u8E+Ko1cH43PdcECdOGph3vcbh2FHX2cmDxg
	 igVcHQB/6+iAYkC+ZJhhRle5MEH/nm550dBSoHfPe79MoOa1qroMq4Ol9wn9RtDWPY
	 HiJJkQ2+31hLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62763C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170633569637.19467.6949464651578779325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5ef97567cc96193f6477019f70da7569f538c1208e922d7ce469e2dbf24d4d
Date: Sat, 27 Jan 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706335696
