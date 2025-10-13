Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244DF2248B4
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760354994; cv=none; b=pDubyFIV1b+j6wTsN84FrRTydNfX7BmpkVR2+ZW+jNY5mjit8WlnKF+R27K3v3Wd/WDBAtisdJla+ftdFxrLIXGgMWDkqAV0YCPxdGNx1FzW+nJXLwPotKexl/ZE3VaGKz48721bdkmxE6BJmSj5K4AlcR0fzyL/c+fg5U+K7mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760354994; c=relaxed/simple;
	bh=KIumKTfR/62vPAU2AlIBmSa8V3cuCdwDkFqJOwoYOvE=;
	h=To:Subject:From:Message-Id:Date; b=oDEioCDySgnLpanIXM1ujpTH3hn5YRqIFia7jliYW1pO4xpd4vyFlbQiMMCiNA+BRtqrI7W+wNR9FbZLbSXiWiuCUkO7CKUD3qOYgTcEvziMMqFHUX5xja8VUTTRxzGj8RkNh4c6S3iawjeWtFHy3ORVs2E03ZHORsvXRQu88do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lk6+wJtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lk6+wJtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156FC4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760354993;
	bh=KIumKTfR/62vPAU2AlIBmSa8V3cuCdwDkFqJOwoYOvE=;
	h=To:Subject:From:Date:From;
	b=lk6+wJtc+wGjoyL3gFjTZtNYYN+1+RIO+7mpThc4vVxcZM8JazK0mCQwOKSJ09Z2j
	 azP34aiqRLoxyeyu78z9UHp3Zq1a79Foex4jvnuJW43jhX0w3l/wch0Gv7lt4n8RAq
	 K08vq+oSj6aaOAErzqmUAS+0pK1DGfSFdodpcd5wRji5nHgCU917PeN8jNJquu4OuS
	 NsRzt3DzpBoXMrvZoPgAMbHsE5neqNvB+vHTFR6EL4R9YqFRz/4Lx6kmK7Dzz30kOC
	 IS83Mqc/Js/2YaoZzib4ZrojtS1RgaXp/8vjJZJpHioIxzHprW2gwvHywoZTN9b3Be
	 QkiNry5V73oHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9244FCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035499357.14181.17740681983826466141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccfa9b23fad4709aad04d77c7e386579f04c08529460573eb78e6b0fc9d0431
Date: Mon, 13 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760354993
