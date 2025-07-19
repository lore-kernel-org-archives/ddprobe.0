Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43601DED53
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752902993; cv=none; b=qi1BHeyKIGKbIj8cTaVxwWLTD2I3Cnn/pJMITW3M5wWsqMy/fNZgxp/ZCp/bpZDOgYYGQpveRK8oCpHuLDJDShHFmvaM501XL0n6RAW+PMTBxlQmv7fw5aT/obdGex2s6iq+aA0F3vtGwlMp9wIe3ht9YbEy5NwrDY0aJ3qlg8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752902993; c=relaxed/simple;
	bh=aWO2xSLgs74yDVIds/QNBrqUx/Vp/3KEBffc8v7FSdE=;
	h=To:Subject:From:Message-Id:Date; b=uX2SmeBL26XvJ0+vI5JvKemsu3A2rUN0++zv6U2SvcZ2GLZFW40BGqDB/S9EQXoJdQ3v8MY+i6i/WxPngDyDJbj1JRsfsGllbWsN7MOD4WNHNLCs7ND2ReYaMIcSoZHWWD8BSCH511uj7zne+/guWyhqEsQZhYcxBl9BvU1PCfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIoOI4Ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIoOI4Ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79CCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752902993;
	bh=aWO2xSLgs74yDVIds/QNBrqUx/Vp/3KEBffc8v7FSdE=;
	h=To:Subject:From:Date:From;
	b=WIoOI4EkLCDTbCSy7mhDUON56apkjISshXW/jvI6li1cMBPeeKDXGA24uamNs7ESc
	 X18VkwlX2TyydQqyENMsjuZlfk0sE1va4p4uZcOnAUsGSP2CeWlmAvxGkVrHeAgjGI
	 tCU5EtXdb/X/xuztRQu2P4fvmmdmRl678/eiMGdPphbDfIuVANEm9s+3k8eEG/7y7T
	 eapfRO8A+/Mcepk30MvQCzC3/eOWH6G3bFqRkwh8Ymg1nZq7kamtrHtW3AKiCrXedU
	 +Us0fW3WFH7WsfLuZW+ue3jijLRxZLPkx+xM1p7QKYJUnikuJoB60xjyX1F9c+tfUd
	 Tyl+0yscTNh9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9766AC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290299361.26146.2298140673614396769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5203ac74607adc92715e9c6f2b9a5cdda8787487927fb66a88995046ecea895f
Date: Sat, 19 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752902993
