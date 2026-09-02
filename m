Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F61F4A8A32
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788362434; cv=none; b=uCVQ2Ff6icLSx3KZAstKK+XbKXd+qKh0pjDswVrQNOKZQZ50MKk0yR2tvzMH890aKNbomWQTN4b4E3g0knmhNva7Hl82SgbCwlGBBTw17gqLiU3bWghFGreBdtn3nLGCiY4ea7lote0B3S1VxKM2Lq1m/BSAuVbSChROrGRkii8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788362434; c=relaxed/simple;
	bh=ihZ2/Cgpj9qtJcVmkoRCDOQO0v1xu/mkMzyiyRKM9WM=;
	h=To:Subject:From:Message-Id:Date; b=sJ1cBmbm9X8ORi7TMafDk6dENdZQ++b0xNekRYof0OqZfC1c0CQniuj8478rdJLp8pBJtfX6FmKezjEXTRQMMhkwPFoYd0yr8+J15HGKNQJ164dZTKcs2kgKs8iaHecHMus9MnvQTQmPliBcNpkKkNMjsuA+R6qkQhhUHZPJZG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtCtRTju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtCtRTju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56B4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788362433;
	bh=ihZ2/Cgpj9qtJcVmkoRCDOQO0v1xu/mkMzyiyRKM9WM=;
	h=To:Subject:From:Date:From;
	b=AtCtRTjucicsiCnMDa//eNXfjC9qOMkpmqU92I9HC4y64qoyxaddL7jKDyktX7qi4
	 YD1rMAOyzpSu0gLe/f8EQJ3EEryh/AoEA2vSAzi52CXr4Itm8ehG6M7nAlEvHFd3IO
	 qn6zaaWTVtk2axS/tzKcLcjNHD+gOI8cY7MK3KW6SaspFHUaTakZDs0fDoR/WAMWsP
	 Qxb2ryWV/7je6GjoufiRa60L++AvHkbVEqE4zf74XBpKD++wlwnx1IyzqB1zxV2mhW
	 bkzC1iHxpcwBRBMTrqHi782mdHdmzvcrWhmRlY39PeNad7ud47M33o7rUif7Cvm+gY
	 q1JEcHfKdQxJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FDAC624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836243368.24161.17892376735968004282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edeeae4189c1922525b3dd1d3dd2566336866875cb3cbd0d8a8be01a43577d5a
Date: Wed, 02 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788362433
