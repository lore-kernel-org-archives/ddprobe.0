Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47358144D15
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722840954; cv=none; b=GuyR25l240UWl2J+lwZiBf3PREM6I34jJkNi5GGR5NcoC4+ZoRBHqgQUhEHN0LtJsMAkLCYAx0/lWpJQkoRmGkTC5cmizsxr9wkr+0LJ83/C5iD9y+dqJoKYbOGXxE0cqocIHbo3DbPKdRVepx0d7MwQLMOenHulbNibPfdwIvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722840954; c=relaxed/simple;
	bh=ySyTRKffPpva2ve6PlQThPnYM84XfrvWkEbXlBHktCI=;
	h=To:Subject:From:Message-Id:Date; b=SyBGEUKJTETefHJ+e8X/Y/UOeNpc32YG+AWux+vY4iI3FFEKvdXu5EQtRGzgdZPpTcj1N6ecb8lgToM89EAcmACNxDdLq6XSj0IKPbATBAz+/quQEkX1P7k5f8a/KC6r8www9C/mX95nTrLUcTypSheWPlm/RaKXJWqdUWVHDzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njCZRoqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njCZRoqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D42C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722840953;
	bh=ySyTRKffPpva2ve6PlQThPnYM84XfrvWkEbXlBHktCI=;
	h=To:Subject:From:Date:From;
	b=njCZRoqhuhMvk/ejfKJ01ImOh44b1hbsOLg9QtWx2MyoTqyEtZjSqmVXr6V4StsfZ
	 8XrU3GeF2GNnyKOMIvBZAN8zGgCPHNj6DLZWf1ymAtHARNTQp6Bdd2PKZGt7Y5Gths
	 ILH3wG5q7FsB479iSmDjaD9kKw6mgVctEW7PNl8170p7BLyoBObchfs6PY3V8h8TVc
	 uGClW2MLPFASY6uXIAmiVmp33HSpBtBNhewLm1V5m7ED9S9k5e0SGHW/bcv/hscrM7
	 AAT9x/oi80I+NJBgUerqsOfSxCiI3Pz6XnbT7EF4qA1T7b7GNcboJXYCLn4+Pux6f8
	 SHmEHDKogylkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C7FC52D6F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172284095364.10886.1178496868412143004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358ac2d6e7340e388b1be81d06f8831c9c73568810260b80dd5e8d1f5a9b6106
Date: Mon, 05 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722840953
