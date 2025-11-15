Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285D43208
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763165394; cv=none; b=Gd4BHc5nerRAq2TLm00Y0XnLEEHq6KobROSF13W8Cr75JvK7AWV4FOLTDnr6XyWHWTH9UcsevLNrVcBJ9hh4PQ0NN4OhQVnBsyY2iGYxfzr80YgAVbPTuu4EaB38JaDZyCG7CpsWeQNsJ+BH3eZedunhiBFXQhAlRsOiSrOpfJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763165394; c=relaxed/simple;
	bh=GRk0r6K1rcoCHOxV6XfNTqFZhhSy5PJJ8aJAEnEAFY8=;
	h=To:Subject:From:Message-Id:Date; b=LLRrK74B/KwBcINN4qNX3pu3eQOQ07uAFjuGMfYfA77IbY1cFy6A3MRew8cjXRRV3Mqv5VTXmSjVgffFjeF3vksV+PA+o0VkTPOITc4JfTSK7Yiv5nu57+boXbioTjKRnJO1pEb3IEFlQqr8bHqJkzU/a4L0RsC3IPXZSxzJZC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nq2V6J4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nq2V6J4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83F9C19421
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763165393;
	bh=GRk0r6K1rcoCHOxV6XfNTqFZhhSy5PJJ8aJAEnEAFY8=;
	h=To:Subject:From:Date:From;
	b=Nq2V6J4TJVvKF9bh0hXObJIzdwO9nPLPx1/R+nlxvLWbmSNYD54LO+xUxwO7tTsr1
	 7MYUMyo2nSe35sEZ8oqJ1fhLJThXAoijnrqdjv8OrcA7Hau4x3cJAhDVoPApxIZ/Nd
	 oVTLjz7+BPgBqGhmMMY4P8ydTtG6ugXpuZXIw2gez421apCkYctD2SPzu8rgv3L4vs
	 sWt5M1/b7RLaHzGiFkmWvTnf7M0mhY9/dvjrnTMt1k3TOrs4/Pn6MAoiQ4dXtMq1xz
	 MPMB0teWfBYcO7kTcWuZwyFYANafEXwyF2WOVp1Pb/W8vZbvwAbl1yGww8WxJpFnyw
	 7KN9YXHvskbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D07CEACFB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316539360.29253.4967828552324079822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71231d7251e250964be9f154e20f0b0d1232103e76a905579b5b0f9497819ff
Date: Sat, 15 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763165393
