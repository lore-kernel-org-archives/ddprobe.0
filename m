Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A1434CD8
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714142543; cv=none; b=OHsCaaLjXhd8tJyuu4ZTXE2/2l2TfSLxpx95+t9kQTfwYCIaMqSdt/ZLuegnPnOuzRI5wTqR5Vdo1AoYmjxDfkpj3V/CGM2TsjxPa5Z55Mf9dYy3Ld7Bwy8pwcfCiaG0S3OuULH3ZyjzAKOdgY1kNb45vuF+MO+yJ7zWArUreSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714142543; c=relaxed/simple;
	bh=LYS8cB36rfglh/+wfFhLyjmRNq8MHg+CFddDepfSyNg=;
	h=To:Subject:From:Message-Id:Date; b=JExTAQBKH69hxZLfp0T2CuNsu2pwCXRBtk+fAtka0OY1Zp6akRP+Kn+R1ipNNGlA1uiMASyB/MvGWj84/3zUMcXSLNyhKfb08CAVGiXW2JKeyfEFOsJBKboUYWjrRa5MnCikb6WI+6kxJqa3wkoiLW7RK/BAKmhjX2KJ5ntQw2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+WS+sPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+WS+sPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E12C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714142542;
	bh=LYS8cB36rfglh/+wfFhLyjmRNq8MHg+CFddDepfSyNg=;
	h=To:Subject:From:Date:From;
	b=a+WS+sPMtN6DCui6FCFhCubeTbpet/qOao3NlmecyOr4OxfbshbTfohczpGHqg4WA
	 5qpAVWURQEptxDk6K69Bw8zugAU1Qz8O37y3jrGJ2yPgEt2FMlIP6NF1RqpqVHG2/8
	 d/9coO7pjCDCPDAi3ANqVIU7ZUgDD0H7ubC6stpjfQk+Pc9VT2mtXTPFr/xf4/STOK
	 vuwx4FW3kdO5fGc/Ehq1ofPp48lB2Bxxvrutu/YYtPvLHpa4t8zwGfTwvbfp2XthJ1
	 UgQADfniMZdqwSwzazgzLr1O+zTixJyrp0+EJhpzkZQn7xunTLvKe2yRdHQeTWu0fi
	 e66QT44czjBdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B68C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414254278.17761.17583647594151562242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ef5d84364f482181ee9c5ffd22c2c47e678e154c13d0c3461bff94bfd6dac9
Date: Fri, 26 Apr 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714142542
