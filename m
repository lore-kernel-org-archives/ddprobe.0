Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F66C37B40C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790490034; cv=none; b=pQnIMm5YA2iRgKxXDR4bdmxMzI2hl3CLGuwnw1XgzZpx14T6k1Rb87YdbzPh0kSxSPca9HzmmIQ8QRDgSrNrX1kmZOeDRSedXTke959QHL31nlABoecmtZoCufmfFQHiErYqjNT40cr/XRfXfUyfeN5R1pNyEDQKJ+D84eL7Fyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790490034; c=relaxed/simple;
	bh=NI1H42E56s7Dtk221BflakPZnjEgzNxXyHcGJPGHFp4=;
	h=To:Subject:From:Message-Id:Date; b=h+6AnQ0gsSncFqokIRH9b49nTqMDFgl+ApVR16gp3D3nvmMlcGIXoyIad+IE2XfcPRSamWkQTBsRJ3QTJx7pfMdkXCzqZ1guyFHS4MYEs1bk7M8Wk8POKLKqyayzxwnQAiFoPm2dHQLqFFvO7ZMyw87WHYH96gnMX0KM5bL4nuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7Soea5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7Soea5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4321C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790490033;
	bh=NI1H42E56s7Dtk221BflakPZnjEgzNxXyHcGJPGHFp4=;
	h=To:Subject:From:Date:From;
	b=k7Soea5WEKLQns4xxMpoiNUTEwlTJOYtLs848v+D2aY+vFfVRD50UBiBY5csasJZO
	 h8TMf1nB2ODep/GGrBDQG46hrq/O185yUwVZ3RL2TDSzjPEkXyeO6N2Xv9RR8VvfWY
	 aHoP2Nc8OguIMzpc1YoXKONoy93ZVkxIT7H7X76zAIYea1mFUB70PHH1dw+wpkJ1Qq
	 FXD1A5YZdkFKtLksQTqg63c3zhF/RAjj9C8WoQfAeMqH2U7f9k0Q/S21xW00eGd6MJ
	 Gk0M4Fm2HCwK5VgWq4cgv9wmgrZbb34So91ukA2iaY6uyMrkvigQcDQDsmlxwq/rAL
	 aDYZjIDsO4AQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE918C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049003369.22305.12836838824757575775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462eb1463a577f7007de000b40d32d07b27306be6f2e5210fe592f090f8ebbd5
Date: Sun, 27 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790490033
