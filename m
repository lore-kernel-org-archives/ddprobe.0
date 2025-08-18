Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C93200BBC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755518994; cv=none; b=Deig4cGBzRk9KUNTs9ghWPgSrZSAFW0spibVZgcx8LSXKE++0EJk4Pzuo99Dbu57WMPlWK+68otgxlnxnFjwPh5/sNm91UDDZJRmUxACwcoXsUXhYziPywo+uDXjuJHFFh9FwYhwhqRuH28yBEbMr9H19rvEyB/qVfROZnG64+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755518994; c=relaxed/simple;
	bh=tKGFffIGcZhh7CK8XwG594qRGQWcQbuYgdQ+7yjWRKQ=;
	h=To:Subject:From:Message-Id:Date; b=MbMUs3LAN/vJrdX4yFF/iKyGJvXiVeOO2kZvKRTwK34Z47QWqCbzctgc04UAxVFCwceTBOTfSEBqJfoMAQnL/zJyl+INsYaMfOcNOe46T2Yyiz+rAM4q72BWkBSa0PLutf3/zsW/R4nTSbmewfeHw2GiVK8R2Ul9g5H9QdaKIts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ea6YYHMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ea6YYHMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F56C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755518993;
	bh=tKGFffIGcZhh7CK8XwG594qRGQWcQbuYgdQ+7yjWRKQ=;
	h=To:Subject:From:Date:From;
	b=ea6YYHMK+bAxJvK55GwkNSxFQcdN/ZIN4wnC4WsuKS9nnFid41jK6uGgklNmEafsC
	 shI29cWYhLy/Z9N9YBBZcABXI2TwS/fhdfoRI/F5S0GjrLvd0xygeyLXVQT7ReXehe
	 GLjytAfVjW3G0D13m2iW6j9v7KUpGFT0Y0SxOhvu+zUjsR2iFcUJQdMF26mCAhREe6
	 Ak1CvyabsaGtqHkL4kdBdQHKNJfHL0kFXLByl0scGAg0NzSMp8mEwYTQEznPiQilFl
	 u9lurYFUAkkBLdX8Yl0lIxZKv6H4WC84rypIkmhPtPi5QEnrPDa5PIcUctg15PiT3A
	 wofUXMheyme6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91557CA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551899358.29470.15016109635664342999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fc7b666aa48a828f6e2e6f790ff9b1da3d7873f44e90edad7f9efa55101d30
Date: Mon, 18 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755518993
