Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F19405C29
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790922634; cv=none; b=VFdL/v5J4ymFVvtz+gtgCH515xfDKESh4y34I8swhXD5nM9Rm2OBv5FqiTIkeGt5SYuorfR8donve1WLlAHLwS8X2RsfTS+yfNuiZRyRm3C782U3bSG7r3MOee2/1ez+/q3D5R/ofyMQSoR8pK9DHV16rOfZ325R1i5vwifLUz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790922634; c=relaxed/simple;
	bh=LBA097HCvdaSNaAUToGAohNjpaJRBiUREPteD0tcSa8=;
	h=To:Subject:From:Message-Id:Date; b=Ean7a3Y1biaQdSvd+b0uLC4/bM2X8ZxSqIs0wBnymrr3ObJqywhGtxjcNtb1leOFbaIfIeMt9LiCskPBfZZYkCBrphHuYBKqYOpYyEMh9OFZvWmtVsAoexVv4424Q0zTirMEz0CXwPNODCirFkNg1/dgF9B6lFWfhJm5MmFvS4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plCTU345; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plCTU345"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D250EC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790922633;
	bh=LBA097HCvdaSNaAUToGAohNjpaJRBiUREPteD0tcSa8=;
	h=To:Subject:From:Date:From;
	b=plCTU345Xs6o3WJwY4zA4vToVX51SaaJunIuCS2x4qmSooXhup42eWU2S+POHIde2
	 8lmYVI7IZaFamzcuNUJesL94yBMkG87TLG0FNhXqWPifha8cMWdDivj+Pj4/Pf7WDV
	 n9lHzEyl+jV1U6k28MSwkBRQOKqVeICa/x+3mgHooHBGr8k0ckDEHgkMMm+eLfL+20
	 lQRcrYuI47k6HJoqV97kSXvawhOptd2H1tJSiLqQoZu+mbaZ5aXe9Rb2nBF2Hf6abn
	 VBCXYsXBvrolbLfxQ/78OFPv5OgbBeBGNJty9LSgMlCYBt74+XyvDnYy3UahoXCfox
	 MAzmzhU1tSYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA06CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092263369.24093.14299311936839422583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7f90e82d3c2258a7c457d26e3392c47dedbcc54ffeaa54f82f0978919c83ff
Date: Fri, 02 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790922633
