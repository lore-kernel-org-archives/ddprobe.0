Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A95221554
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277575; cv=none; b=CrCbJ/smGzPxrh7xkpI27o/gHmTABcm+GWCtazXyGomVaiIJkQtTcE4EICZYkll4fobzybP7KnoYtHloZosrKcYTxuLeoUBgIE9ziJrj7kvXCg8VlKbyMxKEjik5myOqJF51k6ceiESWpBd8AEBFd420nwdgnHH9Bj7xR5+hGIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277575; c=relaxed/simple;
	bh=OWgOOI5V2digPazdcWC8qpBQlfJZSkw8djYf8Mw4/NU=;
	h=To:Subject:From:Message-Id:Date; b=Q8pV92iphVrf7Me1C6Z+ohTf/0FD4mPX+qvpzfH/WK2CaoB5HEUVfP40QI+eFAzYNYdzk6dRHfvzdTOlJIEYeNPoSxfXFC6QbafiHRoe9CoQMua6xqZcaTV/KBWBY8CnbY/TiXMdlpr1UAH2KAok41rf2pLAsy2x12lK23g/D0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZGrV/sZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZGrV/sZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6E3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765277573;
	bh=OWgOOI5V2digPazdcWC8qpBQlfJZSkw8djYf8Mw4/NU=;
	h=To:Subject:From:Date:From;
	b=qZGrV/sZ8QNuwZH0y2iP8nKu0AnLgYYK2Wo99cmlrXz6CgxQvWc6l6NkWBtCJZyCl
	 2VWnhD6iAnWNHIRXTFjq94/8TczBCnAxv+Slap3K7N3sSPzPfkUwcCkuxJiid6XFih
	 cPMUE79pPV5SkcXNKyEYrMB4qRt8sWksNbmkY9YkrcOOtB+Kpfmk9w/sp+nPWy3+xo
	 lhfsmXl2Zn1xvE7aNTLPoQJT/0PEiFEkRzL8W6yFnLkRpP6Z+9a7Cd5HckK+Sm66FH
	 aRFYHiYA+VIJsqvEsJs2zv/pTOzfNQfRk67piOOEe9OM2qTv87vLG20hFrSzEwXyWA
	 DOfYpVeXXwhUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC40D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527757363.11718.14381581601835069636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9d2aaccdd07c9a6cf8696dfc3932873a5807c90e7fdf8b63f7c60cffbd87f1
Date: Tue, 09 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765277573
