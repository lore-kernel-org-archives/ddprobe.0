Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D723002D8
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776082654; cv=none; b=UQ80hb4iXpSQx8NNPV19kihjgRcJol02aX54EA4kZ2KIrrUtCyercC67Mgxp7GhqSzMWA0pGIODe78wP8zsSPNrbLqeMxP9B4RyG0eGiplj6iNwnCrbAPLkrVx1qjHhPxM4Tjt2TVIlrgZi35Meah1NcUOVfJz1LsexnxoAeDGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776082654; c=relaxed/simple;
	bh=N/fW1Hh1oXBG3Ph5G9m+pO6P/VSviL+9TnDmr/viLtA=;
	h=To:Subject:From:Message-Id:Date; b=CbTDhIJ232xaS753N5u1Yb07B77crJ25TPKxJOqZhGfEEiuFCDnx7RP7ig9r0nkkLe6Ognr+ymqOK0VU8jpG4UiUGelMM/K1BY01rp9xM3u1RcPVMWN7Up2DXHDgh0k/VK6mV0st00+TQgbN33ezTmWZxbEz26Q0RPcb6+P0XE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljdLZk6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljdLZk6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DAAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776082653;
	bh=N/fW1Hh1oXBG3Ph5G9m+pO6P/VSviL+9TnDmr/viLtA=;
	h=To:Subject:From:Date:From;
	b=ljdLZk6EieOzFLrvimde3Y30grVUofzLonAq01ku4HyObwr0MWMc6c7DBZs6rGryv
	 7Q0KQKleRrtYthw9DNoq/A6EYFI////r23/TYew44dKDWy5GPU9KjsGj7QGf+FR2Is
	 9CTQMm96+wTSbE2szJ+Ne3Pt0rGF9NLWSlIgwqBjGMKksxm371tTbvDh21M8TLR4K1
	 TgjYTkBGpjTiFSmW6lAeIVMQcIU62Zzx5IpA3QUH/U4EkIG+ApAcn5LO0WSZvP1aLF
	 ugM/Tflsy6j4FHM4sjS1im92EhOBaP4GuvsPNOSfsUKog1BhuFMOduc70PLUZeh/yi
	 Bm6bczl8kWaow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A961DF34C47
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608265368.12795.14989665443430083999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf733708854121f2fc22567aa480dec030790fed561c5d5dc52a93dc0deb8fc
Date: Mon, 13 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776082653
