Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F1215491
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720116923; cv=none; b=NX0KIM+hQmRr5gSAfqtnSqTQ5qabYJOtv4Zik6fNXoxppX4oAAbSslMlms8lEFVqTBimMDjyAl2o6IPWrTkuRkb1iMvGn5eUuMt8cITXqtcnVt070ePXn00tF0gEc9aZUStoNMHs7Jw+25KeveSJNkLpNLuXmSx7+9dt/F0tsyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720116923; c=relaxed/simple;
	bh=LbhVJh56roFsSj2vLdTTcfH9Vrj3IBqyp4nUVaNVitI=;
	h=To:Subject:From:Message-Id:Date; b=pDXqbWWvKEs7qUI5ADmjsDo8/BNghNWLrcogX0DBkLVbnElmgEGAGgz/pKtms2QMozkqrquLJY4V0AlSzq4xY0JdJLNhDAUzKWtGkTNcgNdyC+w78bGhjBeEu6dlBNrTslMlIN2SYxEUXX92dZtuFQYKgkRaBn3UT/d60b8q2VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kd6ZoZeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kd6ZoZeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B8BC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720116922;
	bh=LbhVJh56roFsSj2vLdTTcfH9Vrj3IBqyp4nUVaNVitI=;
	h=To:Subject:From:Date:From;
	b=Kd6ZoZeKdbKyeQq1i92yyqdendtABrHV8qoLvhvNYg8wy7H/pRAsOATkUzVtXd8UV
	 zopox333o7qaxyjfIQfvlz5vFMBAMmSOJodCP40hHZ7O7QOrn53aE2MgNB1MRe47wV
	 yCxdPCN4q69kDIYMr1EzX/o51jdBlozO/vb6war/hfgC+zPf/NDMlBRUK/kTDo7MkK
	 tbw9i0R1i6VG0HPIhS6GLxdJA4n3xXo5R7xhkyULjyf0e5C2Dpnqicx1/OCbt6YDJL
	 jne5BIw0CgTdCnU2We7fyMmj3eI/IdDnSQcECm544FS4DiCNffdpfjolTsrtHKpH/R
	 X8W05zdiJvMdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3A6C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172011692277.26361.11534202754130056237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c278e346b0e40d870844a66e0f393768e4cbc57d00e489e83b6a058ad3a49bde
Date: Thu, 04 Jul 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720116922
