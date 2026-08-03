Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693652E7397
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785737434; cv=none; b=MaUF1x01Vya7ATC4Mj5q2+E3iEqh1j8F1hLYb0CsTxgdF+KRuA0B5CzHUy+Fu9554tIi02akZZvYGzG/NMe8cJSYZmolNfHJUQenXG8CRf0qzxgg03ZT7bsp7RnOfmfgxEzDXnE91bLHB/nAVnsbrBKVh+TJeCW1FHW28tYeJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785737434; c=relaxed/simple;
	bh=ywBOj2FHf0JKwwsfPJLnlBjjN7/ZoCws0bqQYM9VHaA=;
	h=To:Subject:From:Message-Id:Date; b=trBRIm5GRptlJHXc7yuR/6CZxx8sCMoXwN8u2bZsCXqCTnpqVTBebT4PTgDqNmW5Ct/xVf6J/hqE5FcfUaaeJANHobnC6lGwzfJnSoNUxroNuYOmtzqWm2ZmEqJ+w2PJzkd4ujftwsZJ4xXzifCkcYM/Wta1XLRQ3BtnzkbvkbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjd6XQNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjd6XQNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DA3C2BCF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785737433;
	bh=ywBOj2FHf0JKwwsfPJLnlBjjN7/ZoCws0bqQYM9VHaA=;
	h=To:Subject:From:Date:From;
	b=sjd6XQNtZfANNluDr2zqM095rzlkVBb1AOHd79cBmBRnrLkHwHr63Mlt+WtyH9wZm
	 nf8aDc/x6sHZAaPL7seE/1KolkeDny4juaqi7tnWyGKjRKTicrgaEOK790wqRO47fK
	 HoXzJYNn+EmKP27PChRJ4ZpnsUaa1aesPqLS6GyFtqpKWXlzOOtxVtQeCShOKlBBJK
	 5Clb3PrafEe/AA9i3kqxGBYaSlKpptMCAVAinj5qKUvyYk0Ev32ik8AlpwsSbEQuyv
	 rkdGcUo6KpFGm8GVfWTdqVzsgQcC1T4uGBHTVPZ/LU7cLUjK1yOsIITkNL/oxLdUo/
	 6oAS4mr5IVXtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91B6C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573743374.4864.1739822015920113396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7439d4dd6490b6188bafe7a64f505f8d2a98b9a0953ad03f2e7aa8c3095fabaa
Date: Mon, 03 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785737433
