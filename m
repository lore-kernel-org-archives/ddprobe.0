Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D282101
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705776497; cv=none; b=S/7G8XUAR2Xs86ZXThkENkZuBaJuC/KdkkIN1R6in5KFt8/pVKCYmQtMNRgSAPyXXmwD8klPhXhzlW7v2XJMSTyxRIFfZo+N/MuK424EpnT1KSOYq3Mdc9wwr2rp3DFqhUXqPsb8F07F0DloyVLUw8bRraRYHeuim9MiFWO3blM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705776497; c=relaxed/simple;
	bh=by/RbzlPqVCRb4Lh/zpe0b4wSlapJdx20Wepig88BkY=;
	h=To:Subject:From:Message-Id:Date; b=PioMXUgwf23x1rbDM3HA8e1hNP2dEORGXPUrnvPFiaX+/EQHnaCGPNZ5Pflv9h2FTroPWnTNVmPBH/MPjOJDrPh1J45kQnXzMyl3y3DH4kWDeSs3lahcfWVm654A3qJLeZMYCtMUQdZvMjNqpqDzcgrCYSQiDwKepAytjZku+MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIcirCNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIcirCNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD1BC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705776496;
	bh=by/RbzlPqVCRb4Lh/zpe0b4wSlapJdx20Wepig88BkY=;
	h=To:Subject:From:Date:From;
	b=DIcirCNi2iTsBMaWasSmOk4GNvee+FNa7ttriJuhAY9L+tneKXX4VrOrk/fN7pAM4
	 bTcKPivEkWs68d5QYyKmVOlPJuk/mZVVxpf/RKN0mJaUO6JEZiXH2AZmJGAtwOLzRL
	 6SwVbJzE6lY69U96FnlsuRKcZRv9sD3MF5MtTJrWsFDII9Lb80CUzCZ8mKYSsZRAkp
	 pHj3viql88aG58yUS/BuAiztWOHM4tIutnsuGkvLw7QGXeQDLAJAYWcW82W8Sy3n8Q
	 /zPEuYPO+RwdMCKFFGcx7RdFk7cX/0xjWa6Q1Nes6r+Ne9AG3CM5jRaMPZ6SH/lwuL
	 YiMzho5BmV7pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F901C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577649637.27908.5088758139133025416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197190d28e115685a0900374a19db2006c3abc96334110885c68f97e37b0a0e9
Date: Sat, 20 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705776496
