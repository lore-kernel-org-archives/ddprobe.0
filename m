Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546C425F794
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741118335; cv=none; b=DI9Cf0ka1E+Uj0XNU68omHlThg7P0sE/gLiFIaiVsiLkYIruu7dj/wP1+G3LXrZhz6pT/ZWbDidHdAJ0+u57+TRWQIHKBNhKf9xMP2lRDEv8iG9cgFylEKw7DAF2jmnB/BYdS4A7sqlCYRLVRo/bEFU0Ht6Cz0aPRf5tLWgKLtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741118335; c=relaxed/simple;
	bh=uCaZIECScN9cbZm1dvZl71FwJ5jGp3kYbjeANeoaCmQ=;
	h=To:Subject:From:Message-Id:Date; b=Ji8qenPTw9qwGtTmMWNvBQQnLAlc2mmTpM4feDJmJ9EuOVnUvCT0vmHSwCwMlAMWt2LElyQDvn9+jvu9ms2HtMc9p35Vizgdhenp2auuxumSCqOwUvZ0dY6565W0n7ImGVqlykQgBcRpHShtICQr23wKmZ1tG6dgDAQGQvg4MGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kry9KP7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kry9KP7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11FFC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741118333;
	bh=uCaZIECScN9cbZm1dvZl71FwJ5jGp3kYbjeANeoaCmQ=;
	h=To:Subject:From:Date:From;
	b=Kry9KP7M39URGF2w6225/pcY0b42/ain6DLEtC04NDq8n4XJeplcABa5CZAShok2a
	 prqoVSX6jalLhTcUy7ZZg66dlOsKeL/SIvVL+2GmEWCg6s+OPay9iLlc2aNubxDwE2
	 E8KPzzcGANFX6F/Z7+8nNr7/VP4Jkcp0/6t6lGrsUaOrBYbQFmXHEUmrrsXWyIRkPX
	 Pr29M6JOnFfn4tfb1LgSS2PMJS0PzjTobjiaK1e75lqaKO4PSpEfXHtrFwp+YqDaNh
	 VWwLE7wSERU2R/gQGA9WXi/BSggmKUtfJSmDJ7PsD15Oj95qbhOqLe/VktUMCgwQwb
	 +RpVzXOGwOQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D69C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174111833360.11795.14025103027849047694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdef6ded13c06a09c8f036908d090746f8ff9d5f03387032062823bfd336fed
Date: Tue, 04 Mar 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741118333
