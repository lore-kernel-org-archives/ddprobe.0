Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2186F182D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769217234; cv=none; b=P+Q/23T84Mrs8aYSp3XtMeRvFwGWuPPJhRxQZYH6ANiHb4fcZnoU1MXb5eyE1PYhrlyhhQrqCvthI0G5CY9qn5xjDoFAlJndDkZDX91WsrXEl1qPvWH/CeDhnvrPLCQ9r0InU4YWhqgkXQpisURNFA5lGpHMhDkzL4fCbFKFHRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769217234; c=relaxed/simple;
	bh=2wrjaLLU5U67tkU6BJYaMCcveBmAuH5YUyORpurn8V4=;
	h=To:Subject:From:Message-Id:Date; b=DM0BDc4pgCRJdCuS6kZn+ykMsFQywov1cESCAcZBeMqQ1zcV0ZVpfC+OwKR3sdJ2QYlHy9k9YbVSuW9F+l/voA4vih7eYAjF+NqUSqC2uEh8GVy/VcCNoaZf0EJ+IaxN8CWWU6gG8RWLpinztT+ldZbSVgELC644s5NBYAaIWy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDAcy+7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDAcy+7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DB6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769217233;
	bh=2wrjaLLU5U67tkU6BJYaMCcveBmAuH5YUyORpurn8V4=;
	h=To:Subject:From:Date:From;
	b=KDAcy+7MAfZz5mXiz9MwOZ2PikwfmCZgyhdftC6n25v/20b2GoEDeGwVrj/93LOv0
	 oWB/aX8Nagt+4WOiHWn/DG8dvariY0zPMY5GhujLzIhs72qpI2rFlfZaJei8eH+CJp
	 MnZUZSodLlGqovs3oa5xloGG59sUmRGfbSIul0IkvhF0dwXvgsC6FD94FjwkRYT60R
	 Bvk+jyJr5aKGKx34fbxN1n5AynaT/fRlM3gsZoJTNbrupOxb0QkEad8SY6Erebmvus
	 TSNNq/VX5MPJkidKlMaCz5XxfBXCXdlKdmBLANmjck3JqTDsgOB+fw3/7PQ9yPkPIU
	 EBJiAxDqkIXCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96071D77898
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921723358.2470.16838781530485353171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6ab7ff13ea100e9d23037594e293b553d8910501f81693f1fc1b49a1641dbc
Date: Sat, 24 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769217233
