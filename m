Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFC928CF5D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785362434; cv=none; b=Y4YjqRxdAGax5Kz0+QC0naxEBXBEUH+MulRj5gwrl/0sNiHAaz6kvGWjQ2eXyhHOeHpzRJa4HQDlqaJTyrgujOTMLzuCy12eYVJIwUtfauhmio0WOaWdou/MeIs+UKVgr09YC2gpnSHzCjC08hKuKA2t8txT0cKSuRNaZIgVQJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785362434; c=relaxed/simple;
	bh=qu4QZXIlTADwlwp3ns8xtdBWcU88hzmXQ/QSyMaW+kU=;
	h=To:Subject:From:Message-Id:Date; b=byaxcfuCv2sOQSF1JrEEqKbWqObaE8dgBqI6/jeC3GOIN1lyjgvdA9qeOSD4XpDrZExgTJq+PKPeiyLdn6O+El7NEh4/oStFWhTmtnMN0WZmf1IHAlRgEXltHhq5AeL/iFZHPeMGWXTtNoB2sRVHfQpGiDHxblswDawnf7M88vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKxWwmtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKxWwmtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14ECC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785362433;
	bh=qu4QZXIlTADwlwp3ns8xtdBWcU88hzmXQ/QSyMaW+kU=;
	h=To:Subject:From:Date:From;
	b=oKxWwmtOCG3+4NEXBOky2Wosz8bdJkxSMUoBAs0YuBU3Knr3Qy51ZV0g+XcKkQekW
	 An2lL0alngw2AbNhfCFQpwElZvEopgTIT6yeBOLK/Q0nHGfjZ53k7AVamp86fxGWT4
	 vvVIJ8KWwM3IaCnGOUgycyBgFRQnxqa+XXtvpl8LPSOS+s8b0Mt+euh9L1m4wxTcyS
	 XWBcwQfQybu8iZoynvFTtp6kOOgPBzsyHs0iXAQVDnjJGEkjDyw+mlTlYjyR2aCfhV
	 2/SfnJmzV8tFNa2nBxnxwx1jYMWBtQ0e1xVl51YKPitxNfLm4Pt6+6n75linWMhv71
	 Agc3vPnaS0DLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE989C54FCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536243369.4269.2572891348245304255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87f209dd1193d3d08a22466f044d726b7185bc5d3348abdf0a27380339726da
Date: Wed, 29 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785362433
