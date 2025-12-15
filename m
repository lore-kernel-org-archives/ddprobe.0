Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BD3281368
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765781574; cv=none; b=Wfcg5eZ5dWuIF3+s/ZJ34KtYaoHT+692zSAS/DgH1iaRPPzKtl9kla4P/VBUfoipFZ9wc3MGuRaZZGJRmwD9wHPM8QqL0vKtk3/MqsoeuBcVkkTMul7C6bqnIbTxRWK70478nmZ74MKjqmz4f1aSRBESkEf4ei/vbAqRAjauI+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765781574; c=relaxed/simple;
	bh=CN3RrmQCjikIF+SCaUYEDYSq9o6ajVcfE+LJ0wGevh0=;
	h=To:Subject:From:Message-Id:Date; b=Zahp/ZYEdk4IdvJWvKrikfr0NY4uhrnX1qO3nmbLKD76L5HANsTVFC3pqPdQFsSFQssemRPY8V0qzjFLYCmJX34btyAfFpiKQunqbsZES83MCkQO7hO4I8jLJiMA46Hm0QgLmiGcusTKaKAa5TJdeVq54mZsQm9JvoLGnufQPFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCUFuhie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCUFuhie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACC3C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765781573;
	bh=CN3RrmQCjikIF+SCaUYEDYSq9o6ajVcfE+LJ0wGevh0=;
	h=To:Subject:From:Date:From;
	b=JCUFuhieCuU12YOd8r19bcpi5ugDQZq9a2XLkMzywGfbIADMdr99g5Y3S479nGXSf
	 iwReEoL2K69IoNmv7RX9e5Z7M0BOAGKHlVv5PhZhi/5oRAiu3etxIe6Qlr6FZ+Qwl9
	 Ow8PbQsfUaAjc/FMn6R6p8qvOZtnPiHeKouJb30FL69Gtmbypmj0ekg87t2mMQq3mW
	 ew6g1v6gLtDYYD/rG+te5APgUT/cMFhQPODVmyzX0VOKBtPgaYq+gAiMe80sQ0HJtU
	 QfbiRZgBOapUSkiywdlhZOS1V/zxXHPnNyTNmWfnKfNyesWY7EWMewZIoWsrF/zP8r
	 vUZ3TuZA+40ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99008D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578157361.3573.6188017399901559596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1daa8708f9bfb52dc7325f72d8902aa502f4723afd960915784e6dea14df897
Date: Mon, 15 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765781573
