Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443A8242D78
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764642174; cv=none; b=ALwCl57aquy5ae4V4aS7UA7M4Bco0080Q7PG9yTR9S5cylHI5nPjQUg/MtmoLW1gdxYXzfG8W6Y/1Rv2YdcumKrb/rSMm9+u0aCqnBFYwU2+vUaZmo6KacZTtdwYDSY5SjHW7ugYWZBv4KRZ/qCKLhhToiMTGhp71dvagH6IYDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764642174; c=relaxed/simple;
	bh=UX9N/FruXkVrxtwmKNSuzXQupE82TxP1Oh8YtBtv45E=;
	h=To:Subject:From:Message-Id:Date; b=nxTD9k7z460jjZ1UHYIIo50RPv2HvxvTHh0eM8x/ZyPzL++6BPnDpuMo5CjPwGaYsBfCEiqq+B4fUJRl0KVWn894pk+8DilSzfd8rPSHTG+TTkyUkUDfsx2oh8+kUG0YRWwdAiHFBHaUgtv16aEhYIKmSw4Z5yWAF1HrTr5EZos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrzH+tAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrzH+tAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8026C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764642173;
	bh=UX9N/FruXkVrxtwmKNSuzXQupE82TxP1Oh8YtBtv45E=;
	h=To:Subject:From:Date:From;
	b=rrzH+tAkEdeygGnPWQzJK40I5FsnnMC1sVP7/3ApJUPDgXXjf8CI2RBkG8pTl7kv2
	 h+ynw5BeP2MCUcl+bZrQf1yRxDRLA//DnZXXG9MTEQ599daTR2LgNrC2Co35Y161V2
	 WUXrhagCpaVycG4+trrnT9oldL8vRHXbY1JY7tFO762JV5/LJHZLlw2UHzrcYf3RLG
	 LuF70qYvkEG3OjgKnoKPJFvqVFGBsEJKz3NJ4NN7fk2vpX+kAtWJYddf9xd47ZkFQ5
	 Q1bBNoow3i3/FTOa0R4GPwUf4p1EAa6qjFMPK3ZXBWTf6LJ9Hesj71TxcsQzWvNJ+M
	 MwBWsUwDuHtjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C97D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464217359.15748.16044349859215284314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abbc76574e54dd079a0f5a1b65d115c60aa77d07534919c3b8f86864445796a
Date: Tue, 02 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764642173
