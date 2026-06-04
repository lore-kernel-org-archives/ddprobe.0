Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1673932DF
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780608274; cv=none; b=pMc16IR0SCHHIUrCt+3Mq31yerFwAdPTFbgoiAE4UFA0r5UYnHzADmgSQY5Vn5uikRXZk5TK5pbYrlzXM4DoNQ0XrF1bUDhuHMY/eFUL5h7+u/K4U4zGfuEXPSrHKigtHux0/KEy9YGgE/wWWNHSxaUpcUeW+1xAMWz4aqQC1OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780608274; c=relaxed/simple;
	bh=iZSPNIHqA7GCrRI6KPSNuxsD7c4WBxdZqmH1yPXl7LY=;
	h=To:Subject:From:Message-Id:Date; b=g6CjyRbueKiHp+7m9WHSHMKUT1Mjtug2WkNUG77EzN+EhWRh1nx9114R7UVApxwsTTGV1uo2OyHw0DjhnkHhDIuPSAkS+822NDOWudBqxo5GF7mD+V/P3sECSbMADEPzlQ1vcZ+rp4zF961pgVsch1ltIReSfEKSQeOgMDaI5wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTqehsDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTqehsDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6328C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780608273;
	bh=iZSPNIHqA7GCrRI6KPSNuxsD7c4WBxdZqmH1yPXl7LY=;
	h=To:Subject:From:Date:From;
	b=iTqehsDz5R6kwyg2uC9rzOem6nfI33BremEnNWT9AAxGlgPtikTW/AQL8Fo55oZw5
	 TqimRmXyR9tvHCYM1MiFHdIvLx5L5/ypwA+bfdK1sNSrEGC8C3NHtoAM6boSEU1FaF
	 sJtsqfJQ1s9xdZAMXzlRsmewBjarDrTaX1EzujuvPfY4O8hyYz664rkzYw5p0iIySu
	 hxwFb1cRU7GdCDAZTxsMwtI5hd/FysRBSYQJ6yIP3zvowR9HAcGdvwPGaluH0hm0hc
	 sEWAqWtTON1NGmcGBC8MhVWBiBF7RCjltPPwOhVikWmpFbPfwFVesYUgmRsnNlTXpF
	 rsHM0TVzMD9zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD33CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060827369.24448.7309998277849388898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9427f70c7aa5333892c4d2f9bf590237f47c0b0fa2c16b24a3b762ad14b69900
Date: Thu, 04 Jun 2026 21:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780608273
