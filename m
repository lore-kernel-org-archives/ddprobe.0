Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2DE29D270
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783021714; cv=none; b=iSRQP0J1Jxge7nOzTqPfBQ6MO2AFt3anlXbNzIJzj0csucRPzZLmfQm6GTqPi44jcTZvc3x+2bkN7Io+jjtT/vsDGpcRwafGf3nldzt6IovYF+mWh6mi+VZSJMuI53fsgJP2Ck4rX/sngp0BjkoaqqD75axrUboCNfmjn3K//aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783021714; c=relaxed/simple;
	bh=Yo38eQAi78uYCa55HbBQ/zVLATavwiJSJGR9Mti0jeo=;
	h=To:Subject:From:Message-Id:Date; b=CvELsQ/xh1dZ+43+UvC3W7bQcuBtG6ynnXcCSpTaPrlEaF49e7YuJVFxlrBHecnO3K708AdUTobf84YA7H3rNWUJbgaC6UBzwTRnynwwHoDCkyFXHlcv4FYGd47N3Cn1BpcgpdjwiGi53ixcMwBo11rxiSREirStbktys1nZu/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1WZSCRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1WZSCRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C8FC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783021713;
	bh=Yo38eQAi78uYCa55HbBQ/zVLATavwiJSJGR9Mti0jeo=;
	h=To:Subject:From:Date:From;
	b=B1WZSCRriFfqychIguJ2RehluP2Da+tLr8/pmAVpWXBp2D98aFNTabao9JlBSVsUK
	 MqQF3E5sZ9BjCAtJGE25R29MnbPQC7e4TBzj1k9R4R3LbxZoxKwtKnikAVt/pPOIez
	 NRmZIbRYOyqXiNH6MctgCRs+l9bNgVfp3k/3kEUko/oT7odSIqVitU9DYoASwNN9Fp
	 OSxZYUQPwn9JuOistO+edmoRIwApS0BYmtCGnZMLo1IoxSo+1KCHyoT4vQcw5ZXXOH
	 cz7qdB/oP6z+aB7A66xR5zsC029u65Icg1VL9qr1hm78dIVZ5XKecU+dM1g2FOV3ho
	 TpGvZes2tF3Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC74EC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302171368.11228.16468183133818047359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b6e204a5d6a9c1f31cd85d3d301bffe86c7172559030dd3ff404af3765228a
Date: Thu, 02 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783021713
