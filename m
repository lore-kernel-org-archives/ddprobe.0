Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3546640D582
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781038534; cv=none; b=Eo2ib7g+SwhRTumL9ZpMd7yjkHlhZjeH8vM3rxFSDdMut7KX+NJybmD69woWM21DGsBJt85ip97V72fr2v3kNrXk75SILdpD6dSPLl7oMQKH7qbXgiABaLsecc+wCUSORaSt8PsE3lmE7la09QfLaEoicH1+o+d6xl0QiqzmtFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781038534; c=relaxed/simple;
	bh=ZJ1n3VlhU5WX0EODDTVLhI3mf3pOzkyaJDRq4ClfFXY=;
	h=To:Subject:From:Message-Id:Date; b=l9PJ1sn7mkoQPFkam6sorOvyGJSM5Ua2bcehJC6UmSF6ecqXmI1pkps5zLe1jbkIxeAP3Qm7godUPcZd1TQw8eP2PEOJspvk7kDUf/YEOARHpfYGfrD1dFPT9+d+SHndP7Zyw9yDWtmexe4LBTxEE35cWqYVTbmlHlT6ojnVMRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgMGfRFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgMGfRFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9EDC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781038533;
	bh=ZJ1n3VlhU5WX0EODDTVLhI3mf3pOzkyaJDRq4ClfFXY=;
	h=To:Subject:From:Date:From;
	b=SgMGfRFS2HBjKYiSSLOhGiL4gHSPAeCUlTPPzls9v3ZEGht/I/ptcCmbar9tNQGae
	 DPC4h+IUYHhop8ZJ00zLiWokldB8n3jo7vbuTdVi1gzBUDtIevYkzzVcX6oKoLA6Kv
	 PBHuvqG/OP9p6IboE3UHtUGWW84XpUMsgmk70TkDj1w/LBvCuwBEUJb78HjApAtcyg
	 dbFtWoPexcIApkuOeMgydcCboVUh8+fyfs7WoVw3+VDg0Tz/iJZMc87OZhi9UhilfC
	 iAH69VJff1ca/szBZW/GvZNgDIJ7vU4G+W+TYao+j2CloTYzo3y5z9/UIWSvhGsB17
	 QRkE48YpTJr2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC105CD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103853375.19691.5753932514386522309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d78d097584892a4ee577e229620f13972ff210927608df77a0003b2bd36208
Date: Tue, 09 Jun 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781038533
