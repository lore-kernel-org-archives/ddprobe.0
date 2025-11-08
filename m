Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2805F481CD
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762610994; cv=none; b=X880AA9nR9p2z2NbHxHxj7teNHB38ANtw04ReNhRUTdDhURK20b/cPVU7nVM+7spdghx5M0WCKe470RF3hTZpbbuhBxDk6EJ0mbVrGvKpFjc/p5f4KYu4E8EnCOuaH7Ls0r904LUln3DX70TiTjwOCSvplNY2pXv9cuGxl7oNdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762610994; c=relaxed/simple;
	bh=VI50eeAcBMeN9mYhDvZkJmFakfppxwNwlesfrwm1wy8=;
	h=To:Subject:From:Message-Id:Date; b=fAqQheVEEoR3/dT1Lh23tMio9rA9EhmAtHOgTEUtzo7+vzcYayI4PZR33ahTSGDvcFLALOXQFaAupkspGovaNQoowr3bOHsFTLoVZCOo37vV3RCq0c7kbB6y8joewKu1qwnnd0GnrbrSQygBgljdafzNU/CpTVF+nkOeiJJ4dTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szzByXDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szzByXDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A77C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762610993;
	bh=VI50eeAcBMeN9mYhDvZkJmFakfppxwNwlesfrwm1wy8=;
	h=To:Subject:From:Date:From;
	b=szzByXDp0z5y9Q4O+OxBS4FMjvjAGPlAkd/JJpDAuWec1KVpA2dIyBG1bZ6ggRZ9F
	 2dBQHvRAq5avIKCs3hawH58U0tOwhGlIIHra+dVaTuTIbm6990LXOaEpZBHZo5xzP2
	 YIOjaYH7GeC6KcTsbczl7XQ1iOz04dUMKvMr1HU5rXQ+f+vGJT0tz0ESQGY1amAYE1
	 OpsCPptO2zVaih/auvLprTTkhjXlJzrESfECB1TFeb6NHhBFL+whudr5qGzXP+6a0b
	 0L+BIHGhF/08uYw2yJf4zDlb1710DqKYejJEwMA68oft9BX8LQLmji7jeKlBF6ZFgE
	 eaWtDNj0xbKpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B47CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261099359.20693.9232188664028013888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110889689066cbd985d7e1d2cad3ad4b8b578991fcf33ccdbd6098e88881de45
Date: Sat, 08 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762610993
