Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001FD2550D5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768803834; cv=none; b=BIe0nZ0qqVsW0ZjhwxEBBeunNtnPTJ3Q7VelIuCgYzkV5CF8oFi+X6zLOk2aGiHYjGTyBiT0kRfaaAY+I0cYalj8oGDdMXC+HdHGab4AL2R0CVAGeD8wakcfEcv8CS8lKTXi6RteaJ/b3pB5/KJdYvpuE2JtG5c3nSsEPY88Sv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768803834; c=relaxed/simple;
	bh=OVjHbP2zWmbGSrPLnMhKLYM8/VGor5+t/2x/EAMbkqc=;
	h=To:Subject:From:Message-Id:Date; b=s5KA+HB1SqoNb/vnQKBS+gHih613qOi03MGmkD54+x23PgMYKYGcnuXFZhoy7rYM3GsdgPbXWmC/ef32Q44LpClP2aQaY5GFedbvv3D3niTKae93qAq2b7VdvTsL2NvmirUEgaS378IlOkyE9mdor+fYIZO69aw9TeQIl3qLkoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crXGji1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crXGji1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4465C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768803833;
	bh=OVjHbP2zWmbGSrPLnMhKLYM8/VGor5+t/2x/EAMbkqc=;
	h=To:Subject:From:Date:From;
	b=crXGji1EbhRJsdD+E+TMO10mGvsCx4prDb48KwivVtVzhHvMnOZpPO3zMx9VGBWXH
	 O/KF6aWPOrPD25M4Ok+siVpqMfy9NHm+ksGLOggYnP7E3CBGqcyDo9oc5Yp6Z2lZVV
	 nCZS05cn9K0aXI41Nl86zYfzVPS4455C77kU7O7KIpfvj9Lzgi5ZMmZqTmyiNbi6W7
	 wgOc9trl4V+npc2MCu001MQyod5xCDcr1zecfaR5cCbz83JkX8jK75BiyAMhe5Og+v
	 hSKzRuW8t/sYvO2RUhfrRRANQrUeB0Znn9hz2qcbxbBmgfCiSSj7DtHn11AUAOIXyr
	 PNodvJN1kVbIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93461CA5FF0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880383359.9967.18310481810240693127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd62f6f4b90c1a4297f20e7a337588c851eec514f942bda54240b8cad5e9c61
Date: Mon, 19 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768803833
