Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF191D0F66
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730798754; cv=none; b=PbrvZ7mjLCbDBxkp/f++mrfb+VOjekQsaCK0wOtzvDFCaaO47UAkHYC3bFwkRClwGkP+0Vh9T2f3NYUaPx3FVP7EoUDC7D/z5wZ87e9y8J9FxiAZ/dDyffgKwKdEq183epDUZOTe04XhX0t+zVriYHY76EmHTRGn8zrPZ95VNak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730798754; c=relaxed/simple;
	bh=Y+l9FX+Bp8mA6b0UIw4BsSerLzJUNNpoBIlMDkMctlE=;
	h=To:Subject:From:Message-Id:Date; b=kdJx3e7A6aeoQoJWqc53e0F9wepOQOR4MdIHeugaGsEE2vswNoef2XbG8WCs3JOQgar4E2B4F0jOCDy/4JkLjWqaeASE3Pk3HA96MSNK3QjJLX61X/ELL2DhDHN6aCE76i1E1Darihky26VU7JLLlkCcTNMTzVqDUL9iWZHBI2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+xA0Boe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+xA0Boe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB1FC4CED0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730798753;
	bh=Y+l9FX+Bp8mA6b0UIw4BsSerLzJUNNpoBIlMDkMctlE=;
	h=To:Subject:From:Date:From;
	b=b+xA0BoeO2G2Ax7HGxZe2BDxmc8c8q1ADGz5fc6eLReygWzQr/I4UfeAQB7+D2Aet
	 TMts62hDVmTEDooMmOCh6u+trabjQmDZRWPpnVv8dS8FbMSKVYZwZRV+1kyS0puly9
	 AFWM3JZjL9aNeLmiDI6GgrURIL08e0MgUgyX3h/O+dZYTImzEgn1A5iqGwNSV1+Sbo
	 PoGLn73BDbCbcNDmmsCNz4ei0sd3XRV7MOFlZ2zJ5QGJy8DRlZRGidI3mEXN/y9tT7
	 NkSUhno/mnV3Xraz7FkvM2iqVMwA0GkIjnxoBsNYS6tY87JWXDjHViFs9vBfTXfvYT
	 F2g7EEhQWsndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF0D1266D
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173079875359.12563.3717732331020667333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcc9994f0579fde9e5abce8e9a168408463cc2b4a91d65ff9e22a5b97b83f7d
Date: Tue, 05 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730798753
