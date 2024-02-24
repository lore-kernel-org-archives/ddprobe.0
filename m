Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111636107
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708744697; cv=none; b=Wxds9zmtoEY0XAChgNQ9b/eb1QHZW1rulk19WySl0h7dnBeOOFG6yovSMzcX+zhEaOUcdt78Bm9Lhv0SRQjKgvysQXqtuX806cTk0qSVYXaLuVjlmmjLVkR4OcHbRriwgfM5rImd0e6edkVyclAM1uxIfVs7d0+kMnL6jNxXCNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708744697; c=relaxed/simple;
	bh=p8QQxVxuAdPFP88/7++GlyQ9VOQZUmUDPXiKM1ootzU=;
	h=To:Subject:From:Message-Id:Date; b=N82vffLSB/1YPDdqkuiAC6DxIvxKS1GuDwT613Fei8Pc+r1TNRojFbwGG4wDovc5zmtLGrzEKV08ILAfFWHDvFx4zWcj0g2kmHhUt13Hp1olwlIc6ISbhXJJLT04PWaqOiN53cH1cf0EGx7pM3U2QhN1D5UloTBpCWombJR0PD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWp5Qr1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWp5Qr1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD8DC433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708744696;
	bh=p8QQxVxuAdPFP88/7++GlyQ9VOQZUmUDPXiKM1ootzU=;
	h=To:Subject:From:Date:From;
	b=IWp5Qr1G47EROXk+t6gij2vF8xydMssVUiyjGw3jKwIxF5CUda2WPbD0tAxYyQAia
	 Z2DfHbs8F66FzWr70gL3CImXn+Ia3KkBnA7pb0jA5zcL8OC9CWY3RokGpvVJi9fNkC
	 3PyhF8DyfbYLiYSqEHUFqu/7d6e6jiwf4knrJMFcXNLJ0XEVfLtbCOrfByJ+0wpnbC
	 +nMNznmWPPWUWdQh35gqJ3zXWizGbRYPmBuTrCopAorHCw6OObuR6ZJp4UJ+Q0bXxD
	 S56FYQkcUrWUuR3A+xAiuGTnDo+lsrUczVk+gMO3WRbDCDvSHC1p2+vhe5LP+yKzft
	 3V250YwBddshQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6400DC5478C
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170874469637.4038.9091721584756992720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398e4a6a8dd97a267828b9a91d72fe4d514407363352dff1b38c946ddc6823ee
Date: Sat, 24 Feb 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708744696
