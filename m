Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817184A46
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720596983; cv=none; b=XYyZ+PG43LmpbeGzKdWEpWhn+2PyNPiHHFmf1WSqj0jS/r2l4LI/S6/8MDv7G6WxslGv4iYHBu3KpcH6uxavyDyqS/2/WQaqcfnATyAzPc1Jd5geJbhT9OoUfQcG3Cv09VGHG9PW2bMOf82vd3e3rPrDj7cN8lahYciLkx70pVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720596983; c=relaxed/simple;
	bh=JBiYlxg13oM+rWjoDcIne4m1MbhncKDlGnDCHcfYIYU=;
	h=To:Subject:From:Message-Id:Date; b=c7q9mkg0PxMU/Z5qAzPwR8UCvBNkQ1vL7MbhGHVvOMlW9honWGzxjYCDPh4cD5/SprhC5d6r1DhEgTcUDq0IHaX8aN0EL/ezTMH0cqTO5UHdFRx8HRSiTlFT+RnowIlmq2zsyU5NfE9BOYSWrF+vA23C/Y17PUkxAfQnUMd4vuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxAweyvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxAweyvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF8CC32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720596982;
	bh=JBiYlxg13oM+rWjoDcIne4m1MbhncKDlGnDCHcfYIYU=;
	h=To:Subject:From:Date:From;
	b=cxAweyvxwbiEIba0qjxZvjDt18xdcsBaomT6tDSZ/lZFM7iExwet0KxUrcoc2Mxow
	 DH243oz+Asf/wqI0VMKsWarupzpxQSlGU1J9d8ihZhA+yxha2afgVaCgtHy4x9dIIm
	 j18VFdktStG9SFHMBL0owXdwB7U9b3QW/Ogkw4/ua9xUFFd2kpl9IlSfF6IjlceNBY
	 fOEgvqtIBONXjDkiHCGms6/y4P2cJqlYI6NoxetNEKeGhnbQE5V3fbISC1ak/zulaV
	 Im1eNz/BaoBwjYzOOObCR3pdG9YTwcWuaXktiOVEDK1mOmMupPZiPALOIXvuSlxUf5
	 BIBMYBX+CcKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD72AC38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059698276.12271.3936410031794478212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab8c25d91b4608c8dbcb12cd310269fc7048dcdaf7c5b0c016c6029d8c1ae87
Date: Wed, 10 Jul 2024 07:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720596982
