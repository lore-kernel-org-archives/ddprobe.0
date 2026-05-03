Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2505027A907
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777792654; cv=none; b=Gb+fFGuBtC6lT6VZuEZZ72wQT+v6DrRcyppBurSgBteRQVche+Rs3Fy5ikjsdxZ5GMJ4o4OcI9y94fsjog5//7QwdGWL3WakKnp52SKIqMOTLiSOt1JlbhaCEfhKg41QEEHsVGrqvTNGMnINH0aODxIIGHA7djzh2n0hz098ODI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777792654; c=relaxed/simple;
	bh=2Ablde1nEAaeqJk/1abAfaclGd9ndfg7dXWct3bOk6g=;
	h=To:Subject:From:Message-Id:Date; b=eWNmWjWQwZivqxLY48BKo/CQewQVwgBPCBjfaacNYmSMfQ966Tmg6DH23ZDhz6yg+SJjJguDKxl5GETFiiiH1Fjt9K8dUPPHdvEFaBhoiYAjoMTBgju2nAjJNIxKTgJKDqhDPSB4ipwjlihPxdzb8UmD9tKC3rDaeN8PYPYO5Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G19mjxfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G19mjxfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A05C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777792653;
	bh=2Ablde1nEAaeqJk/1abAfaclGd9ndfg7dXWct3bOk6g=;
	h=To:Subject:From:Date:From;
	b=G19mjxfJuiHhjp/1DiTUpdWz3+Uf/GQtwakNdJBCcTKseCa9ub6XBX4kLt+nkug/A
	 H5SecvxpcNiB6LLit/f83I/kgY2igCrZ0xLX81h9o6sgmuoy/qDFHu4jovzi2DPEvM
	 LNSZckilUw7apfmaJ+fic/dQZWikAv20xyVmgRHlj5s/gtPZmpUgiNUBMv72jGdL78
	 cax5i7hDt/genLw3w4x9SXTAf2cNLe76jcaNFlAmInc/JXKEbSrlCgSdAG/u09vAgZ
	 oi/3YCUO6t6izuDbuf8sC5yrUFpARYt4mf5oocgf8r8k71QyfSpFnQ/7cCaJSp5Xbe
	 G+TDoy8Yg1fqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9348FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779265368.5556.11970668481413477335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f94b53da6a4a7c39218503fbb8ad4ec80ead5b41d38c9531984ea9c41527aa7
Date: Sun, 03 May 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777792653
