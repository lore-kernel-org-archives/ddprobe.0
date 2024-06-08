Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764C03A8D8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717852643; cv=none; b=Pez8U8rn76/5+fHBPBuzJnb8SSvJPXjSvsznjm3ya5jJ/AToP57pPukXrQl1cRFeOQRHPU5ycpWOUIu90CCsSpvxhx+BYgPHGD8wagt2JR+7mXAwoH009oe+ghknHSto5xNzE+KF3o/TNybnbOkzMB84yFigJF7ZTvtgFsqTxuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717852643; c=relaxed/simple;
	bh=YoyzzoUoZJ+FFtb46AXyKc/jmapNdMWoDbZPh54FRpc=;
	h=To:Subject:From:Message-Id:Date; b=etIPGQyFP6sm59mWMX+fNjRnaX+vQDGX6MVJYiAkgHbBLUbUkxgYeXc7OR/1BVuV5DntKjZUCxddSt3zCII7oN1EKg5cV1UhjyT+E2f1KpyGy2dM7dixF3wVTUj0sHbqOkXLEuNa2Cy9IP74szOXzg0zYvFAy2IlRoV89Fvu7IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgH72A+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgH72A+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1EF1C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717852642;
	bh=YoyzzoUoZJ+FFtb46AXyKc/jmapNdMWoDbZPh54FRpc=;
	h=To:Subject:From:Date:From;
	b=kgH72A+xHmh/lP+CV+kB9cgH1FCEOZKLa/nGFXvxOHzvU9dKAGL20prKbtGd6Vfqj
	 w5lg5Cicafq5KBtCLWtsspEZjdPDdibsAr38UsNxVM9PNEd+nuvelnAq83ByJIzHDV
	 zd7wPIGPpedo7OoqmGekUOwhMNhEn+jQulSsz88shDeTwO8n+cUKz6zoOhReYr8OSq
	 t1ktzGjtCpNcYTgCYxd1IODiOdAMSaoJziAL9TSipc+lxHvJWOv1Vx3eXP5oXhFADW
	 35YfxGzOleCLF6lcDupfD/dbPGY3DLzTfG27V3wHOg7fd+asSJyteHG2yQNHoCI9+p
	 o5WysVp9U1AkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC40DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785264278.15511.11355697842569764256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b91e69682b1c8a4a0b7519126473ae4989674db82b44b80517a8d869cb626ae
Date: Sat, 08 Jun 2024 13:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717852642
