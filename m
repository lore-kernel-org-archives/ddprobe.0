Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FC9245005
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784468914; cv=none; b=s0ibVbZayIBxEenVDSvz2T6f89DSha5nQEvLExNTJNNWawW1jW8pt9QFJyX8+CYz6Sn3EuDfGHAKOQs9Nber1HJpTFkER2FlMdWjvwfSpZ/Kg/LBwPZj0ViEPaofbQRxaDcRF4CwcvoITDnMEF2adRnzekGlcF2dtunrxsQAF8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784468914; c=relaxed/simple;
	bh=yPLkddhDB8UwXDU1vMF4kPfEbIdl+4S1oCY+E94E32A=;
	h=To:Subject:From:Message-Id:Date; b=uAO8puUjssaHSrtkKP8Yu+FK4V+8yixtKTfqFrcCZFzI5yIvMZeINt6Zxv/Q+qmpCRDSqkRCDjY4Rzo+SCFfA7GmTA8iuGeKaQFeCQT0yX7scwtTv0r5MEpoCNDah+M7m7s/BkvFXv07d4Uf17jgqhfeezezVQdTit3s5oNF3rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJOqe1m1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJOqe1m1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C929DC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784468913;
	bh=yPLkddhDB8UwXDU1vMF4kPfEbIdl+4S1oCY+E94E32A=;
	h=To:Subject:From:Date:From;
	b=YJOqe1m1/aPWMV3hwcbwGWWzBcJYE/zB/yVHTNnpPmEDhAB0TFXpzNRf08WtV3MYo
	 MAaoCEzDlWzxOn138y/dIPkLmUVGYVGLK+FJG+6NweKriv3+AMOCr51TUM3n2UXkWV
	 azHKKJQktgB2THvZJ6s4Clrex5ZPF4hQiO8fRbVzyP+iVV5YY1EyoMW9wqjLkVIjht
	 jiu/Ni35eUfhUo9FXNscSohg+cX9RWb7b2xULAsqKmdQU4gZk8JY8nbS0lYQQQCdJh
	 pyJeOradvpFUIDMtoBpUV9XkbbVkf2bN7a7FK4WE1P4SnXbpeJCb0nLUlQEU93ANAs
	 0ovOTOcSCfBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81D0C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446891368.16401.15089399269163053715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2733a07008a5d7165966f2be428c5a7cda42626b4c2fd95e4486b5cac4620f52
Date: Sun, 19 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784468913
