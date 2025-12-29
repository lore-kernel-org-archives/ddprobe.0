Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3807244675
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767043434; cv=none; b=tgV6sbsk7GtD+jw16Avl8Xd4PMrFoqLwQjaOCVPw++3axkNunBal8Xxv9d0x0O5Zv1zjitfPW9RJ0IbaOrFj4u+jRqcDOEjh3GvzYBppGpbggeKsYhRH81Ba4ZxLPAdZSpKOxUxRq5CJU6em8NDecRxUD0kD2VuwopQRREs+9tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767043434; c=relaxed/simple;
	bh=CbxdZ9xPlqC8dDB5UlOUqBREdm3qRsLJwbSmuHy7Z7s=;
	h=To:Subject:From:Message-Id:Date; b=mv1ooN5K/dfVYz7bbypIu1Ex1UZcP+3APG9I22kkbbDy+tNvH670cXsB86ZfhkRXkWwEkrTxfIiN5bGiZfZjMXAMMpHN9Hq342GA0YLrAgDRIYH6dAiHS2eJTTWE5D6Z+y9DTJK2ZMlf6GbRQuOF0PdNgJcx1s9M6Ava6iDaNRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USYdypQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USYdypQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2E2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767043433;
	bh=CbxdZ9xPlqC8dDB5UlOUqBREdm3qRsLJwbSmuHy7Z7s=;
	h=To:Subject:From:Date:From;
	b=USYdypQR70vDr0gdLfjsCH5N8BcSpYNw0ZTIk2i9qVgYxhgjfA6rPVnatOY720sjd
	 Ne8pMpluByvL4WSW/PBUm1pUWrWpVTLac8jEViWBD/A438uTwvGiYD/Q/jhf/SrfUV
	 RDMaA4xqQ1YP8w1yGfs20SmKiMUWnB20n/DxP6zGWDghTzbvgdLqRuzhE39gtIJeIU
	 VVi/fIsvj6D1CZ+cJnrT5wHhy8zFktLGxarAbfpDzYTku7pdtWa0KAnAiGU3iof0Qe
	 YlD1EvPNwnZNfaA4jXcZxaoBECp/fgsdBz4APk01UjGsJxSfLm2yVCO0qDo49CDKMd
	 xEbYzsOh8n32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045AE92FE0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704343358.9586.15333918545962813898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad40fc77ad56c96be71d295a48846bb1f29a5b4ac9e5105c6aa8b9e671aab3f
Date: Mon, 29 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767043433
