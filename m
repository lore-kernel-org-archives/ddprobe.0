Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC7D63B9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780446874; cv=none; b=hCNSe3gznhjOdXyeUpHm12YNDfoHSh3fC+hz8w8xsCKpno3Ei+2gRHnQxGd9OrsR9gNd7hHF2OMyDuX7d7phRG9vLiDFIhoLW4wpbrzNv9ro71Qayx14xzecLF8yQCpUJkeLqGHOsCJiEnlgQoRseMUB4TIr01rw7IVHro/tC6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780446874; c=relaxed/simple;
	bh=zDaMRcA87fNqzbXKkaaOrYG6wx0y4cz0/SMAsdn1j44=;
	h=To:Subject:From:Message-Id:Date; b=ru0f97AKOD4bTno8lEpXgF6P215nUOapB1SesLvahJg6Dd7YnXV/dh7n4zEj0Xr3nFDiNrpmJ15Z9D9TxWnB1FXxOQM9udAllPpTDAlVoIgyyHEb3OZ1ikkSYIncl+eYVTrUp8zoWzTqPvHzKeYe1/euWVQqfyglTzi1gSY4Gqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4FgRt09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4FgRt09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA35C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780446873;
	bh=zDaMRcA87fNqzbXKkaaOrYG6wx0y4cz0/SMAsdn1j44=;
	h=To:Subject:From:Date:From;
	b=J4FgRt099pZ66FGHSCu8n4l9Bj0h5dEcxkjfkzUdgahBbUesU7ZcgU3A4PAggyEJ6
	 0YY62JWsRSE0c+0/jWjAulINHoFy2tNcB5siNY/uYDygwGq/AATX2GA25+n2mrpQ6/
	 ROZhbpb7DWHN3jNHWx4TgTOuO3dpC+VbylZ88fCn0B73/M3tC5zEThyfVxOWVI6TRt
	 MmYyKL8ibrBpdiKnVEftoOCNiR+C84eiGkRklb6mkkr7QTK7qQJOO9iCTteF3HK8zv
	 nabKkzHI6Zc2WLe0qJRWI6rffO+OXxqp3GgdrMPlm2iTmMhykqVnZsOvn9yujFDCh9
	 TblAjvn1RzS+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE151CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044687368.27709.14601701212834383175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a1e86072074d0b3fc7353ec9253787977b3fbb135a5ab227ccf1b9f4ec1058
Date: Wed, 03 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780446873
