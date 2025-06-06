Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5F11D88A4
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749188395; cv=none; b=N5Th5PkPhjOFpUfD2b9Cu+5q76X1XpdWjMUfb8OE45qj2N2MMrbsMBG7xheZLfJtrC6OoKGMniZDvD8no4jCUwMAuQmNBAsfIQRtGMWAbrYkzJmdTiZIvCtIoybSwaWv4jnhb/OMl8pL1Ic8/eXad7qRm1SBfVCvm+UCiUOMtX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749188395; c=relaxed/simple;
	bh=GQIvmJwQYbAFccTT21eMIbe/ubZzzi6+OSLIehAN4Yo=;
	h=To:Subject:From:Message-Id:Date; b=noO78gWdC7BdCKIUFmoloPD9joNxy1+Zn430Z4n9xck9JbomupuB8NHXtbNqaU73hL+tkAOJXjIgT2kYNFGkzC39aX1X4gNG7ktRNjHKG+dYLefdJfCtYiBwgTlTwWVC0EqtZxivwJa2XqOfw+PAH1UTQ67+GMeo0m3uH0/aHcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amFCWPWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amFCWPWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41CFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749188393;
	bh=GQIvmJwQYbAFccTT21eMIbe/ubZzzi6+OSLIehAN4Yo=;
	h=To:Subject:From:Date:From;
	b=amFCWPWO9lkKEUpjr/SOh5QM4PFfQTs3Ml9NuzkJpdX3UNmPldwQ+3/qiqrxPKHnh
	 xg0PjnMeJoWGUepfClPCX49VTlb1qEwEWdy3LX22eR3s8GUr2C9PPu3neA7LTxm6Fm
	 3Z2jN+u5wLdksRRuy38LEGiDm2EB14l1b1gJF9W7zUVNIu/HIGcO9jZyPt/v72mW7o
	 XQfXrkB8DlKV5f0l8+WVop2d9x+5WyRE4lcQ3Viupi6sJAYryP4u3NW9aHzDbAho5q
	 0+VeNT+zB+3TO0cnB3oibY9y1udrRfLK1s/yh2lQG4uNoYiZxumFAGmXKfdE9pzW8M
	 ouxer068Y6N6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F765C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918839357.29003.8309004450823972423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984b28f129825507df1a4f2e6c456d31577ae7e430bc36e05a59a62f79b960f2
Date: Fri, 06 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749188393
