Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D09C17B02B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720555583; cv=none; b=N6pNYbJKgasE6odLzmIWEPYLbqOM2JPaDJIMbAKHdRC+JQ0PW+wtpKDDECGGHxRhO4o/YksnPmy0eAvM+9MAauTBAtzrXQC98wlG8eVbujrapD5WG3p9YWvpXBQ7y1Bus+Q5rm4H6+PvsE18KjgwZxRgUyhJijitVGEBOigaTso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720555583; c=relaxed/simple;
	bh=3EcUvQFaugcCm3dIogaLDLMHzGSvInMTvBC1msDRLKc=;
	h=To:Subject:From:Message-Id:Date; b=XFdm9Y7fG1B/jnezy0RnvhlhFABdGx1Gc6k+/2K4JsYypUOCEa0U0kvvcREmywkZaIhZEP9NBkd/bQVmxw55+/n1LdMCRfW28KaEo2HvS4Nn7HudcIosjilr/1vtHd5EhW7dXxs1WdooWrClfjbEiHYSNeQ5+pMWyVqumtxw9yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYpGxsWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYpGxsWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F6AC32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720555582;
	bh=3EcUvQFaugcCm3dIogaLDLMHzGSvInMTvBC1msDRLKc=;
	h=To:Subject:From:Date:From;
	b=VYpGxsWnwKY5bude8zbwU6bJdPuvGIlAy/87n3qgpr09sH6bQl5PUzCGPA65M6O8N
	 +11/4VBPtS9pcBY2Qcdk3GX92qnfBBTA/gsripsXKcR/swh61xLtQh/nmHxjcUIM+W
	 0l+D7dazADyTrWanCar8wyffnx9Mktg9i6NrN/iPPfN2XzL8dLU5hgbJ7OuMR4lx75
	 VDQ68uLoX06RpP91d9w7ie4m0SkeV9CkJj3X3WrxapQjXp3nvsIe08Vnp0KeJMTP9P
	 TLxggFet6v+g1g7Minzr3B0n14Aiz1E5t8AoarByzCTGIj7YwBXKN1t1Gj+MrUdZAt
	 lbgMCaX3ReG/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE52AC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055558277.7637.4667189457362782268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7df2fd25515894d5d39fa6e825b0a738277fae027c7a285ae5e45ed82457ee
Date: Tue, 09 Jul 2024 20:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720555582
