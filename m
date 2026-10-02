Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C09E4DEC2B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790959234; cv=none; b=SmrXBQgMGwJh+zYpgiIiNvIhj+9yWjbHEfzERD1b/XG2vuTMuj4+RARbr8+3Y0tFrTGKEky0f2BQrreJq3mkOU+yQKprzbO2Zo1ho7ANLdcv+wcB0oGoPgD7BBVxmnBMoJixQbcacRQJGS0nYZXSXtkn1Ghy0Ze2YXvuKyxN1V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790959234; c=relaxed/simple;
	bh=GHVAs2Ssvs8adnJAZK/iYs36D938Mq6Eb+Tx/TD5a0Q=;
	h=To:Subject:From:Message-Id:Date; b=LDzW9gzrya81JoIXVdMdI1YmAV2HRkU4LnpmdCt/TI2brTde9V5FXfdpJaR/0DcBzs0l54Mz8GTaLmDjuzqV76JejpqnXLnokWf4/4nAnmn9vPbmIMitpx/eGEffUew97fI2LuZRUnwkfd2qCoGvQDUfuDzo+vhRG+OalH4qDJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOjhBgHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOjhBgHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE73FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790959233;
	bh=GHVAs2Ssvs8adnJAZK/iYs36D938Mq6Eb+Tx/TD5a0Q=;
	h=To:Subject:From:Date:From;
	b=BOjhBgHVmgItKbTIKUI5112j33GyvrzupzYd8V43cLtTgBjJo+G59jP4C/cDqimAO
	 EnEb9fECwkw+3uKEOtrYQwikhTZlxhNZtnzwAh1z/ci7ZXE8s2HFGLA33OLkWP5ccr
	 ree5ra1HdS8m8QEdiFOgqE8bQU/yujcHyVlJLXTjrju8jU9sLkugjj79zBQ6QXAzGy
	 9RLiiDbUMsK0Ne/Bu0C3zH7ZwN6Z3zM9Pxjb7iJTmykPU+5zghVuSILCdtQbrvOb5W
	 SqhPDl8OHK2FTxjhCAL9vJHufTY3BpiwiTWbwMiBIMYOuSumwBbAvyj3fdDCitDGzx
	 /zWOymz/JCukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE55CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095923368.28598.9204020460963845503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3923177c5f25aebbdad0c42d5106a29c695d308764ee1e827a0e76756796c8a
Date: Fri, 02 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790959233
