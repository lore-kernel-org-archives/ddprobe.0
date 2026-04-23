Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37C631197B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776961654; cv=none; b=jmFWQJLkYhf5tbVdTL5zJ6OwhC6TCqQ5nldV039hjv862wxkyyPxfwFJxkrNr5ERcVhzyX4Du5UpCo9TEgtNR7WjtjNNn+35HUCc3vO9OtsspiHyaa0/J1o/06eMX9F8u6f6zCWWtgOqF1inQQDYt8GHcP1mt6aNJBbwHNraRL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776961654; c=relaxed/simple;
	bh=6/9w3zYZPYRuFUaID0mP0zxwVdIBRl5Z26ofgevVgG8=;
	h=To:Subject:From:Message-Id:Date; b=SZxlwcBTK8SZDj39WA+b1f+55e7sna7vSXEpgJgrtT75wM8V78f6IjIkejAg8ApsF2c8ys6y6+jXE//cJempyDhB2AN9t+glkNvo8vlEpTe8+USEfd+LnyS7fTMCVLvGwLxlsCAf0uWblxbMJNb9ElBl5pDCiUM0kyGD1t5bLaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or/asuFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or/asuFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE40FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776961653;
	bh=6/9w3zYZPYRuFUaID0mP0zxwVdIBRl5Z26ofgevVgG8=;
	h=To:Subject:From:Date:From;
	b=or/asuFkhKC58lWTKFMHQAW1vzkURbVAjG02yYywks8AeDRREcshk+MVtv1ms4Y5D
	 T7Z/uXeP7UiIqmCE5yK90aHZNOfxQrEo9g8rFnMs4bAxEgJ/3FM/wPzAJu2ChjAEG2
	 ZRT+Qs4G62YILUb0mrcA059mJ33Q+2OegZgErMbkqr8UAKAzGObN1VIGtP3FRq7kz6
	 0eCkjHbigyEiuUnZCvKtSFU9Q7s+pPLyTX2naNV2sWls95z3Pz11nGaVu5HdqRCc5/
	 roPaP06a2C8YZfwVBWm0u+HKqDvbu41pILikJn2Q7Euvoifrmdvo4yO07LTJPS85rT
	 KUltaoDbAEUVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE2FFDEE27
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696165368.13044.7764057670317902053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0956739e2ae29a2171dd5c540b4f27b2d8f1473e3114c66a7086d71d257c6ef
Date: Thu, 23 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776961653
