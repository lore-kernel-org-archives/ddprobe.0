Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3268541A8F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759377594; cv=none; b=guAQjauexcQ+pxS1Qp/B9HxdJXuTuNZflKPwkZXsQStabLvGPU8NG21SGZiZRfHDPwhqevuLTkTCcoBuXttb/ThTwKIdzsaGsWh9G5wPy+2DoITAeF4yFJUVhsh/tTigbfOOGvne9f+UsxBwIYmAHgCk2k7e6qEDHhtuvdZaMCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759377594; c=relaxed/simple;
	bh=v1zWQFuvAzasJ/4HZURE4Tgm5UN2GnAqUHMQAGcuRF8=;
	h=To:Subject:From:Message-Id:Date; b=DQr4seMCucLP22jtXWyOp/T7EThvjtmRgePDeAAZzyzNbjchNrXbVnmN0qd5rQtCz9Ug9oGHL+d6/lwznFLxUPLGNTKnVzTwsdG4UlmuUHn1XOUkDvSaft7l5dbL6wgKwpUimxTdonUK9SxtugVTzoWSoKSg1Vm969SeSWorisI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6Gq0Y7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6Gq0Y7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D07C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759377593;
	bh=v1zWQFuvAzasJ/4HZURE4Tgm5UN2GnAqUHMQAGcuRF8=;
	h=To:Subject:From:Date:From;
	b=R6Gq0Y7VQNB+IgfquKrOUMRGRO3PkYGeUyr2byG2xu8IH+GWFrbgLpMCqThui7J9s
	 oZrQrYK9gb/DDc8XoyJCVYLC8FzvLRepU77A1KiJV8MYOF12dCU84SzCRUMNugSwPs
	 qqm3KtRlotT2/F5k1l4dfNzhFAh0xFzuVTEjDjgT/pfTKiWyA7vNNxeToaGXFqbI2u
	 KAdD8MRA/ldUdR61P/49B2yxfUDZwwgP4tbj4z0yc6NQW03xtougIU9A6QeUt6Koux
	 2UqJN1HMp1yHZ6lCJ0l4GOznk1cENBAaiyHbl7pzpP+fDjJ1DD3amBsM51oY1srUa/
	 g2WRtBMmT7kZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96924CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937759358.16134.16303760347757935790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295f4c67ec9cf1c8b258285757faa8a832bef1b4f5ae4af9fa99c3939a582b46
Date: Thu, 02 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759377593
