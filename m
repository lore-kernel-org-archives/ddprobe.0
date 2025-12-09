Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3892D837E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765284174; cv=none; b=sGYH978lHqzbEpUcI0ccnY45f9lF9fo3at6c4j98CMDudXNrl3tUDu+Rs2d+RQ5ePc6tuKOMjZlBjHNAxeRerqPaMii3p1TgC461aY+OmBiTTZA6wb4S4A8GZtAbbOPNTU26gm9KGNb9jx6HyvfZOSHHOfGeRTUILwIJ/MUSU+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765284174; c=relaxed/simple;
	bh=EiS1ZG8rS0BbTkK1FFduoQgbjNQfrb+Pglmkb/plm9M=;
	h=To:Subject:From:Message-Id:Date; b=c88RXW1vgjw7mIs8Vkfumuvh/iDk09/xW9cIDjmw+gW7bxMMqt3BFbnlBo5pZe867ug9nKB0wg0YW6k91GGISD9I5NgZjljoupNtGgEt2C3W+x5scLDnk2XvRe/LnzQ/54u0SmNW7BBrDrP39GAOWY/14ppUSBaye/uuDtoybXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9qElkms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9qElkms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53A0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765284173;
	bh=EiS1ZG8rS0BbTkK1FFduoQgbjNQfrb+Pglmkb/plm9M=;
	h=To:Subject:From:Date:From;
	b=i9qElkmsxwC8NIvFm47PmayOrwTEbDfSGItvoRpp3pnKSIN/ioo4hBfiF7FyGf1/b
	 72iBNJ1C8N6IqMOX7AO+SNPtwbv19eZzJ5w2a1J9in/JuErKi5XBpLL4ZWvj9pLmx4
	 Wcquy4Ulsg86Ug1/+G+fa0Walnx+0Axg2fAjPX+MSLCt2lrYpg1lg2Hk+6IZbdLyhW
	 grxNBxozY77hxd67Y+BPcgHmdDr/v+wvqvlr1barsTiM+Nw3dY+ulXP0Sge+GPIhf4
	 tESQGtyiDTv394EPpr5tclNQS3mkjsxK41WkwpIhtnZWvQqsPg4aC3lRIqJsQjrF9Y
	 VSTcajK5y7AYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F2D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176528417358.20489.12103956771227563949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674176d94f499d9c97d70554afe5bb7256cf7b30b12dee9caf00452840d49aff
Date: Tue, 09 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765284173
