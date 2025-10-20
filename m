Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070C32F5465
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760954394; cv=none; b=MK5CNMLnab2waWtryq3N/KffJDfZj1Adj1Ck9zY9At9vJutsR/xeZOaqji7k+fbXHwvlHwH2M6A9AAbvCTfEGf9fxGiC9DMV5B58AP7QW/wV9bmmQ5kdgXI2oxmRmqpMhwUX3BuqQo9+eE8DqWV9cm2+pVOl1uakWLH4CKofZpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760954394; c=relaxed/simple;
	bh=ss8ap+mdrqKZbfI68KxAEAFxtPPQPVdkvXmZF7TmAOY=;
	h=To:Subject:From:Message-Id:Date; b=c/g8S3Y9oM8oBAUdtZyGfnWXNEGCRQIcOP5N25xQ1q2+u6pDf4YaXH3u2nRtJSgbeVVoDVvNLY1VwTck59SrAhSF53Oj0IR5yTFtfBdV6ltrLME4aVIdln5y4oUnwS6W4tNndDsAXpyKuxOHoFlDeTX2NOkPv9nbTpLp+tNFou8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBDnmedu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBDnmedu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E394C116B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760954393;
	bh=ss8ap+mdrqKZbfI68KxAEAFxtPPQPVdkvXmZF7TmAOY=;
	h=To:Subject:From:Date:From;
	b=UBDnmedueraxGpqG+OiF32fS7q3YyeOmnCi7dM2cQo7FOexJeL7Syk90QSg431QQF
	 fLaoghI+zLITxlykOikm17z7ACgEeBLCcw8sTRXY9QB+tLHFSAC75JeSOyr7YD8jaB
	 Vg6Rd7zLPLA+u6Dx2vR0NZnwDj1IWo62qiSbmGzAotWwAJsOmk7WQuBQcZIf/lsQPT
	 Mmi5NnTXTL3hIl4sZb72hpUKSgblhV/VXMXopJxyFYtsegh0TjofWtFPYywpDbjJfB
	 7y2XdcrDbIT0ePrOgXe7pi4XObPPgGlthhsGMtR7vN9Os1f8yWoG+upOxCefsMt+TH
	 gs7vuPig/P3VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F695CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095439357.17294.15624470101683963275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68d8b1a237c8bc146bdc675abc193c2711aea887a415dcebf3192b2db825664
Date: Mon, 20 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760954393
