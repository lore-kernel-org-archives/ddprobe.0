Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D66518AED
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720948823; cv=none; b=JyrHFL1Lzpamtv/CbBwvDr6Fzimpo7ftgDROLOT+c8jG1k8Y68y3pTHe/tLczOQWSOTXdCDaH/CcUWvTZdEyBO+SCTilOGBeGwZYzd47xd0A404ggQRY00dyAicvPWxa4BrQHoFzNUNIDyoMXWCTGU025nXN6Oquf8E94nbF5RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720948823; c=relaxed/simple;
	bh=yx7LBeevyaqjl8RaZMPxyd4JG552XcXMuTpkE/43ZpI=;
	h=To:Subject:From:Message-Id:Date; b=Wz5u0v6ntDP1021OOxCVspP5VOHe8eTy5boNhnczuzBcZnKe0TI8/DhJpDKkUJ4SQ7KVa7QuFODGxD/w0Eevb/WQP//oc+oVL/gPL/lLyqx/5eVIq+wWUSBweX0X+57Z60itfDdts9I/b6mfA4ds4xtWd4d19MnE+m5hFbskNu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGIVKLy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGIVKLy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4DCC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720948822;
	bh=yx7LBeevyaqjl8RaZMPxyd4JG552XcXMuTpkE/43ZpI=;
	h=To:Subject:From:Date:From;
	b=hGIVKLy07XkDMYENwvpLCFgwylQcZyett7TDL2A9rCP6IHXTyljVmY3oumfa1trur
	 FFqJTnfORwcvnQrZWzrJtexICaXcuv+G9i6CJYEOQPWeLbbFIh8+Niw8bPkaa84GZu
	 pzWcU0ZMbUuvgw3SbjGmc0opCc/ol6wGSvNKEawABGPV8p+CTyfOvmfRxvrfsQfehT
	 qdOSR+2QYGNP1Thyr4TzrMqwsreC/eY6s4yil6tCWd9uq+Aw2n4VD+PNRmCpPdaUmc
	 PKsjlUpJ91ZmoqaT4MSvRQ98Vtw/UfmQveY6d3gq4ROhhP4wb8mDIDXsfANhtucn0n
	 qpH6i8C/L93TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82BBC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094882278.13180.7831204152481982485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a892ede5de34fbc86e761ad8f2ffcdac370d8166acab9b733aec21285c86b8af
Date: Sun, 14 Jul 2024 09:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720948822
