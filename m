Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A53A1EDA03
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765096374; cv=none; b=e6aCigk9h2tTBB9yY41pwTZCZAtw/nCD7VjTpPthK6tPLtIROfowsYrLzLECliRgvD6CK7i9IfCCU/J97h5WnQVZEBFFvtsYjzq9GS2Dhe1B6e70Zo54amicJqTURqtIIs+UHaVIrKlqfyel5Foj4SL9lIJVVHdCrghvoaMf9Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765096374; c=relaxed/simple;
	bh=puCbNaYhIFNBDjv3gi/AX+R4IseoMjGOJSifGtOsMeg=;
	h=To:Subject:From:Message-Id:Date; b=qqNT+lCFb8gEGC9SB31MxoosEl0323Btq4IW0nRmmyzjT7/Ubieyf8Mh3syYmOPrjJ70SFsjrGjt94S0QZ8MU7N3oQUk+jg3GuTHF29GrSylu3/4PdCE08WfcYEFTvKDU0viQRfXsWBUMxz5YKh8tdtI0qhhjk75x4CYeNXsO/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNbXY9aZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNbXY9aZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7923C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765096373;
	bh=puCbNaYhIFNBDjv3gi/AX+R4IseoMjGOJSifGtOsMeg=;
	h=To:Subject:From:Date:From;
	b=rNbXY9aZWVYkYDONORMS57KlE0MoNhfL8ndaf9VuJC/XPxyovL3BLHj2q/sxizuE6
	 rbe4cTU6Dc9dzablhrvd3taQ5sFh5M65XUv9UadeD13S0Yw9eA2pU/iGvP1MGwK1UG
	 crm7SP1F4ZkBuo1rIG4B86O0NyaeBYI8xyieidVXQAjm2YwEZG80/FeHw3/1RZ68ZO
	 blqT/ct81e1wI1r8Pm4DAFmt86+4EL4PjP076Of8HBUhauS6x9ldReAqpQgushRKWi
	 C/OIGv8uHgVC8a+Iji+lVsFXRrX+ddB3cxVWsb3qvEauUvrSDXHZ5a9lgb0MjHlnjt
	 oPcrrjdHl+npg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95951D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509637358.29631.12611549254977671732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34552f0ecd9c295e34c0c0d584ae9386ae6e0025874d55329ac1abafb9c088ad
Date: Sun, 07 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765096373
