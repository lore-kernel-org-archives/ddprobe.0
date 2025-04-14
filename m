Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315BF1A5BBE
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744607394; cv=none; b=htcuzrWTUhnDwVh+2sJQRxRdEyf3eepFrp96fCIdW7Jg7CrSrKBXtKXS0OCzIOOx6Lnf8uSMXuZt2HMsOkcnDegXhLLgLG9j8weSCOxCpHri22FYtyXXYPTYSDjHF23QN8+L1BDRWHhod7dBKdoe1qJYolCYekd8PvFc79PEAKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744607394; c=relaxed/simple;
	bh=+c5vlh6X6MIcQJdbsUoeco6p7J2JzXOPnQde6f/GpEU=;
	h=To:Subject:From:Message-Id:Date; b=qrRAx9q/6iBulo3WKP8FbONVd6Re5I7Zpa+10fsPAQFLls6PLNQ8Lv0VEuUEHBG6n4VAyYQ9aQTnC0QXUcuZoanolAnWZuQgo2VJGjHDwIZIc9IWxkPsls60cRlL5GTKMEwB7YSlZmPJN9eRA39ZMcKzbqJ5tUAHmHp5NA/ysrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/kMB8pz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/kMB8pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C9C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744607393;
	bh=+c5vlh6X6MIcQJdbsUoeco6p7J2JzXOPnQde6f/GpEU=;
	h=To:Subject:From:Date:From;
	b=N/kMB8pzyeVNVz7i6vWtexOtVog5GoN+bwSA+Zbde0KW7sY5kmOcKpTkRRvD/vCsS
	 uxrxBl4ea3PY/SsGy1fXo6WQgIFvsCxlPELNx8y0irZNG0ar1RkB9eeU92CJDADzdr
	 zDeADevp8blLvs2CoZLm4+muOIE/ByTzOVSyxmrfI/ZCKuDyagKsDna4behBUMdaFw
	 LDJeUizbusSw/Tbu9cDJej+s8RrzKcoezI0kIIm0t3tft82uY+TzQTAj9jWa06emcR
	 40RCykM51UclNlvqqEjQHw6IiLr5vSXS50bvLgiJw7k0MxB2nGKT9wzJdgXLqKROHi
	 mXbiH51O7GIlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C87C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460739358.417.9577959573962568566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d2867f7a30ab2319955d6b02409ec3e43b812c69fcd9da827ad3a5ccadd07b
Date: Mon, 14 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744607393
