Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C3F3168E4
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769820834; cv=none; b=sftuOMgZNryYdPmNMKpKz0d0johbIBcBEJTpu2nGkDeRAZvzNj6i7x+nibiKT7TeBJaSl8gUO9pv+yCMy3K9NUNjAPmBaRSc4Tun4piZ/ockUO/5fLSypaJ+LFV+IIUj/KgRxmplBOUb9p9V9TUoPJeSbIN3Csj6SYIkOV+sFFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769820834; c=relaxed/simple;
	bh=8hKUJz+8bfT4/93h9x7EEJpwhfyM4SRFgD2xESKBX4w=;
	h=To:Subject:From:Message-Id:Date; b=thW1vZyyK6yu7yDKDoyUNvanhnW02AKwRMFLSUfq4Rgkm/E9FfI0Yqhcyp9wnjPhB9ifFEXIGGH5dINFTGbnVJhiGDVTi1laLWmBozaBvxj+aXCPHVWLRqOBTYoDiw9ZEWKYHNuxeONvhoq8ts+8gMqRFv+6m3F9ehqfnwhSbyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRpO2nUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRpO2nUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EA2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769820833;
	bh=8hKUJz+8bfT4/93h9x7EEJpwhfyM4SRFgD2xESKBX4w=;
	h=To:Subject:From:Date:From;
	b=qRpO2nUU21wykgIZsj9Cw202gdgzH4PGoja3biWLcZg0l9ff9sc2i8Or7HpvxJwUy
	 eTRpK/3zjDTlZbNjU6c3KQynD56kjrVVq/b8voQaxCKSMNdNGFLq1e7wH5Z8zdg7Sd
	 amJ7QG5yTHHG2uKAn3iFBDk+4BBzwSftSdYSxlM0BG2Vxr+LKCPKw30NIlUjLIBzcQ
	 VihbkGqvCSelzoaJ6nVgIuWsEPeyZe/vQnQjZRpDUOA+3yrwH+5b5OqDsvNUJbxdCR
	 gVJ6N4rM6xMTdVdQcsz3hYBeUWPh2hAbzCRezPCcQNDwz09RW4O841LbHz8IO8ISfa
	 VfLFBB/wOgTMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BEAD46C1D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982083358.445.16507133839332119025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6e7c926f2e42cda2e46773915e938ce177da89b5500666f200dd3fb7f86fab
Date: Sat, 31 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769820833
