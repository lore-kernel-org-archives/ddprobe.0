Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342C919D8A8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779742954; cv=none; b=eMUBCwwYvTrASETxTsiyF5C3w9WBKGL1q9fW/UNiiBTaQU/CvOk3YoM2/zq5gEdjUEK03pd0Rib80SP9p1+wiz1IAvZi3m7KLEcnhxyPgfIPV3QOtRpLprSsCuzS2BkBuDro+dKDkf0+K1+fxfAXrsM9eeWS17yBK9tj4t0DLSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779742954; c=relaxed/simple;
	bh=GbGmoFLe74UfJ1peckwKgqqso72/wsgv0IhBav/Dxms=;
	h=To:Subject:From:Message-Id:Date; b=FUl5+bYPeREGkGLzdRCcDR/8QSU+kT+Icf7QAIJAVv3B2ae5zlVK0QxTiU0qe8D97xNr7NPpQD4N6rJLSH5yv465fkBSRNRzo3lLivpLdZVav31oqwMeeyebyrw8InLpbqJHU1SQlZZVupoC/GzfO1Yl1Z8ds6HnQqoQrPBeSdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv+g+LJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv+g+LJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8147C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779742953;
	bh=GbGmoFLe74UfJ1peckwKgqqso72/wsgv0IhBav/Dxms=;
	h=To:Subject:From:Date:From;
	b=Sv+g+LJ9NwX01IPHkB2GSnoqjB8wK6Xi2+fVRfMRTHebYocNw+1lMbNluExrsRbbT
	 cRWKvy65+LIiMVkwXtu1eFgGVtGHRKDY9Wm3fwS4aaeibQk9/rkFknjlyUMXuCkNPG
	 h1sdlBxLfLmwQip4c5i9pWc76V6WVIS4wrtbNN8zmFijQvQNlvgp55f56qAbi9AlBj
	 3eATk2drFBPrHi5ApYzAaGzE5TwyukIKoGow0ItfaoMxBeAZ5zXACzOvytrFHXBVpM
	 fLFKGt4Rrar87f83EAfKHy9UtcQ6jR4p8P1vHyucy4sLTtyoyChkyuaonlYhj+wP0V
	 H76dyI39S6svg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0128CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974295368.18837.13911768992922784137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2533661958479b246b07fa9d7e4dd5fddc9d46fa8aed391fd04041b543be2be3
Date: Mon, 25 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779742953
