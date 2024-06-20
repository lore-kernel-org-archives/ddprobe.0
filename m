Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1AB134A5
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718915423; cv=none; b=IoF9bmrytkdpwSudyGy/O8OU8YmFrFQbJsTFQBD1Uw5g6gBnSPhZVEl9lmJOiJw4WedfFHWgzr2eEpzLwQuXmSUWMrGaLMIcUdyT+zij2wW70ICPh5fFYrwrtvz7CUftH810kaK9ypMUEg7r2bgUNi5M1zbF3/XFTOOC9qe/DS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718915423; c=relaxed/simple;
	bh=Xw6VSltVM1MRayoW5LImW1Lat4ahtZFUDJhNOOKn7fU=;
	h=To:Subject:From:Message-Id:Date; b=AqmgKrsp7bC6zzsZxSUiJwVWBddJhDxnri6wqwvhZb5Khw3JvVZyoM5AwgKWcSBRIe2NIiUqqHXsWH8pymvQ3Pf37UNBy7cmCXh//b2djPnyCNKpNOvFKNdd6VhEIxqd04Js5qHPYgTndldsLX82mKOtjZEAqktDVTDPQiIEGJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATIdEB3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATIdEB3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC28C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718915422;
	bh=Xw6VSltVM1MRayoW5LImW1Lat4ahtZFUDJhNOOKn7fU=;
	h=To:Subject:From:Date:From;
	b=ATIdEB3GQsp1vWHjlFIPmCQHbeAGpOn4kR2MBEeUS/+w1SEpcKKX3et4ctNZ+XUhm
	 rBLKm9K4hRJWZHHNICs12iS5hN4PVlps9z/pzFGBk8zsj2TW75yfupNdi+2Kr6qXjO
	 zYfb3PLFK6Mrpxa8ELr3kFR8sH5D8jH8R1FOJN0jbGH1pbKX/lXCwz1eFp6UjJxZZy
	 8yvpC3+4zDuocapijotma+w2kwCFwf4g6ZE9Dk9LqQbuGt7y2ur+x8D8HhVoWoIQtT
	 /qzATRsLaoYedZMuufTsfOKZo4B4f4OkpbaGKfEBGiHy5UuDEa7cIEQ04RIoRLBf9/
	 f2FGxsmOoSdyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92C2C2BB85
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891542281.23270.12847525295538401155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d87f7ac0c56ef1faab532ad3166db2af47bac1da9248062fd568ed5f69a163
Date: Thu, 20 Jun 2024 20:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718915422
