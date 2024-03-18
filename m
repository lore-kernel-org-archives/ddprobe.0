Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1344F1F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710773296; cv=none; b=Ydf6oHw/YxApMDKyQIDm/ivcq6K4/w04SEIWU4HMCCaLknOaWNd9T9eye/p2EzF+X2TkZyjAF+koDdFL3r7yK8s3FY+863vtBbn5Ues727sagTBerQAUR5okXMm8CYmVNdpD59Xqe+bTDN1MJzVGo5XpFcTqdRduzOWAJ+6nXog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710773296; c=relaxed/simple;
	bh=N8YwV58xPztu3F2z7IL9WJaCoi+DuRD1rlRmPCv/v4k=;
	h=To:Subject:From:Message-Id:Date; b=iJL1wZfCLVKsODfu5M5FVQH4xrlhFMrG57//p3gdxEVZa+CWXMXULgHAKxGOZPNVuZzca4S/fU0I2Od7NN/zLGa1fUL2zNiIWszxaDbqphdoyg/jZDuQ8INfQ9sZw6XoMk98Zf525m4qubc6dbvIO2MipCSiDUsKtVjLWTf08UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvA4UUy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvA4UUy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCB6C433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710773296;
	bh=N8YwV58xPztu3F2z7IL9WJaCoi+DuRD1rlRmPCv/v4k=;
	h=To:Subject:From:Date:From;
	b=tvA4UUy1F+F5Eouaxlq6r0NmRLLhQPztZEBuQMYUTU/h3dFKX/YfyW6SYRMsHibiY
	 PvCzOphCE8c4ait8aUG8BFAa2imUt8I33EfdfGw9aYMQaYK/J0NzfAo+Oe9jXhBdVo
	 snE+nVf1s1rsBRUGwHUbQ7tW7mxOHx0n/+zIzMJ3P/nnOFc5g4PYLFqwestBdvdA6W
	 RnbN2GP7R3TOcDVzobDuQfWLZWQiw4PHP3+PBXaJnqkNcedP4zfXMGcwJs5Pcb/vUX
	 I/txjGGWegl+8R4QvYmJCwbF49JSdMXb663pGzrzTcycX8RHNuJLMa8AYFzTfkt73h
	 8oNrimMs9hL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61600C54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171077329639.31309.9485856119057908449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d523560245ecda70c4d15f686cde2c25c9bb86f852cd06c4fc91e14127a1e4f4
Date: Mon, 18 Mar 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710773296
