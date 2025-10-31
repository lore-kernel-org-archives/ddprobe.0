Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD62155C97
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761879594; cv=none; b=oD1ERm7Coi7RN4fSmDcNh0/PM52kb4Losy8iyn/cS0QGZ94LCava6s8AFmNdH211cs49FZCBBXoGJB6GF9JAYrntrwyUFCgSs8yYfGNa+MX5ssWsqUZC1W2Mg+ejjzjUVdm1nXFBUqJDzUtCemTcvbzDYEUPV4CsFir5MySe3V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761879594; c=relaxed/simple;
	bh=I0fSpRQ37O+KreRh7tikhT8uyV0ObAB4o+1YaHaKdMk=;
	h=To:Subject:From:Message-Id:Date; b=dqWO9calIMmfWUzMBLGQfEJ0pmfTLb7hkdcBURlnHnAje++zgb23Fh255t8k4w+p+1BTgTe/3siHfsN7+vmOOZjXAfUJtkoQCIUJhjloAUq/Mf9vWtSAIcxyq6paVS7LquCSxfoebsfyPT4qGT3TV/WheUhQ2lfrk1NqOX7aqpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmWZiaOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmWZiaOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDE7C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761879593;
	bh=I0fSpRQ37O+KreRh7tikhT8uyV0ObAB4o+1YaHaKdMk=;
	h=To:Subject:From:Date:From;
	b=TmWZiaOVzOVONLUdOHDVUYyffMvb+zVNODfLgKD8OkbjG98EmN653LD8jEZJixISh
	 5u+cWOon0PKfpvNhf0ToCh+D3+5KgczjXobjVS2ASB9r+jNiwIwYeF2g2hrvIqJeKD
	 go0teP+x7ZmzBYm0B6My2gatmDRalOCOc0R8o8cnLHLFOR7hgycDMkU1KM5tFvsdgN
	 azpuV6gfrBc7g1V6KdpGKYQJueKJIW5l452AHJ89YPZCJw1E0fcxRAvp9n2cnoiX1F
	 u18T3Qd5oXDWV85ddEFypfyAskv7aNjrp6ht+btSWFInX3J6jTjsJVnyQKq9KDMc9t
	 sr3r0hlSCp9/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA98CCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187959358.22010.292244346100646249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806699f07b6c241ef44c8d74fa3f56a7037b334c8a8463ac67b4cf8a2cbfed6b
Date: Fri, 31 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761879593
