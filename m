Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1712F2F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711804097; cv=none; b=W3jEfmsFXaTh/ZVdjG6Yzm/9AiIRfngXrTaVfWjQz6SdTtbZgSwfxASirjcO07FZHg7W/E+sUNcvf8ilROnT51TZK2h553p/+ja+yeRRISNz/WazibsI3P/4TWHcBbdvUSOMAT8xEb72A45MIDgqhNfEMlMKrVkBsOVqWX8lYjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711804097; c=relaxed/simple;
	bh=xgtDoJrAtkgXd5BGlwsbBWZbR2iOobnDgyQ4PqjtH18=;
	h=To:Subject:From:Message-Id:Date; b=Nr16oZ8nW5FdcyB3h8AuTor5SGqQK5B5zS8adhnWSF/spNbE0IwVxQ+7Fh9OfKE3eeR2qr2T0160omXpuivkIqD9DDa/+1B3Hs+DGlziVfNI3uZuTrCID0zRk2WwS0H8zl/mhxrDxpolFT5RjD1jr8Q0ywiVpi7RgtXU6+LQXPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e67bOods; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e67bOods"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744E2C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711804096;
	bh=xgtDoJrAtkgXd5BGlwsbBWZbR2iOobnDgyQ4PqjtH18=;
	h=To:Subject:From:Date:From;
	b=e67bOods9MzeH3hulmYhuCaJ3xZrqJB/MFGt54Nm4iL4rNiv1blcKVofWLGKgLaIP
	 up2p4RXiq1AwB9Nes6+0bLn+lE5yXJOZ5x9x+z35dA7f9+WXAd6Ix0VP6T/5KM5xt1
	 2i093pwKf9IP7535KDMxh5Tb84GMkBTuhUVUp/RMXs1zT6tjocxCRQktEQjUCv+GSr
	 kyEsdZCaDaocISyrZjrNmOrnMC2UBFliIvEkGs2C3+02MM08jc05/g6h3Mwd02IOBX
	 QwRRhm8VXSKp6xhZjA9ksRTt320KkQy85WHHjM94KleDH9vSxuXJa7+26JNJE4Uy0L
	 nNaAvyI1YqFBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6367BC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171180409639.19609.5239413987803095727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486c7ba2281d1b849bb3750918aacffef47b6451d28f1894d215b98ff6075549
Date: Sat, 30 Mar 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711804096
