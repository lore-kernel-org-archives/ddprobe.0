Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B4F334C1A
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766489634; cv=none; b=PoDIptrPpgg0T+pLXTZ8tmidrwak7rXB+l3r9qHRQqFl6EnWK6fIiEOc2gDLzS0U03Yu7TyDL3MvCcgZIRJ4Mo23FI5rwm+XrnMCw9ICw7/cOxm71NJn/WRqwmKG3MSGvvAIvIfWPQVaB45GIZsY5OWHWQOY8xYlnnI52NM9DdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766489634; c=relaxed/simple;
	bh=ugjsvKyGELMaoQTBMDLh6i4fFy0HuqX53ALQDDVptuM=;
	h=To:Subject:From:Message-Id:Date; b=Mk122g1jLeeuJdB8xVBpvRpkm1vsJWYGbY6z6uqKeA37AyWNXrEOH8xmQaJXFuHBD8XezvOgg5oiCmMsbSEmgBEwsiygrlpQ8wR0G9yP0rdgopdpznw6L8lSHUO4qlfQtV9DWaeYKXJ2z4KkvHUH3sJ5OK9pn8ehJSKrRhWLE8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjd+T4gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjd+T4gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5F3C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766489633;
	bh=ugjsvKyGELMaoQTBMDLh6i4fFy0HuqX53ALQDDVptuM=;
	h=To:Subject:From:Date:From;
	b=rjd+T4gukTGH5b2G4olzas8V6DHDr5eSSb71cSSJwbb/DoMvyHZzLBQLocLbyVLKe
	 teyhryyjAsCxuNdUDRJ/OMCeHf5OY8q4EkjC4FEzXwAtNZQRwoo/TwUSPunUOWdiUP
	 2rRF1R6iPjDElgQVgEHqPlKdLwxHcWxcSE67zf9+AIR4lssZJluEWP8iQiejL2YKCE
	 NY2rnS2c+FyRfcOvPlh0qBbLtCB9I5FKgDqD6NwZouJ/HcBLTvXwiSnGCbLlpqi6Ej
	 az6sfOfrcc8r3k5BBhyJ38Srhdddc7QzlgU1mgNP6Dp1+aJuOOqM8K8a8FP87Co5tA
	 M6wgCa3wA1O7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52BE6F079
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648963357.16660.4109285564690208004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ec4fec465ff52651fd3199d289492f4b5809d0f2d8d79718928905a7cb64c8
Date: Tue, 23 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766489633
