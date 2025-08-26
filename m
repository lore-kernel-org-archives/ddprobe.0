Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226D32586C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756226994; cv=none; b=ir7PUb6OU7TW0Okg56nGGFaclayUw1xDPmJnshx4Xsr6iVXR+y/UiAcGZJfb+obJsn3KLSILZfhdAaONubipuBpS3OIOGCvFr/gx3a2eRETmF2wXTro9Ar5bsPFzf+nHvi4dzTA9sukikH7qV+xhAo4iufyv1Mce5I4k08vqTiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756226994; c=relaxed/simple;
	bh=lPBgTwB/LbV8Gmza6g3xqp/YEaH7xsaG1mDSfr88yU8=;
	h=To:Subject:From:Message-Id:Date; b=MqLGHgljmQ78hj9w6CSibPy0qz+rVTlP1FyQEmRAUG5yGJ7/CC9zwvk0v/JSJS84pMO2Ey0P9FhBEYNoh7N8RbSUSONRYfRUtCpgSrz/svoHlyFUD6JXmMawlMlpS0v9l5lUTMAuyhP4PUR1Y1norrN24DawaYUdau4eI1W/YuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPIW47pM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPIW47pM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756226993;
	bh=lPBgTwB/LbV8Gmza6g3xqp/YEaH7xsaG1mDSfr88yU8=;
	h=To:Subject:From:Date:From;
	b=XPIW47pM2HQzPCTRq1BluWIz+EzkJufqJZgXiTlrjpz6FTiuf6yh2SMXuG/8qW6p/
	 MZBwWGamjwA3HErjeS46NFkZlUGaA4JTQAmk299dcrIO7aSXgnYHIOaXGyGCo9GRyj
	 OttyQRJk2zHlou9w9jUk3XNI9YVU8MTYnLaPaU4/I8BcS+XQCfY/Fd/wATxqUPI8Vt
	 Yevy1qJpug0Xk0v+whN8ER8Li9A3+MuOwFA+Pmx4j/WYl8OLiE5X3y9yon+RpXdafC
	 UotVDWDwV2Zo/TsktjFvIpjzWUh42tAjERfiFddAMqTyLUnp96IkWpY4cSCIxWM43y
	 3nScydgrM6+qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF40CA0FF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622699357.12881.6128850520602414711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5514cb87f3eff5f9f27a24c7048c7075ec03b2418bc7edcd26c8285838f389a
Date: Tue, 26 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756226993
