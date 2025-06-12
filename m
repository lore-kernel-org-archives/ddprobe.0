Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4342923AB9F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749722994; cv=none; b=M0VPlV7vyfI2x+fYvsa2U4plHG6jIzCB3ZY1wYrS91SO4f08puTaf/+CbhK2K25WbESwHoRx3uIiBr2+zMllXQKGseh0a1yFKz8duBLXVpE799UmrLkL1n7lYI59FH7Bmg5UdM+ottBBBgsJSNbsemV9FI6vbjSVm93U6KzjGp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749722994; c=relaxed/simple;
	bh=Eb7kdNiivxZXW4ZktKWHgWvMDwavryEJwI1I/vfLOgM=;
	h=To:Subject:From:Message-Id:Date; b=Et21G1tgl0C0MBDgaNTFWuNoKRYnxk4NqQBe/l/BG64uOjoM8EIlTPmdB/A7U6/p/oIVFKoB1MGbCN82rOOheSkFBvP5iEXqWdz1+g5Azijmr0lYkRpE9lr5DWjHrcCPkf8MYrJdT50CtsZ9Y/9JsRQ3+2dQqEdAGHPbal+De40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAGcHA/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAGcHA/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F05C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749722993;
	bh=Eb7kdNiivxZXW4ZktKWHgWvMDwavryEJwI1I/vfLOgM=;
	h=To:Subject:From:Date:From;
	b=dAGcHA/GcbjPBC6FwHWxvNPVtTzwz9c0EPpLzZY8uV8XJGRKv4UtNwimrJGPq8umC
	 4LuYTC8ghTcL22o6QZurL1a7wdMTL0JCp/Gya7meMHTr0cLY7eddgcU2te/e9oRBvf
	 /amKg1Z3p9lNIfcAonSCp8UChrGyZ8VgLQ9lNFXxzIu9ymmHQr9qzBRQI1owQA29a7
	 h5MGLXbok2SvUlL3zPwSTyNcrPslU72+8a8J5KjkEnHAST+gD80W8nQuqz7ALuHSgF
	 s1uIoq1a2BNWkgWpGN5tcbFlmf9m39sKwjuYuelWGyCrcJT8Wqi0Nwq2MvZPomrud1
	 KjbecHloHYQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B6C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972299358.24894.6401213069130814886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299b10f9074b5a1e68ea345d3112f90a2b11f9c2c3042bcf01cdb4365df2ae17
Date: Thu, 12 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749722993
