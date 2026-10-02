Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2572554781
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790950834; cv=none; b=ZxIBA78ro4jp8cpWOTX89EyMtcqaltH1phIPA1/VX8jPgOk1GnIGnqkESZug5jck9pu+eQuFoaFPUCtdD0BNMOAu2smaYM2UmXRT0fZVHDkFGryin4jZHqqpTgPlUFRNvtrdk4c6ULvARxZf6qn/1lK2eKX0LDePiSHekSiqdLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790950834; c=relaxed/simple;
	bh=rBqPYL9zBxFJsLvM3szk/x8A+5cIemKfbNI269ofKy8=;
	h=To:Subject:From:Message-Id:Date; b=YR0wmpIH3bVsBRDitpSVIzlW0x+8jwuynj0WyPI6rSyb907MmBGztwybJxjlSBVTEItyg9i5MJqID4LMT7QZJTUNSgpS2mA0Li/l23c6Roq4WRcvF+4ki9Yba7waDhmva7f/MunyacwadGXdSBpn5igyxwORl5937zdJnvDPNko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx+HSZzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx+HSZzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD56C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790950833;
	bh=rBqPYL9zBxFJsLvM3szk/x8A+5cIemKfbNI269ofKy8=;
	h=To:Subject:From:Date:From;
	b=Bx+HSZzRVXgECl9yOCC7cCveTKa1o9yAXnac7aRvuTqmsAY0sBwTmY61Ikznlk3sJ
	 eXC0LCbj+dwVFeVH5/LKmN492F6ZuBgagQ49uJlgq3aUonTyAKaPR7h4i4g+53eOmP
	 ffMyqL4pzuQwpEpDZtqqqvkHBDpix8yeNzdl3j51DQSwYi7CwYDiHzgIETA5kX1j3c
	 QrTp2cffl7Dm+INxe9wbQuEhnvFEFpLJQnTIENa8Qgo97C5k0giVJZ6lD7JHzQjLyH
	 TpSIRIgUReh1Bw+5OkERyEf5jchRFEgbKAmPtMjnyOBmoJHqr/PAotIItJhMuSG/LD
	 buOdoxQrmvq6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB373CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095083369.28810.2608410234073020178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317b92b6ea43039ddf4803077a8b79c6d48194a8180fb5781e09e4109bc78d66
Date: Fri, 02 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790950833
