Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D661E5B63
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791678634; cv=none; b=Hx06E3gj6jhs0vKa0ifhLlTocQR6boM32uW+L/M7AramI3dp43DfUcRAdiXLAKR1jHu/EYKDhLsbPMMEOI1RtS9lfr0U3dd9WvESXZ56n1p4bPhnlrBWNP5V506gbm3p6D7+T0l8Bb7JvaDqmnWntZocYmGDBj15ouaY81m8KhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791678634; c=relaxed/simple;
	bh=Tf2qkHA8YzEbCSJXgToESCTmvYWOxnCSTCa45S7b4Ws=;
	h=To:Subject:From:Message-Id:Date; b=MlqZ71uexsEm7AJI9tMBVoNNTmuFeqciPqJDXHXKV2DIP/aKUtT9CewQ130ZiTgptsEgirEdwyTImErf3Z/FUxm/LUkEtxd/W9VBIbhzUs3/mZI4lOOun9aTGx7boaRkGfmJuw5mO2pHyf3/cKydnkYeL5Fvj8k5AT982C0VNo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVCT87b1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVCT87b1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F30C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791678633;
	bh=Tf2qkHA8YzEbCSJXgToESCTmvYWOxnCSTCa45S7b4Ws=;
	h=To:Subject:From:Date:From;
	b=RVCT87b1GSdGgYXdHdPcC8nOdQQtg2eyI4Kca3VspRlhQLufZK7t9sOOOzjDMSvyl
	 ergXVYNhjZpz5D+3KFxKdjwl/TfEZ6n/nY+ZC6rJer28zi3v1AHmZsOPfeAMakKMV2
	 CaMAkw6Zq+ilENEf/cxC8K/KOxNtjh0f/GI/ReFPH4WIbmCp1T6miI9XXZktTmxcEx
	 zJNPI8KY/0dPhgVXC12vf2k9sraoprFiOwh3kfMSB0692E1QZQmYlk7lMfvc0JRxiI
	 rQDCIlYLmTh8R4HtpvIZohvl8L2TRVeSYaHn9m2+up814oqJ41j0I/ougJdjnMtqCo
	 Lrxd6LXUfzKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5FECA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167863368.8233.17113898865061697024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11fcee1bea88bd0b2de5d4e2fe4353ce3392aa264b1afccbc5163f1ad4abff8
Date: Sun, 11 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791678633
