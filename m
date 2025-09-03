Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A171FBEA6
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756910394; cv=none; b=fP3uYMTBCuVADPG0pIq0MOUy/Uy0l4IqdBgZMC5qMsSHGOc5Obeb/91q87lo1VT6WTjPH1Xzt3FcRN0tdo2qO0AorYXQqdiWJhkzaSKxXDLly6PYUUm6jOAAtEKtmIq9dx5Cc49McnebsP8NMT2LJ95F8Sqj3uF1TL6D0UCKUYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756910394; c=relaxed/simple;
	bh=Vw2jEUuAOCVefIJpC10VkAnYvotYflZAiI/polCURog=;
	h=To:Subject:From:Message-Id:Date; b=COswvT8MPyaFWc6c68ckp3Ar6/pAgolsH9k80DKRZuHUmL8ZHW1dLEn4HbRhpsRP8Fon5jzPMz+ko7avkZL79poJE4WC0IVopVmL2K/gnVpLahgDMSAcfnCWPlnn8rFFBOp8qpjIeFQLgdVC0eBHLJJx8d/8MlMri7lvbnb4270=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0+1ATuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0+1ATuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F9CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756910393;
	bh=Vw2jEUuAOCVefIJpC10VkAnYvotYflZAiI/polCURog=;
	h=To:Subject:From:Date:From;
	b=g0+1ATuBEi/8iYmi+/9ci1uK9CwS3nmyYWGo8htOwqm91ianNBHJtqpK3sTw42/dv
	 43nWLcMbogRiklRkNEU0bXA4Yy89u5L8q692hSmVZmSGwzUQ/Ok1pmg/beKshIsE3Z
	 4TEJsBVajuDDVozSDN2PsdbqbrfAts91L+tDrzOF0+9/lOgrrsgOyIwN5klbzExkDJ
	 LHvfRP5TpUFRpg6Rx4xkkh60k/kOT/DsqAiuHgrupwHXliea3SDzwPLnOI6Eumsusx
	 6wGgJilxsM3TJb0oc1MHgEMm4amCBpHkfOf9/qyQfQRUzTL5vDGHas45+88zQ6tzyc
	 TMEouwXmEMzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6ACA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691039358.18945.9922149482499164808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d48b927de56a0f80af96e66e1663905b5d416a1e19d4bb0ed4c7d522efec48
Date: Wed, 03 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756910393
