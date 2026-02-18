Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204622C1598
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421094; cv=none; b=D7EVrJ+L2f1ZQrhDFn43MBdAuDou/kWFte6tLlE9aN5wAD3Ypf6LPMRqWb97F+TNxn8M9o+2EGGU5wo/uwE5d5X4OGOdCiJgAGrZ4GEV8uOUdXDTI6xf1Dlb8+aVCLve5DsaxguWuf3CJaejaMdQrRJbI2SspVr6RqAlTn7vN8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421094; c=relaxed/simple;
	bh=xhjlPn+CUDpUSVdOUZU3yTG57Nw/TeXJSVkKGY+ggbI=;
	h=To:Subject:From:Message-Id:Date; b=HN7SkE8vIfW3k6KST66hsqt40UbdE1eKm0AwIc/QW7B+H8GlW8zeqUw3Mkw7oqEFtflIoYbtncxb5Ubag9ywwJyhBAfc3ykHi9ddQus6N3wm3SN62HFzNzr4unnjgPiI9LUqQZI6cEI1yQtZ+ykpTWmloAcYUDDtgiKP7GPbdGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivsikQtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivsikQtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB90CC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771421093;
	bh=xhjlPn+CUDpUSVdOUZU3yTG57Nw/TeXJSVkKGY+ggbI=;
	h=To:Subject:From:Date:From;
	b=ivsikQtn5zpy1/ewM4x1dOog9nfJpBvJp7+j9uiAjOwcTiA2hNUs+LXgY+g3I4fuT
	 167K9Vd7nmhYZN4j3qQ9sJ3+LvPNzHvvWLjKbHH6wVtj+TAgsjSfd54WFo94Jfoa4P
	 JW54sjwPiE1D2rj10KW5FahkVXLkYPBA0x0g4aOz9dZZM71LN/ix53IpT1NpBMsdzb
	 Ez2ei6GHxw9xO35OEJ2vzKcSwWSfZdOBWOMaXB546pwAG4IEe5HAnW6hZ3JrcEk1TY
	 x6Gm5vYSEoJpfhe8GOIUnngf2otH7CfD5P+L7Iin0k5YQ7rl1DjekinObuKX/SoIDi
	 0SxhnLpffvgXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C70E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142109361.22013.13882117006088866774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf897dc344ad45eb4df89eb37c0a9f072cd0dda9afb505bd8be6651c7c14facd
Date: Wed, 18 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771421093
