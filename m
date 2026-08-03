Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4960E3290B9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785779434; cv=none; b=p6hflZjKrrOCb6C4X80cunQtrgWICYm236SssjgYy9VAytJwQXaIFwJbAEDDR6xb+Y82MJTnN9FwUpZzAN8V1cEnwXK/zCZinKwIhx0qmTZNXQ08CQiXXZtTTKKdR9+ap5wx4+tMT4BRAtBGtK8+xXs2Cwa+GJBWzq+VoeyUoKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785779434; c=relaxed/simple;
	bh=F+EGFzP76K5wHGNZ0ojS5IbmoEPu+Nf3toeFL6/1mis=;
	h=To:Subject:From:Message-Id:Date; b=rDU1vdxSQUEKPkaF/3U8BT9oGLm9WmnKxy63x25dc4UxzrpmynLMz8oEB4XG/etXAJSu6XinnHlS1lPAA625Bej+N1wIYhBd3trBSnQhqzcebPcWB3xzoe74wrdEspCelChlndbYafMyN9KzbD6xqgtqKFxrZdjHHEED2kc/neI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B04bXvrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B04bXvrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B7BC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785779433;
	bh=F+EGFzP76K5wHGNZ0ojS5IbmoEPu+Nf3toeFL6/1mis=;
	h=To:Subject:From:Date:From;
	b=B04bXvrODQUTr/6mdrNQxwown76n72afak4FNLpEfQwBtjfoVKaOMTWtL/wER3et0
	 A+5SvCIO9a+9xNaiSRXu5F74UlPbozoTEcgYbSJL418l6gDxmNCZWo397F5kfkft5z
	 ZjxSUSA80S7mfRuPuAV+R/g3c5qTqLewdOGniip7xxyt8diTkRFw/7JauillQUDcTC
	 43iOdo/QrpTJGipmYq6us7q8zIyhgHzn3/UrKo3bVdvnteNfzxZoN1c93TMV621kHr
	 82AjKeBNqxJdSkUGs58v3vpeKupov17NxAP4Xohk/tQzlrt6KfS7iJO33UUDxXJ64+
	 R1cYadR2r5MNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0112C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577943369.28140.2809671907367715542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91bf5466d6dd267ae8bca5b6b62b85f5aeeb056b0127226aa8093d3560ddf813
Date: Mon, 03 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785779433
