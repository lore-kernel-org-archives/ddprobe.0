Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188AB21D58B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758084594; cv=none; b=MKhiRDi6pwPO9C4LIIdAjFLRkOoMkZYIavA2vv7at1h9Ws/GfSw27b8AGqEWppXtK5jm+mPizmzHH/MobEcxFrxAPtdrebjzBjwIFbqZB2ULSaXe2FJ6oFXVgILSgR10qnhtm9KbbM6jmwRc+CE1Yr3l53rkfPT45ONniIqxh98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758084594; c=relaxed/simple;
	bh=IXJecKfNJU1W8W2YW+FdF/Mita82prpcY7orfoor9JE=;
	h=To:Subject:From:Message-Id:Date; b=QzUELRpt2FYExfnTONioufYPaM8X99znOuC54k5ehzwc/T4mb+R7xS8ODa6rke0zqfIFAwBHPaFQW/8Pu1ohIqVTBLw9JtvzdxSe23YWh2kMK6bjkWt/78ytSrPZMePmlSHK8c3SH20I2p8t+a0JmX45OIMG5v5Bf5Ap4gdRdjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmjn36LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmjn36LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C24C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758084593;
	bh=IXJecKfNJU1W8W2YW+FdF/Mita82prpcY7orfoor9JE=;
	h=To:Subject:From:Date:From;
	b=mmjn36LGdNGYTqFw9OcAL9abIsQr9Vl/oMZr+Pnkr2yBiSyRv7t3jwL4GPJ8n3zkW
	 e7YTqEnKypkZ58HdWSyMjhzYkib4sQ/2RLTw8kd8goYSnjmEV6GuMrKRXaGlWVjM0m
	 QcbB0AADalM+ra+QTBw6tuogB/MAd/H8eSy15xKYm2qjhFSK8S49oJG+NoX/AZyETX
	 bYoSEOulqE2DIME8cRnrsilXkD61+Ulk7WI5L4/qYivmJowvqbvJXSy9IllY97skzW
	 EQt+fMQUVKmYp3jd63aTCv8/1EcgKw1W0DPKm77pIWn9cSa+LexlYJiE1Hk+6e/tgZ
	 ELjni0DjlOenQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117CCAC59F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808459358.2882.5325245945542741928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c112bbe10136182a4e35a07d4301638bce53570cc97be476708ac51779cd182
Date: Wed, 17 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758084593
