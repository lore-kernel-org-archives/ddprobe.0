Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAB516F0C5
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722097554; cv=none; b=i+MTUq1BePxiY92dBvdj09EQFFTmuWvftDeqelGJIRzhJk+WN8xAndYkjnpk0O7TtvOWErZzPMHE/1M4a3+PDzp4BGPASXJo5x2obljewx5cGcWq6IdtGKZpBEB5ogszYC9bFg1mHA7PQvaSRkKqmwrIBkXyRUSNi8iYq5wX0bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722097554; c=relaxed/simple;
	bh=g3ZLM51hHpwHN6PmcFirHkjgS2H2wOQOI4XVAiqAKJo=;
	h=To:Subject:From:Message-Id:Date; b=LmMgFmya+lf0cYI/FC5AI5hWspALAiTSPJ6/R6CX5ZyQdTaOEmKMiNd2NXppCBWPcDeBWZkoQjLNVi/C5IEkExEht/nepSFYLJ+i4h2idHdWT2f2FDQ7tBBJmUEaQSgUMhtPKoIJ+fe+6F4pXedycICfY+JItkoHddRMVKQoon8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJXg47Du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJXg47Du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC517C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722097553;
	bh=g3ZLM51hHpwHN6PmcFirHkjgS2H2wOQOI4XVAiqAKJo=;
	h=To:Subject:From:Date:From;
	b=ZJXg47DuOVIxFMed+nc+ZNUSxM1Ch2gOsFQRijTxpdoGcIfq/0ecKDGwJE4HflIfm
	 vlC8JY7hTxoOz76QCNF67NI0bz9oC8cFgG+ztP8nY+NhU8Qx069nQr1UV7G9ORQV6f
	 E5iVanxGnTvu5miMH/i5kVOobWplYvDF0lBcYzrSi+Ke8Bi3j3Eun2zvHaCQrPneqX
	 VR/9ExLbwSA40Zm7moLcpya2gz/fHoZyb9DTOkDTl5Dkbr4vY7BvD/AIKnze/uH7nH
	 ehOvI1MdOIT7JHP9+5gogJLyKrcUSkN4zrGHcktdPuuXve8PIFKf0GhYkSevb1oLuR
	 +ys1uxM3mSrdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97696C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209755358.962.16030339238302600975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70eec1a3e2e98ba03314fd87d02318b89af12e1966a6d1969e1abc3c4154175b
Date: Sat, 27 Jul 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722097553
