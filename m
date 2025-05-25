Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B06A1AA1C4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748213395; cv=none; b=hDP1BEyAJJQbLnsF57p+EslypakPDZQmfDjTGHpEGZ816tYWDSDLVi6H/W2i65FNzlvP8MzGVZZW8LgAH33jfj595RPltuTiCryJpoPwRZ0AOGY5YIsJnA6YAYvrSSpDo3ePsO6BmBPEHoF0XRxqdbfnXFTIzl1eNo7FTtWzHWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748213395; c=relaxed/simple;
	bh=0NjTfeiD2WETM3y0l/2Yj70iFJZqH3HtvD6/TwGOJos=;
	h=To:Subject:From:Message-Id:Date; b=B7oWIqbrhiP7uwv1VVnatVZLCV/Wq/spksW0TaDHoiAaNCMK92NJVWw7YwFG+uQzHSR3K2QQQP5FIVJblmaKEv7OjwDE+OYZ+QdSkFj7uA/CJvhp3h2XyHgEBIIYpopnpPuHb989OJEQYDWvTXcOd2RsaPdPeJy7lyl75iuAvxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcAC5BrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcAC5BrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEF6C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748213393;
	bh=0NjTfeiD2WETM3y0l/2Yj70iFJZqH3HtvD6/TwGOJos=;
	h=To:Subject:From:Date:From;
	b=pcAC5BrNkI1Vvg59vcycPq6cuSVYwOWQklEuHFP1H0lLeTm0H2K/OPZcK2EIa9yEV
	 fBB3i5fznKv8CrNRaX9RFmyHWG/Ma1a00oP/E1rRk+4iiehrJa4ixruv8WFH0GuzEn
	 fVytG5PoXRu2trYAHn6J+PjgpfvixCDhqjkC2Ap9LC1PDrho8clKse/d05WzZnyGM1
	 t9j5vwrvUG5XRspKn02rCo21oXJGt8KDV8QyFS9jDTASpl7nOI1E9C38Ak/8GUsCkj
	 DTNcsfK0SJf9F+axyrZPg0ntnEQsT+uvKM7AcAyngNVoECirE65I/U1k1mLJlniUGf
	 P2tIVURqhh+yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96326C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821339359.32035.12541662812134727361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e306df8e9a68a746cccb23a50ebba1baa1c1ccb71ca199d206a5faf1338976
Date: Sun, 25 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748213393
