Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4194C30594F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790564434; cv=none; b=lOjhMlUZabQwdfyuzFdCaj3n/7CbGOWyMV/aGM7SgSq+YPorJ5m4z4Kn9JlB7fqhaPf0EWtuTeYh1wUavYzb6le2Dstsdkhlg2bYlWAIMqAlX9uytWvOJrF7wL+3oSg37uJwnN88FlCSFEJKQyW5hTE4dbkR7zZrD+fNNphUWXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790564434; c=relaxed/simple;
	bh=8w3c3EXFu/upKJtPr3BsZzBl6FCsYSGodYYRxygP9HQ=;
	h=To:Subject:From:Message-Id:Date; b=OQ6QlaWPXPCiEStCtXHFm2iU/vEKBMOmwt3Eqt0ogeFWtkVSPWz6rt5fytgxVew/2D/wRqccQR7+k0z0VMIylmdtU3DUHMj8wIwQy43jy+leku4cDX/uRdcyJIxdZHNI1fyPIvN9ULQtcKyIFkmpGWSE7U4UHLWYiVP/PCir+W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iamiXGYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iamiXGYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DF4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790564433;
	bh=8w3c3EXFu/upKJtPr3BsZzBl6FCsYSGodYYRxygP9HQ=;
	h=To:Subject:From:Date:From;
	b=iamiXGYysyZt2A2Mf2C1wemUDz/4YjeO4uHxTvJ71+67L1VS0vVGbVner7idRHxy3
	 urU2ejo+COJirxSeL5vElUlj16+vtVesFEHk1ofBdfo8sQHId8lMvPyuTojAs9ofyV
	 XkQPnbyl/7+1mq9O5j89w2HXqdpUfodQNMyoTS62MhAe9bfQvsjYso3Z+gYWU7s14y
	 eWp8Jrs7zzginhuY4bTQRPz4ELRvT/GsFnuVLFEokQQOda8D/UbY38nle3WQanI3QH
	 hPu2gENY0peZzL0RifF9JBtqoAhrU/mROzB6US5E6E23kSwSK/tByZUaUq+LidTvI0
	 N0Skd9C3EePbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1638CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056443371.6318.2399613532149281534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc487ed24202a896482454faf631ffbbb5310df570a03987164d9e3fe03c759
Date: Mon, 28 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790564433
