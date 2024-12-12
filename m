Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8982F2F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734040554; cv=none; b=ZrKezGjxgMzxFMfo63SlLo80K3cSFsTi1Wnhjev1pio/pSm/plKhTIF4DA+63IEof3aJeazhUKYnKySyDm986Bqd6h7lCiKBm6Ju9Q74EtrmnBAXHJ13ZbBcxsD100APXX9XGWrEQRD+iGF1zZkqjj2cbe5mNeWqowkDap8OUKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734040554; c=relaxed/simple;
	bh=Jss48/VJQ5QUDAes0OI3eNd/FA/ItREUgsZl5jnPDtc=;
	h=To:Subject:From:Message-Id:Date; b=Hxg0dN3nHRT2jYXsRWpkeeweAUH2IBSX2ZxNUv8N1HzViebhomhfBZiYpOafZ5FL5MrSiBRI89CsvC+q2czYdMXLjjlJXqBf9Ca67CllFwhQ8/XtNUlDnjSpfbFerearw+Ju1lcGqg4SnVq2bkRCRY1++CUhuiwyLMhaeiv2sIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjTMbAak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjTMbAak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D9C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734040553;
	bh=Jss48/VJQ5QUDAes0OI3eNd/FA/ItREUgsZl5jnPDtc=;
	h=To:Subject:From:Date:From;
	b=GjTMbAakJTPnvGAZS6rb5f6CqNNnhTsz0noAF1jWmYDBIxyBchLfxq/uoX79qS9zV
	 pIjXnjQbL83+OfeOM/yukWsPV/iUCF3C90Hzey1r4hVVMKcHEZuw4lJqe8Lsw6Z5M2
	 IO1BJFmoYfwlA+DHxtjKclt0XyKJ20XdhkCxy5lIxakZCfIkzQzRaWmyodd/NY7Nl5
	 4FCNmYnmi02NDmrwsBBHQ5pqvzmnC0H1jqcJEPecvYbRbGyf4wZhogvd2BHjJycVLr
	 UZv0nc0X/1LVXsXTlpQR0HyimYK1Ij3k/ZzAt393sG7rpq7XuMk807+49HhgnGOZKM
	 9b6sdQ2HJYUAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94705E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173404055359.15519.4357319011804217999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee747e16731e008594b9f7552024b1f5c957d9ec0487a94a81c1250c4f3120a2
Date: Thu, 12 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734040553
