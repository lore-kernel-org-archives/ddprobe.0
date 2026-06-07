Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B26623F417
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780844074; cv=none; b=h8EpIJ1YQp/qdaOY9ICMo15lbFx6Casuxq7cQVdCLni7s/B9B3aVlWB4KecrjFldVKAUuGb1AZ6fFFeYAnrT1qdjRTESDGupOh07sj+FjPtsCIRphUDTrXOtP+wSXzRM/f6dI6N/udcv3uwUnRYmnKd3gx9T5H90yD9+1LsGcZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780844074; c=relaxed/simple;
	bh=BPhys4VZdsNqbMv0xKcsPnoc0gbI5tCmbQ+JO4MkIlo=;
	h=To:Subject:From:Message-Id:Date; b=tqkizKCM6VSVQZE77FRgF+slIly6eq4/pTHeTpe6l0ZaZ3+bvOQ+jxI2Y24aL887hAd2LU/MSivDAL/sLzpu0CLN8NVkqkvPYDvCayjHc13I/Swb+iK9D2G88uzP1WyxW7Nd3Ee29s95A5AY84tEVQAKCsMaBqTfuxQHuBLCvos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCJQU0PH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCJQU0PH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEA1C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780844073;
	bh=BPhys4VZdsNqbMv0xKcsPnoc0gbI5tCmbQ+JO4MkIlo=;
	h=To:Subject:From:Date:From;
	b=TCJQU0PHEcbzni1lnemrBtFHPMaDErWH+hUskYq4H4VTmCvwqB0rZpdarpsM8vnQt
	 rpRWgIwgYyqM2Lcdh2OlixguOPfTnnUu79Xy0RtoAkIyQBX17ibJHLUXTPpW6lxBxi
	 Tn1HsbwmYHl7kzP8EJi61NVFtxABMpwIgPKFlRCzpgQQuSfZjLrX09xtwp3FS8cOsr
	 yBqrOwHENwGN5OcOPUSgBOjBHTcV1KbjXMf0dT/KUFJMyy4LqpiFUKYBtFoqb2nWM7
	 uq2QQ8+wP41EusoF0ziXZ9JAvgWs404q+ZWf5NbWkogwp/c72bFD8uoweACNCySwYh
	 G0YgxK7GTr13g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE760CD8C8E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084407369.3125.12535599470847758867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16e802e52913ab2d8b4e6b988fe361c202e92ee9b6a4fcdaddae2906a750ae2
Date: Sun, 07 Jun 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780844073
