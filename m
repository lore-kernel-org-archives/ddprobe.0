Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2713E2206B5
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747696194; cv=none; b=AY0YmMRK76uYWdoC7PIHKO4wbzyTZtvvV2Chp6pL5cxbikAdXd7y/VRi36eURCeTGh/USIFAjuv5Jy3j/Evdt7KMmc9kJ0mizNSDjUQymzZ0dBLav8CcVrJHb7ELvYzvORYMRdMr0lGzwEObatlQxkvXe5KXuEXHlG3IzMPIy+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747696194; c=relaxed/simple;
	bh=hqsCqJyPE8aIlyQJKsEy7ktnjLsG6o63T7jeJIWjPyI=;
	h=To:Subject:From:Message-Id:Date; b=gMt88+CZpr1bedNyxOQSwK/LmU3aynwk9cLYT+pKeVA2NddH01qVEdgh1gM3i14UKQ+P90FFSzgGWJGmPwiGUV/ZBHl/UKrmdwQlGxoJkH5CRk6XgK6YoYtUQBXTgCeDLNSf6Cn5gaEV+JyOSUNh8d1W7DNOs7Z23IY9qwRIytM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ws1jE4YB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ws1jE4YB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F925C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747696193;
	bh=hqsCqJyPE8aIlyQJKsEy7ktnjLsG6o63T7jeJIWjPyI=;
	h=To:Subject:From:Date:From;
	b=Ws1jE4YB9PIhrzcgzrrj9MW2H+vDdE+IEUpGyEBvsxvz8NcEYvpk3Q0m4t5qhwRn6
	 BmDCYWR9RfqNhYP8MiZKytznemjAatDPP/NOKvLWcfZRPPs9GBw9r5orhS6bjjVQGJ
	 wlOitFgvgtYGSIyrbd/tBuVr3PwBITUiW04w+CrlYiocYNG6n15sy4Gyl3dqGFlXzK
	 ejfwTKrOMzWfLR5e5MKhUOXfuWitfgmQIBf0n5yGia0oPMG5OKNHfzhn7TRPaksOEf
	 PRgH8dw6baEgnd0G23oX14AAwa2RCjHTHYEqiJo9Lb69jarK5LxGE95Wgve3XyHlIY
	 Ve0WlMP8GBuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB6CC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769619357.5594.11254570136725135298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba90df23a3355b4d1389b3e6f37a0442f8e75e00208a0f0c12f90cc52482382
Date: Mon, 19 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747696193
