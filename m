Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1676A136671
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727253954; cv=none; b=nxyTbbDgAeGt54mCd2E70KNeCHD8LfF6kV5mK9t4FeC0MVrn4IA5gbZcgelhSXD6A3pe/GA296hBNmJ7HtmVihX6wOXV5Yz5KtpHyU7SvCivv0OL7nE+uqJA9pamTv2ZTsBGS2a9vl5jTrLk0nYzho6bMJa5s5c3Juf8Fp1D/V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727253954; c=relaxed/simple;
	bh=2wd3+pmnYL3RatDUbqnlr6ZPOyEEU8I3GUD7Vol6O04=;
	h=To:Subject:From:Message-Id:Date; b=FTPufkzcTqF5jw5mC6lyil0iLId7lTV7KJWkfT93xnk2anIMrxiwDuNtpAcl1TLfiplhz76pxefMM8XnevgxHviWxVslzW5S+3Ooey3rB0EGSoUNYp92rQFvpQ/7BvOIfmEbsboI8xyhefxVtVIQAMpcB212jgssD/vG+yoqCsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr19MH1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr19MH1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6D5C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727253953;
	bh=2wd3+pmnYL3RatDUbqnlr6ZPOyEEU8I3GUD7Vol6O04=;
	h=To:Subject:From:Date:From;
	b=Nr19MH1QwpoCJehBC+inkbcCxieQnFzM6iw8fC1NaxljcYJWwosLu1LAUc8EXYSug
	 o2Ikoz50dDNYc7xWzr+AW/zKTpBadL3pmLQ6PK05r7Eizjni+LiB/2IjOLl/796Pr9
	 RwSsS70iPOOuHyPJ++3rUrjShGlyUB//ZAmGjfh5zgA7rkcWn3z20jQZgHH8IVyGeu
	 ghy7KboVJ5sdMgcQ0vVEbLIBsUenfzhpNRXV64Uvtz7ILR8zs11qmVuk3opPCaAkQD
	 ZhD4f4IhpfiUXYUgPDbu0uQfXkRY9yc57emOwsRaHSbr6tUvQ5pLeb7jsqvqPyXbta
	 Jiy3N9qk+lt1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F075C369AB
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725395357.17928.8919964350923438337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2747b3cbf47fb59ee96781838e52cc844746fa996baf494bf191890fe6a1ef4
Date: Wed, 25 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727253953
