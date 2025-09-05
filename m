Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAA22F28E3
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757110194; cv=none; b=sgzdhHShfa0OIRX2ydN1oclcgRA/VeNkmprFl8FJclENWKornB1AeUjO7CrvfP+MLRpluwiXnl6hz+NYrIZDbwWL/jDAxCfAavVKaMnzsD2+gKYF9IiP4Ysaf4XMarwrhyOPSgJt+1PeEBdia7EvDv/lI7x49gK1GAndFdoUY9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757110194; c=relaxed/simple;
	bh=ifj2S7AnunYEMxkzkT+dMXt+PCzsInWhlkkaehHexmg=;
	h=To:Subject:From:Message-Id:Date; b=mKNMcN38y0TU3vjja3Doxajh+FA3mi61K+IWhpNWUAeNE41PCmPVojscd7uLzLik6f1ENMdUOsM2/m8D0+oNr2siLThbqeel34CA4mz4bYd1UMex6Sa7bQYmhiFxDTv5Bf1TH1uizF2cNSHZlslTYg5nBj4mL2tdWP6w90uQXnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvhZEwCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvhZEwCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757110193;
	bh=ifj2S7AnunYEMxkzkT+dMXt+PCzsInWhlkkaehHexmg=;
	h=To:Subject:From:Date:From;
	b=pvhZEwCYEm4PwHSTAg7tSZRNCSxxyrwfEZ1JufCbDoAIQ5gUcZu3qvb2ryALrD96i
	 cDJYapmPSvd27tg/xUGSpvOOg8jK6OaAJPRmOoH7BfNvOaDbk/NNV3nJcwx+Nbe89+
	 1cxLNDNAlCFPdwuQUDjyzRI1frvOy/viXCtWJje7ReDxIZGcCL7LIPktz2uENccspf
	 OKetKRGOZWCvoF4eucUWFwBwKoTm7Wvo/TJ5guNMkSlrxFFFW6jboD/vPNa6vlpls0
	 LVcsnAVSrnntSaMnxuNUAZYAKrTDKDfD6Z4FSJANFiKA2w9QdqiMGn/ylBt8tb2mvV
	 Johv+Du0FCB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92771CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711019357.10455.13665014695971367335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923e2bbd95636f9a6a7d49de90602579e25176071c9c167dd02b8ff318210821
Date: Fri, 05 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757110193
