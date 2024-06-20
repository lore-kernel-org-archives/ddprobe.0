Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550C728E0F
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718856563; cv=none; b=eR12IWdiHhB0cjbLwV/sDPmHv3BJDxm+3laoANZFQbauOVb7Vkvijh2/q8IBZqhwa0lGp3siy1hSiqxjeFLWVlOVFXX9MkksTwnbfUIyvbWYVGaAh+6EkIJPUZ4rMWy+qCzR7gTB8CQA1LotLZb0GZjUIntTFUF47+HXnrOqmuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718856563; c=relaxed/simple;
	bh=hnlzgJ7awIxxMfuwo6Ksyjo4RO2NSZfWtUyI9bu961U=;
	h=To:Subject:From:Message-Id:Date; b=J91AmuNCu3weRVdtju62QTw7kMUFuL/3hOXSYxHQBiuD234m82R8aE9OyaVVMD+cDgqrgGFPj93MZIYKK5xmyY9A512mrrHLh3W0xqdbjOCmP99brndiQ6y0Pid/65Myy+69bqeqJGz1jgEHIViZxnv+io1eFj7QGNCg9kTY8aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZcUrPH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZcUrPH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A1BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718856562;
	bh=hnlzgJ7awIxxMfuwo6Ksyjo4RO2NSZfWtUyI9bu961U=;
	h=To:Subject:From:Date:From;
	b=fZcUrPH9RLqWsvAJdpdyya4kJ6yTX9A+CMUyiw2WOwS4Nsj0KW7kTtej5c/RpgzCG
	 xpRviEETtMtmvh4x7rTKkHruz0Z55G5xVbKmbw8zAbB+pfbwuliPEIVoRl1EekPGPH
	 KKkTvYl4e7JMV/m5YuIFobK/1rVdIegk445S4I+ELcm2VLbUYlo8Ba6Nm6/sfJ82mc
	 2WlQCa6Dv+piF43BFncWwG4m+bqg3DrobTM8avq578mFfrrsh4toS7cvJoRb5/qZOG
	 4J6dgh3T3O8I5/JcSA7UVDYTQWD9y4atIFX/xSkm855TwEDgwDW8Wrgbh4GBLG5IU6
	 xQcbFvUgz3A7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF23C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885656277.28952.16573383854599929196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb0cba077905ea5fd55c81edb690fe53e1f277b90f7b27778f23b0f2af8665d
Date: Thu, 20 Jun 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718856562
