Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFB0211A14
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761671994; cv=none; b=QEUEDZGr+j8yJ7+iq8uAsOKpx85WLDA2KZDfj6eMunV0oOsCEr+Wbixqr2/MB/BZWA3eYTmwvxrNw/xADCvSZsTrQHLtw5irsa8bg7Dtoi7O5c+fHfVu1EGG5clp38SIvow3YazIPY+OvNG/FysbJ1J1/2agxlBRMOAyiQume+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761671994; c=relaxed/simple;
	bh=TlkApFZiGJDuABF8Cs4BgZHH823ViG+7dCO/PyZLJ+c=;
	h=To:Subject:From:Message-Id:Date; b=Z3odZ+RW6XAcUEuRSNy3PXcddpYp5HsXzaSDp062rNGaBiIormJTr8lc0Leq8KuerFm+GeujMhEaylNJrJyKRLi55Lq+SxP+syIxHJ9nWDTK5Lym4MJr1IiKUdMMT6n2kyYS33xd4Pd1sw02FgGfZtysnUfd4YOrwkmf9jk8ayQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZUgheTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZUgheTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFD4C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761671993;
	bh=TlkApFZiGJDuABF8Cs4BgZHH823ViG+7dCO/PyZLJ+c=;
	h=To:Subject:From:Date:From;
	b=VZUgheTi1pTIKkRt82FtHVfM6szqFX0asCSbQCCKxE00Ag/bjNtjX2gORxZZYQBqw
	 9Q1XqbBOpj/MnHZTj9NwbaAMEa2lgQXUEdwgVxGHIVN4Xr2998K31dafHGkT/3ht9O
	 5FoB6orW5wMGkvoTTWSHaZAL1KNv7Fkh1sF3u0WR2A32uNYTgae+MF6sNf2y1PTEpu
	 PP+eQujybKaw2wUo2i9sVDIxMxjCoI2K1A2Xo7uSlQzrM5vdHe1/scQg0X3mskTBPl
	 ziU1yuqO3cdHj1RS9Z6Z8ia47AEEYaA8Zhppfsv9VVuPH2eIDjipj5c+ltwpqG7f0k
	 Psi/PvD0JhIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF3CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167199357.17576.8829793189305205226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40f05c0280dc07fec098a331b5d633f85ebb49565e7bfa4592eba03cc2fff4d
Date: Tue, 28 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761671993
