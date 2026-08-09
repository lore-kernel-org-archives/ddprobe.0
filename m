Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6DA25A321
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786319434; cv=none; b=D8gmOdK8eSd9EwwpQJCMpxuQI3uG2IVTxZuzgDphTmcTwJjYtM/tQwTd9xX8gWn7pwUh/6UeCDm7ROOYuRx6gpvPOKfNZzUbfGBCIfB7xJL95DkaqWHNY7NO+ZtfZDOrlyLmrB9hMrCuVWGSwNenCPqlK147hEMM5qA1DkiTcMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786319434; c=relaxed/simple;
	bh=p8s6HbxOXWzrcZWPrB0Puv9yKMIRaSJsnAgZdIGZOJw=;
	h=To:Subject:From:Message-Id:Date; b=qk0eiCLIcslHgVIHrrd8I9Xn8S4Q/bODlnsPVqCifqS2hX2JrgK3v4wu1AW/BorHV15Y+BftgNsqFOIjcyrUPfArUFnP4ZjsCXDidVNw0j9CoNAiosoP7od27kfOmij3/N7ZxF35U8RK2Qa7/Yzz3Rqjf+vUGBxCBt41GRjqDyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jepmjthW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jepmjthW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2773C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786319433;
	bh=p8s6HbxOXWzrcZWPrB0Puv9yKMIRaSJsnAgZdIGZOJw=;
	h=To:Subject:From:Date:From;
	b=jepmjthWTcZDAWw68g0ndyCDAb+UEwe+hqxsjb2WiWQtlqiwNnDWKe622ssXpepPK
	 8v1m79iEizWeUkzFIHrztS9CC7wZjEx7+A5vRr8H/4HZwW7e7e+fLeZELZG8f6zkg0
	 TPD2vkGbKaZSQICq8YX0UUo4OZZ8NW3pyKovtBirSZijc/qghsrxFxmEEgPD2GzlMG
	 vTskFpDVYK+aE7Lp58LtbtgrzSbeY0wqbg61NWnTGKaPCUonm8AQSSObBNY0/oSTg4
	 3nLSTO3Nfn2+SGeRKClAQtFC+rLXyjgWfM/Lr+tIGaVQImv+XZpgolbmgIkvsI0Y5+
	 329nSdVgwi4Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC46C5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631943368.29941.6694700648791429694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8746ed43bb52b07a62abf128392a5081691d01aeeffff804356728ebae0003
Date: Sun, 09 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786319433
