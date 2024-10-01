Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5627AA5F
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727751354; cv=none; b=Z2SHymPkaYs8s8RcM/oPRSqOS1qU2XubbDmbouwohrKO1lT7hLeaONoL/46CmUNbB+BR6H3ldgQ/fJs2QhIhuBroIjWLpT2uXQksdL5eCyzmsBx/cpj1FpnZELT/ftlMr7LVwjyPiEov0/e2xg/s0n81WE1bkPO4iR58nPXs9rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727751354; c=relaxed/simple;
	bh=s1+/sNW0ZImi/qDFJZaLXW2SyQ8SJYY1FfENsMDG61g=;
	h=To:Subject:From:Message-Id:Date; b=cURgaao+c0Zp6bRR43wak59X7Hz82u8UDV/jCBuzBlX0ZazcnRuyA+OECBYlTNhjL2NnRULwu4H+yjyOJXfPYorycpGRaJyeL5ZVW4ssiD6Z4gPg3x+bi2CAVYird4A0HBobbj0trRiR/05PpJBvkarjryEAoFRima2RC2bKmHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riYl30z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riYl30z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CE0C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727751353;
	bh=s1+/sNW0ZImi/qDFJZaLXW2SyQ8SJYY1FfENsMDG61g=;
	h=To:Subject:From:Date:From;
	b=riYl30z5ZiXsCDA1oPOe01MKVhZTv2vQqxv/3RCmkGICwXNwD/CIVzWuXnvLyI4xf
	 xPs6b7FbAasbw3Gb9zYKHPptYJNORo5VKqCB3Pb/xFweRRUh4cD67A79iiDt3BpYcW
	 FxcLWnkRps/GYBZ4c11PxKbsk8FY4J5rqo9NcM2f0LCY89pI9wgBI0KoYF433RTEGe
	 mnLY+vNu0n+iQ1s+yIdVnLKfyeKzwvZNqDSpewkOAGijUpx4oTZf2ulK+0ljyjZhN1
	 czNz2pxNTaa8Tu4u/NQYTJkFmf5uemWxgHx42bidi7spn8hC3Fd6wwpwgXSe/GtD7n
	 Iso+Q4OA52iOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A552ECEB2DB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775135366.2024.10384440164951028842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1507f9d961e0f02dd6d828e7188d1a48afc09a76c63be00dadd715692bf99ec1
Date: Tue, 01 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727751353
