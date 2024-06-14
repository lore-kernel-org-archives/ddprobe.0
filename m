Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3690416D9D5
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718382503; cv=none; b=Uy3VIq3E3o1DXyLX5knjErh69oT+XSxPNA1b4bW183Cz5YZPv3mrAwm9IEqm9Di83lBFhPfIQt2726hElynnHy6DVFFCCKCuZSrK5LiYTki6hSaWlanrkLP1pnZ+ydorubWWQRsNDSbhgLNDArU5vq1LUnkBn2DdTfiMBOvpq4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718382503; c=relaxed/simple;
	bh=2zhDnOUlG53h644iHS4/ZvlcKoZn1aC7ZmSVu22T+Ok=;
	h=To:Subject:From:Message-Id:Date; b=hDR/YJmksG48eD4c/u+uUmQAlGYNfm7ZK+JubRoqxDtFIiKz5+fNnCIH4Wz/U8AZam3EM9n3a67+KfriapJlauOUAjiwWsbl6TEYgRP4ud5PpvXD4eevovXnNaMj0EKcAtSSLZynOxkNSVTiOk2BBr8e8M2sm6HpVMKeqU/sLx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHbAYe7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHbAYe7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBED9C32786
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718382502;
	bh=2zhDnOUlG53h644iHS4/ZvlcKoZn1aC7ZmSVu22T+Ok=;
	h=To:Subject:From:Date:From;
	b=uHbAYe7fA88g8kkwQDfaFkp8FzWPUHjExRZ+aBZ1zIyX066GHlmquwtb/WC3i1eb7
	 uuXN00+g5n/3f47vHiVQayLhyELLcjYCDNO4SbglOhGJw0DUC/WObj7NdTfL8x50VC
	 jIGVM/G5sFMmfxGlZFUuBFFNHairZ1veVk8WL6c7g4GTQoGUS5XQc9QkEDrKlaxQf5
	 RafX3IvIgjzJeszezflQb6qcLGnXuGlX/U6d3Z+BQV/wRHoHGz2NqTVLdn2NJy/591
	 6O6VTqu5D2jPu66LhWXTgDKTyiXHLJ2WQoNL01SDxfjygN2CpI3ITTPE2Y7wY+r9e1
	 BnYzNtZ0mAzMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC711C27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838250276.22984.16588893502882512055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab343bfcee54f9bcb0bbe51d38e610669515994af806de44921357bcfa5a0ee9
Date: Fri, 14 Jun 2024 16:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718382502
