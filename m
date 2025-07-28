Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F352EAE5
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753684194; cv=none; b=d1ayi3ZHxwjATEifAs1whI0qoZYI8dNjetOZGkC2jQYxGLjovNxbJ4Y2aZf6Oe8rJJiSRkzRN9PM1nE8kB4GeBP7lfNZIeN/jcgopeP/pycWXUliY2d/TatVgTcMD+RTTCp1OgpcmOffOkMDrQT4U2FN3ZFHDRz8dQe3vklFthk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753684194; c=relaxed/simple;
	bh=CNPdFCrD8wuq4grVzCF8mYjfAXZ0U8EnWZNYHUkZtNA=;
	h=To:Subject:From:Message-Id:Date; b=lhuDzdGwMTOc/Gkcmr3852+uIxdIoaULORGIg256XOXqSK4XZlkKwk3poAfwdaI4ACR5oX6cjHohcKc41WXMAIqkuxTe6eWD9rkDECLYhU5J47TcgXUlsbP8s8ErjYDDiJHhUyCmzMs8Qv0KKy6uVfj81fAd9ZHgLvrA1urw1yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tY8Wv9lB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tY8Wv9lB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A369FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753684193;
	bh=CNPdFCrD8wuq4grVzCF8mYjfAXZ0U8EnWZNYHUkZtNA=;
	h=To:Subject:From:Date:From;
	b=tY8Wv9lB0UrSLJFn54rJtmPxut2u0glNJHAxMp/GyvfSU8zp7/dN1y/kmjjmRvek/
	 7Dh3L7jRXFrLVqaSdpyRWdDjHZalDrSGPFsm/V6xbRKphcCHY5psd7ADvKkhqTSUvs
	 4gqkROb+yRtsf6411sFz5Id0BDy0+0hdmkRZ1l6Ugk/FjXgxS+J/IW/pV0wtP/eene
	 PulyIJ2q6xkMb/4VrkIu0pTan/PBN7Q0plg6Rkg0laFvlnnovmJQMqtowwJCg71FuJ
	 XWuzGL+2fTu9ietlqr5OtLEqYrrDXDyK0pmAsJFZ7CX4uI1VOqixFyjTyihwnU0SME
	 HGNwmxQkwchMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90496C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368419358.16568.16835974209366992584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0651d7f542426dbe83f371611010e29d661c47d68cd25842021879cea60c1d
Date: Mon, 28 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753684193
