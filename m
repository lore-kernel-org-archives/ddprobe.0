Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37453199921
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727114754; cv=none; b=Vw7b90mupzW76Xh4uwAxHRZsZLO5pJ4/7P9+xKltYqh+/+5iAObY0hCfixLz9+0xawWVZlgNSgF3S+QOcSdodXHAUeQsbFe/BtCcRsyagtnW1qNBQ/prSyDNpVR23li0qOO2wiErydfL0Yw9Zlst9pB7/LQO2O4+xFRqvoVY0Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727114754; c=relaxed/simple;
	bh=/Ua3totZlchujH3qJE/M7M49o9HworL+TBnkgoAJBFk=;
	h=To:Subject:From:Message-Id:Date; b=lluxfjSoff+8AoW5tbVooFwbHh9q/+x1Vs4znq54qFYgAgzC+jCADnlWwEqfPHdVS9pZK3nLOROAuNmN5MKs4OmIC057CuDsdbV0NZl9Z1S25GYhopFApmS8x05Ciy7g8J9mKvqqjSx/ZrR59Mbb2o0hNA5c/IJtxO4ehmlfoDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bP4occrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bP4occrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADFAC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727114753;
	bh=/Ua3totZlchujH3qJE/M7M49o9HworL+TBnkgoAJBFk=;
	h=To:Subject:From:Date:From;
	b=bP4occrMA+IpGtePHgOE5/AzVMzY0r0U9VIeC5EQqwE9QRy6Aqmk5YQUWf188DkKM
	 TNcZeBrI6AsnnT+hQPtUbB6VMBW94Yo2iKpNo0fBJesI35+exippYXO27qKNNyzBhW
	 vegOawWCpCWPRPiE7mqCFAf9585i42jkGHMFayESEm36JKI3bANMd4KhViNy55AV09
	 wzLYIVBTNbzSZLaCanGKIOj9Lwcbpjmo8WlaY1ngt/agzCeYoaaD9pUhaH1bOmH5sY
	 Q/QLXs+UCHFf0ktaLFx9o8mUPvX0tFAEbrTKq4Gu5m/Pf+SPElq5mFTY6E3fdZR0Ps
	 9fKsolh5yBp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A10CCF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711475361.23286.934013910655083564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a9f9c73fe6d1249a61277e226a4db3dfcffcd872c62aa121988611c22a9ca2
Date: Mon, 23 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727114753
