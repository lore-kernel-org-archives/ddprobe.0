Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC791DA60D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756040994; cv=none; b=cLtW4TchBsSX1DG1vP/6NBN+jbaReHEtY9FV1YpZfA6ozFOU/ud9AD14D9LeD3zrnmgk/SCaB2GtMb+fUMsHIWa4pYRDhqrxWkF9f5RwZNGqxLVBDGk2vXVZ2CUOkyoZ7ldaZI66PqwsJPy/HCwDg9eH9B0cMsdyS+SmSyIN5/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756040994; c=relaxed/simple;
	bh=/ovcbk+z371ryXLZX3vh9iBQxFciSUmUvWqirE7cwQE=;
	h=To:Subject:From:Message-Id:Date; b=NcMiCalUDDkeoqcBEzHbPWu11/UYDbT1t1m7uNKhTBfJldseyLlBKlidP2J4aG7MtnJAjtmok0xKwhrvTJTT4eybgU5kY50zQvI4L/q9SkvU/hfAI4Ofe+1TKk1bFc7V1UceUegeJyjJBD8ujXahF0zPfSmjOdvrwrIQEFmfygg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7jesfFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7jesfFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A65C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756040993;
	bh=/ovcbk+z371ryXLZX3vh9iBQxFciSUmUvWqirE7cwQE=;
	h=To:Subject:From:Date:From;
	b=J7jesfFV2ZomIe7NLnW6fCDVfrEU1FsRt4aZkVuvP07Tl+PGiL0EVGNDd5u0cnYWU
	 xthiJuyb864feA3S4PUvPfGLbVZ6Ojz4PlW/yy40BE7a3JzbFaTTFWZZ0mSTWliGDY
	 7WaI9gUvjnGwyslKmkVm5D/tiD+C9uQyIfwy9CKwBXFdib36BwdOvKx32ZpfLZ/hes
	 jZs3AQPG5c8B5gxPQqStbNw6p9Wp0vcG2sXvRCUug2zqI+40TEm2g1y1ajK3c44eWI
	 /L9L1KfFVF51Vybl7sULz09XQ3CZnG0hWI68Qmevlh3UEs9cP1zpA3gTdBlMDBp54v
	 Ssj/MWj9DS+sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6ACA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604099357.1572.3646190360136051557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dfcdfae7c7a9ba0e26c86dc208884ab0e0b4e9650e09ed4a7e66c821efc8b7d
Date: Sun, 24 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756040993
