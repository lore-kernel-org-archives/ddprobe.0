Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FED61D88A4
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759099195; cv=none; b=FVWRMY/Tk7/CdnfUSN4jg7vPNG7uCyW18U74AleohDJK2zR+2ESlA97gALHZBAB/1cOa+SZ/sYiiTQ2v0ohkHDzVWRTm46eLlh/ZCmWQX7R9sLpTRcmnh4Z8MCV7mITfsBUsaOW6QJbJQDggMrog4AQaxfVBj9xyin3BiFK1G+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759099195; c=relaxed/simple;
	bh=4F6YRHrTn3RgqphFxK5W2xTAHMKB0tsWUvF5ZdOvtjM=;
	h=To:Subject:From:Message-Id:Date; b=efbZfWrcTwBPYq6b9kZvZIIEsI/+0biTrzOLwENIcWKPhmCz+gVDn3KCds6uwJStfLaD5A67lUaL+hmdpveA1u096uQE9eJkBO0a9/ZQylCkTT6/TdB9FkeLnYHz5EP6DONuDZ40y5SOgWXFjj06HdYqoJzMlo2A6wEBfBk4zkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFe/9ibk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFe/9ibk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E4EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759099193;
	bh=4F6YRHrTn3RgqphFxK5W2xTAHMKB0tsWUvF5ZdOvtjM=;
	h=To:Subject:From:Date:From;
	b=fFe/9ibkNpsn2wQRNbGCBVdhqwkaM3qnAKeVk9FRaRMxz79lTZIhsJdik47W7hAiZ
	 5avZN0l00rqciC9T8Leq5eIDw2L1dZVtTNxAdtKcT/K3/Ccc6sEQZNPm7uZXf0YcdK
	 TvX9DAl44dbbe2pReAtmE3u3oyyC9kUC35zTxs+4/TRobQMcXUkvUQ/Z8qEOAJyWoE
	 s9t9fP1DPfs61TaotyvKyEoKl3UJaas0lL4rqYLLamUkQlTLOWCsZ+Lv5W3WPa9I4M
	 aEwb+SHwikKOCsTde/eQu9t9vbeFTqTGsKroCKU4TSHmDrSS44VVQPfbDq2T8wn4X0
	 7Mz6g660QrC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1ACAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909919357.23610.14332447069954199008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35524d3e39345799b8d84d269568ddbeaa928526291c21a1e5e71f2c44c95896
Date: Sun, 28 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759099193
