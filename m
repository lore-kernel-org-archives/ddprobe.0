Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F50840D59D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781843194; cv=none; b=Tx+Tv6206Krw3afrw7KX3XcfOlve8MSLrv1//Xdi6XcJgpYz0KBEO11TkZIAvsNB/Ftokh8J6UIo/YxNqs4bm8rBzBizeLeEUwD5JNmvGQfrMYAjKfVW+FzC7cLHiH3dethPMH4l40clToWcR0Y8IsqB20mY2N32Ij9vDF/AOZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781843194; c=relaxed/simple;
	bh=oUJRtJpFAcZJ9V/Qfi+B2oQPQWyyXfn5TC8Br0cBJuA=;
	h=To:Subject:From:Message-Id:Date; b=Y5MeYYdGG2FSO3aORSLAirxngNIPitW7C1B4YV8CocJTjVvM0nk3F3AFyY+dBAvnr5nnisw/2oOpHaUGnNGSZWyCmlGkv0rxY6x92gszEuK+Pkp+K6VKcsYhPiyatxhPVE5UDxoqKjlmGULKxx/pfwMr5e6IHp/S7bzvw9i12KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITJs3/Bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITJs3/Bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF52DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781843193;
	bh=oUJRtJpFAcZJ9V/Qfi+B2oQPQWyyXfn5TC8Br0cBJuA=;
	h=To:Subject:From:Date:From;
	b=ITJs3/BoRp7yjn3r0+xeHdpSojCWTc2ujV2x6hn/nlNG8z8MRa1RrwTAjLPT0oQQ1
	 K15hY6yW1vXxcFrU5fopqMu3ksE1oN9UPIOHl5zn94lNF11auQD5ZICDRgoywOVgKA
	 cyaYTwV+2/3F5XfAQucM8SWTfzQCE/ldy9usXkcvTaLEIVlIv23tS3+Ujn9aRse/oT
	 0nSUO2e7ULOXudsSNZE7FfYxcztEsqJAeR+eC2P1btDDEwov0Tyzw8naKGI5KjPXtx
	 qEPAg45ojn9DDDBZpifaM0Nb8gY6Vl1b5ntk/9QTKUrw8Yf9CT+GYt41KVIjSv2U+L
	 85VCYtrP1n1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF166CD98F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184319370.8664.1036558113366193790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291579789fbd18b6cde00f1940f7cee75f4887b6bd2133db5b9440fcd92d5074
Date: Fri, 19 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781843193
