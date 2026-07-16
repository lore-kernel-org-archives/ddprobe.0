Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF42329E5A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784193514; cv=none; b=gu66bvXd5mFahBEuyDS2IiXfeEHV/Bm+p5TDS2adsXbEco3UVVrnHCnep+7eqdZmy26KEvr5F5G75e4ZekftW+efG35LT9JrPCZQIVXiE+wDoneDj5pwBtdhayLv8A0xnLq2oNuNWb9bDg1cHMsAmG9rTay7Sgf9hzkIbZC1SqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784193514; c=relaxed/simple;
	bh=u8inRMSvGkCmzpAoDqB9M8yxzr6BrgSoolcFcT5+iOg=;
	h=To:Subject:From:Message-Id:Date; b=D7dDbeqUEoZ7Tn2HbPf6BCFnHo3X7dLrgIYmsaQiZujsA83ogDUjEwwjwEX/FiS+hsuMEuoZ+J3Y7+3f+Nq4V5HH1pMYb9Q6pEACJzcDvYmpZSSykUtRwFx3SVhFrZDYwStly0bDVYD53xFPq+FNNPEAp1X0Bx9gbKlGZWbwM2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH87Yeaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH87Yeaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB156C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784193513;
	bh=u8inRMSvGkCmzpAoDqB9M8yxzr6BrgSoolcFcT5+iOg=;
	h=To:Subject:From:Date:From;
	b=oH87YeazoCVqmfjTQ7cq9bV1IsuPoJUqC9C/4DtirFolJbC02vLv9s330q4Lm/tW9
	 FzmtEvRj9eBbIAVdFO/AhmMQZeizpqbh8Gx8wYDP8hNuBu4pDUkHYGUGLh2gsZTjVb
	 MlDNgxQ4xIf+3vs2Su9itYMjumKP4FE7WVZV4OIS2dFRS3OzwBS4n9P0qCt8lTHd98
	 ArU27zVfXn9X1cjMZAcRKb8pPV3glt9AEcMozv/Wj+rstOCm2JAgkNjeAomzMYuGBk
	 dvSfmBlhGpJ1kC3kmH0eAtkpPUGiaXqUL5r2FxPBPydAUiNkpPtDpN32L72HpQ9pCw
	 g7D7a0VxhMHkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B9C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419351368.18451.7179812296480716765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb542740be62b16405cfc02bcf33df075b3b7c9755cbe3a3f983412e50b49a2
Date: Thu, 16 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784193513
