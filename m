Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A582032570D
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770020034; cv=none; b=Ke+Qu7kneP3rLAMGANOKeVnfzjfHZLkkoyDKz4K89OWbd76DvPimoMzh4Edsoykj6VMQJG8mpQwdHToA5yuzpr1NreTBsiQfnFVoXQRyegH9yknxYPHNvFfkqKE4q73THx1gkmwF4f61jMD1SNahh+tkONMdnKJqQON16/tObuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770020034; c=relaxed/simple;
	bh=nbsvJsQ/gSlSTXKA6XcJMXLOC06ePMsqD1swZR3Hmek=;
	h=To:Subject:From:Message-Id:Date; b=M2c0Hk5uTyZstfLH6NFQEclOtqzBrBBVGmWnxm6QXAifRwIEDcC8F8SM8zplaePR838hiq1RGr6YFPjirexBsffVvPgPvrLWiPjTIZ+TwL8zEskzXoCBLo1FlMggvDBJUZ6sIkSfUkhGe+bQn26lBEmMjA3uj4YyRWYw58MGvHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2YyiFHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2YyiFHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5154C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770020033;
	bh=nbsvJsQ/gSlSTXKA6XcJMXLOC06ePMsqD1swZR3Hmek=;
	h=To:Subject:From:Date:From;
	b=q2YyiFHKcCMDWwEB6qMr9+omEvbvO5f+85oWYHJ1kx+7fVc3L2OreteScKWrrX1su
	 P1IpOuTMT+RAqy+OyHRiRHsSbdstRzsnSCIiZ98npojLPPopqpsrynNLIPBVL1b6BH
	 qw4F/VwPv8x8yn45osogUafWxRjiMxsGs8AKvc0s7Vzf6IHbrl1bWOhJBwHNs7DVUe
	 1Gbd3mP0JWTspU+9u63nssDxLOtpi0WKH4tV1FdzR8HmImZcTRF9mk8P4Mo3THi3iG
	 /35ONbCbSz/0LUijPQfHE0EmArgjvg/xASF+4tSfMxI/XwcwHhmU6Y854XknlRnuWE
	 zN22d9gy9h27Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE75E73141
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002003364.21656.2537001421850192255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3e8a9b29f591793148cb289fd359e14d86f7632262e7a8119503770158fbfa
Date: Mon, 02 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770020033
