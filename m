Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5BD27874F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768446234; cv=none; b=GEAnvbHWMZ098mLnUuHSIyPPK7TcevPgf+uLaJYbK8mlIHiltw5oSHlpIVWOZUz0PsEbkg3Nw/EkS1jb6kg4oTbS2evDpv7kPeYE1ny+aagBDGbvioi3duk3oxUGiDECm1g2ByKf+h3qVHfnpKYZC9lpp8iZeXsHSoK2grYAUow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768446234; c=relaxed/simple;
	bh=7u+lucTtVF+FxImSPVZCg5BKJR43IjWiKR2ns2NZaP4=;
	h=To:Subject:From:Message-Id:Date; b=sIJfmFsctjcXhLai0D3LtF1ZJaCqJoH/N881MpM5tNT11VP3NBXENxbWmwDEJexYnhVHaUuiaKkB0IHBQMs+C0wDZL+cRreX/J6VnuPsiEF5fbP0/OtLC0jJx+G5Xl4J5IOuVy+zRXInwv91I1nk/0XTu8nePWdUaw7DbZmFU8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEWPzEla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEWPzEla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768446233;
	bh=7u+lucTtVF+FxImSPVZCg5BKJR43IjWiKR2ns2NZaP4=;
	h=To:Subject:From:Date:From;
	b=SEWPzEla2WP78r7/cgUOxpQOywgzgt3x2Q6i35b9Z3Ak9p91vSDZYXbDmVZ6u3k2p
	 otB54XhIzwc+bgCG085+Ugxubfk69PPHv/XmbSMlzN8+Ggbs0yMSIbfviEpTBjMdWM
	 MtAn2Kgh8MLoLsaiWBCMDTM14Csuy71azmMM6OXyPWyFEkJ2F2Rz5pidWTClN4rnSo
	 z9HBDjqZnp1IVO9IfARQiQY1gHA2wE/2IB45gn5QTiXJ4eCFgGXgeDDMAspdXhDz7L
	 0c3SpmA5nc3MSprthK8EOVtVlP56TrJ/So4j1pkneyAOKVOjVbqw+hnfGXpSGZHxvS
	 N0Q7Qy9T+gCUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EAD3CCA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844623358.13833.6084537321186744246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9d8a9969ccfa02c198570954ff4abffd886e5470f57761e1697ad43deffb17
Date: Thu, 15 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768446233
