Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EA036D4FC
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764538974; cv=none; b=JA1KZSeNjlYaGR162N82YtzntbeyAR1xh2w/6mFhkQHPiEX+IZwiLIXlwrORR11JrjxruM2KM1i0OTmZg5QvLBtWgGsMJTBDG0jVg+siZYA5qblE/0izS6n8saZriyfnt/skKZ9Y8BjsuqMpJn1bCmWDXaSs/o2VvZ5+j+o/klo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764538974; c=relaxed/simple;
	bh=33cAH7XMITHVyhrzAY1W17eoKlLcwqrRn07leFVvL40=;
	h=To:Subject:From:Message-Id:Date; b=u/uRM4mLa1XhllR5uPq6CQ+6oJkutiGYootFS+2IBiJeP2yFcPzxDRI1Czx90xMw7wub3dHC4SGQIcn30mIjL89dLxg2WMz/cUeeWTB0GrBHeAtW7IFOR63obIrXyLc+yxOoCn2ZVdGiYa6Sl31L4lx6+cpU9i1qXJFrcH4Skng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DN2TG8jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DN2TG8jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3447C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764538973;
	bh=33cAH7XMITHVyhrzAY1W17eoKlLcwqrRn07leFVvL40=;
	h=To:Subject:From:Date:From;
	b=DN2TG8jjGSYDcO9ER2gkGYtKnV2ZcPH4YQ2x9MRZtxwIVlLyg9W1Lt3m1jrT2Mf+V
	 r3I5qcza21OUO29MiasBE8AGcIoWFPFP+z1oPNO3F+fsseQqbolSTzhMxot/luI9d2
	 lAlbKe93EVMoDmgthJYBo40jrkx4PUNTahPCA2rRPoYPsuaNxjGrmPDjo8vXExlIm9
	 GLsNLh8zI0vEcdVng5fxqp2KO7rmcSvY2wl5Yt1+xhbQKFkAaIHunyDLiD6/X/MpI+
	 rokqhxuUOAw4MgJnSF+wkbnOa+9b4pNLZY7Ibe3Z8LlOisyro+DmdLOz++AEQNXjUW
	 zuTA7M5uXLOiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E7CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453897358.14078.14214057115362134870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d556198cb200cd2436e9519f0d9da32b97bb91450e6b40d974a71fda23261e8
Date: Sun, 30 Nov 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764538973
