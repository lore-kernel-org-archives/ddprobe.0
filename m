Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5686D133991
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715211743; cv=none; b=cs/wvX4wwSuWMsr/B6NfAA3B5P8cW+1MjD6BMcsjs1pjNJZAYkyEpm0qkIweSGrdQxr9Ekb/dkl8afCIpnA0hu/fpAgWyCf/4pnhVKKuvjKqxVC6mm2pvXfRFEWKNI1imMOIVFzL6G2wdOs4fyu+Ug8s8NKJWxPVCZiH/AUN0fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715211743; c=relaxed/simple;
	bh=XYCli5ovVddXwAcMzHwrRd7HxS7Jt1LnaoI40AkQr/w=;
	h=To:Subject:From:Message-Id:Date; b=PQZDAFFuVSvfp/WMCAj8I3GkyV4I2WAH+yPUMZGj1zzJsvmfr3g1p8R7wCEzh8ViC2gl5pHRb1LcSDNduxXyJsx4E/SV3tbjjKbHYhBFNYZ4pkK2oDQgDpqNSNh+GbFHp1p7MdhxLaBaHFCh4CdnyARA55rhNFMdAjR/QdX4KrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBjSh9LR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBjSh9LR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD28C3277B
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715211742;
	bh=XYCli5ovVddXwAcMzHwrRd7HxS7Jt1LnaoI40AkQr/w=;
	h=To:Subject:From:Date:From;
	b=vBjSh9LRybFnyrt0vnjGTmGD+s9ZWxWTOy6yJysyV8Slz0j/7ny83ddYNk6p+zJdN
	 hBU9G4NPIJN5HiG6JrWlWkxEBt6RxzvAkXfRNxSazUfSYpJ5x5zpVTHWznkY1M5G//
	 Rp6znshI2luMUJwaxcunnM99NWmu+JydC9Jn++gL/ACJb49B0v41OQdrgGuu7Z7wxi
	 0ww3tBoDP5YWze9SfxhjibWLCB+l+et6cQ3XJp58ZrJmXpp3YU3je5nwt+2CHj1TF8
	 dlux+dFXNo1UHrbL/BLXr4fABHGsQsYKCPxIxbHU7v6lPKbfikTHFNpfdpgJhrZ9JJ
	 X8s4RqNbRP3hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC9EC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521174276.16368.1452929247215761730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da6f92210ee3261e2ab08e9dc57597ee608d449abb133caf666f2815db2aa54
Date: Wed, 08 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715211742
