Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7E4803
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715733143; cv=none; b=afVg5vexOJv2IXp4lMgo/BrYJuzKDTZgoA8jt9tIX9E7E9guz9pb0C5PTC8JsSVW9J9SNrX6KMblfO2Qfe+QrLnGEGgvGeGplBRXp9NXll64Epo0DQtdEQGLEFXLbkPHpqsE2ZOzhCMMWZ42p9Rk5hx9Au/xhOc9D+Bls02/eUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715733143; c=relaxed/simple;
	bh=fDuzCC32mqbB/gCma7fEtziIJNuuUsdWpZDYl35dOww=;
	h=To:Subject:From:Message-Id:Date; b=DsJC6X7fMGMSsz0RCzUh7g9hNG1kFtWcmqUIWrybsD3GEn580KlIFGe0FHalBmPKfM4NE5iZPcmjS8yFMhlMBymeGpntbAfrL6eeXJEHn+XPCrzpeZ28pxgOVuaoBfhKf4CxHjL5FAeWtbGdnCssUTr3uCBc/Ew2rUw5PsM1sws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4KnlVeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4KnlVeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96B6C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715733142;
	bh=fDuzCC32mqbB/gCma7fEtziIJNuuUsdWpZDYl35dOww=;
	h=To:Subject:From:Date:From;
	b=E4KnlVeHSer4tgqqW8STjVi+V5RAxBLDdiKU3oar8bXKwGmp1M5RygpIY0cpcNrvV
	 2+t+4hnSMl78eRieafkJWqKpob0XdtjbOh0jOmlAg1vdVsFwWnznLqqclRim6ZT/fg
	 bQcEIO0UgnwTkO0DmsbfiPw/2cZ+hX/UM2iHUNxSwrg17QtV00BDwkNrXK6sn2BxBV
	 KZtMveeb6PpgyJgXrOoOE/lPcmjNiwGzSfCtEHQNRSXjM5/1AqKZVRm72bzBvl/c9k
	 5w2f6o4QTEWYSSx71S0hSl1uRxxeuWfxYFLM3pgdX2pPxCuBIYlHtmpsF54e7ROqOR
	 A/77MQx3bpPuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D535FC25B78
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171573314286.10013.1388834331059997103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c271e56034263361cae9c181611f520aeff98d29b63da967bf7f32765967ff6
Date: Wed, 15 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715733142
