Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A56328DB56
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769828034; cv=none; b=ESQD/LXLdSv9H0StlOZ4OIs3qBdiipTeMtcNrSLcH8sPCwGJwhgS55ostNudELxq/nPHDuEr9EbMeIplimh77AEdTHG7Lr/6DAPqXEPK1wa/ZPkCtcsDtHRJuUmFbPsuObiCcMHjcNKrnn42r9oPS05JU347n2bGBFCE8YrsbXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769828034; c=relaxed/simple;
	bh=LUdtQI+G3dXdXyJ8oHpSFBfT9KTDhzBx97Iq7imos2Q=;
	h=To:Subject:From:Message-Id:Date; b=VTsggvJB1286ux4O+79yHFoTxpI2UFbJdUDV49sE04KiTOI9MePzvqhVbejF33PhXqVvF+4lU6Fgg6yKaTxfagVWhL+IWgRSvvhT3E7YYuR/KXpkDqgSZ68vBGSD4ncjUgvMBM5VmX1h7Xf6AXnMgV2iQ5QukxcH70S96zvUtfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpNhlUSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpNhlUSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A092EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769828033;
	bh=LUdtQI+G3dXdXyJ8oHpSFBfT9KTDhzBx97Iq7imos2Q=;
	h=To:Subject:From:Date:From;
	b=kpNhlUSLHaJsncy1DT+8lWUz9J4bWHsc8k6UdjYW7u/J6+2TsS0b83waxhh2VHCiX
	 0D/1RFdGkLfbA7kvXQAhpFMfMB4PanW3f7T6JIlE5e/IPTnapO1gDcIJCwRXUCkiON
	 J1DnqYMMuzzbAcfOel2FtwnLr6s6WWIs6cDWQwkGLXRcMUfeYZbW5Qtc13WvPJ4S8o
	 dvDkvX+x/rUE2ujY3X/8llUcbOQDXsiSE3YUCLDOJ+9USEqhmoXMfCmhB/R5GtEoKz
	 9mTHyXlu4lPeM/7KBrx8ic5Fg58PBJtttyu/Zr+stTU63EC56Ruec9Ai1iEElkdp46
	 d5dLiCP+/fSgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D5D73EB1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982803357.1656.9575306533610727484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f45649f0702df68b73419b69169bb2eaa068be88998286a9b0f7a10cea5625
Date: Sat, 31 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769828033
