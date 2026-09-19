Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F34235F619
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789786834; cv=none; b=h5q64sYR+CEP2sj9Iga6I3Lh7dYwjjLESW2CYzML5sja5/A1BxMvsVn3LpN735egp04Blqo06dJhjU7hLnSpOfGDJHGcd9WBUOz+XoGAR1SPH3G/b6/8a/XDC1xiJ07/khHk9lY4w7xMjPXJKzBZ2fDyijEZmkqvGnPml41MEv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789786834; c=relaxed/simple;
	bh=db2SlT36nucfH72yaetHIVPPLO3eC4f7w385w+AxKtM=;
	h=To:Subject:From:Message-Id:Date; b=iuzwBN9EeNiPGVcmvxT3dBXYhMDWqjN7b0tz294nso21/D5DlEJjQONqMf1LVcTCWcc5VShmGG9L/L50/dLsbzqBWSjGexktxmudgshYJSH/3vluxB7lRHH8ssJDDxdxw5WpE0qNhIJ5rz3TqrJSGOJSADu7OO+BRaVGtvsBne8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o43nIbVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o43nIbVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A5AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789786833;
	bh=db2SlT36nucfH72yaetHIVPPLO3eC4f7w385w+AxKtM=;
	h=To:Subject:From:Date:From;
	b=o43nIbVUxxUzC0QZk5NIiHinDs0ccn3rj4w2Rte5xuBNRai57o3IdrPCAJEFNyxVf
	 aAUH+D2BrcKDt+Wh2GmziHdHe49y2oD3ecwctHkqLfJy/Dkj+/wT7lZnV4r2AD5nMn
	 1whqqb538X+GyRl2xlSnTJ3zASCydfH/UTHV0L1WmDybI61fDKeOInhAulLfa/H8jw
	 HdxJw2Ibd7rVZDIMjWB4fV64q7uufq04AL66KqMwatTPmws5YCYcOhgE7vdZgEijPo
	 W+g1fCPYd80qwAhUEsplviuScVpM63HP1sjR5ngtfULytcxYoCFzTGU+qI/X8QIQza
	 iSS/dCQZ2PX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD77CC982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978683368.5367.8731317690849768096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836c5dc227db7d0499e4f69af4df857ef8b7b9aafb6f2480294951446d50ee43
Date: Sat, 19 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789786833
