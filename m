Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E97D19007D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752993594; cv=none; b=pv09+fScRWyJwJ8Oh++jrT3gwsZAa5L/vgdM7ygzJoZxSTNst+YUEl3YZmWBoYJVyB8yZsgkujNRQ8Prx8M7jxm0SYCbTZYrx1dRi2DX0ta3veGF+tntrKoB+fBrEPz7n8EU/7tren61yb+pGsfWArediHDgDNNcfYypK0fKsN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752993594; c=relaxed/simple;
	bh=jnPs5OBopIDENB/Nw2h7yL0XQCPOZiUNwtlNldBSvMM=;
	h=To:Subject:From:Message-Id:Date; b=J2rD/ezarbAKEsR3RrJVHzSMyJg830tzizTZY5QMbRh/z8aZK91sza+Y3QDxB99C7K13a1GM55MdTOQjeHa31rj11Po1TZrho1pCqbqxZphEVwGru4z1lQbVyYDdjpQLdYjLcF3v4POQnF/HA7jQ/Yd6KBYdY68IyCX+T/vvz94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd4Db3bc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd4Db3bc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B74C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752993593;
	bh=jnPs5OBopIDENB/Nw2h7yL0XQCPOZiUNwtlNldBSvMM=;
	h=To:Subject:From:Date:From;
	b=Bd4Db3bcXp5uJ059YDyaWnU4Hnoay92o57skCB/D9QRF6BB6I8OhJa9nmZHMaqSes
	 cfDp6sR6aSo0unzEeorxWT1o0BWnEkeQxae1slEX/qxcDKJHubq6It387+WU96YVfa
	 RgGAGfVvb+nIYlQDUwXtxA/Yuv/xuMlc+NqKOt5sy9sDNUn19Tybsx+eMQobXZQymE
	 NH5Sh0I6Yo5mTjuLxa8hiN6UrZd7rMMYwLhJf94WgD7w14IkQ2Parn2jVZrzsOkYfM
	 VH42kagpQALAmi3937eyrgpCGicM8xhLhqeMldlQYbtGRCViGHZGjNmkt4dQmoNAcG
	 rfJehd1w8AF7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91721C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299359357.21972.12720663234210222595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346f8f676631855f1e7e3d95c8509d2791fc753d7c3a5c942636c0026d972715
Date: Sun, 20 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752993593
