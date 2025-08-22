Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2793057C9F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755824994; cv=none; b=WZA82+2P19H4rUt2MqBNcTGYh2s9qPJu7aGotGJNIJYf5lORWDkx+bxDwqRMlJA8vCS/M/YyKCodbguEqLf6IZeEnIIcp8DD9yn+t3DvxvoPZ7gnDfQ6d47JVhhCLU+61jz9UgeuLdzw1tpjuJCEq+B4tcaDVpSy43hhk2RfHNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755824994; c=relaxed/simple;
	bh=GKzJmXxYQng8LzDSnLAHbmRKGlp2R85RzZ0WxyRyQa8=;
	h=To:Subject:From:Message-Id:Date; b=BWXbcGEZtJRdGzfKTeTHK2U/Xj8Vk2fCPUYXl+V5MxVn7/T7+pC936WVUiwKWX/xHejNEkwMPWurQsD0Uuh37062izQF/m4GZLM+dhfqQ1LYvMMW9BEwRzfqQLdPR44Jexpdt8SsSx2w2RojEij7sZPhljX23TIQnWVp6W3Pndk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeFevmpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeFevmpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755824993;
	bh=GKzJmXxYQng8LzDSnLAHbmRKGlp2R85RzZ0WxyRyQa8=;
	h=To:Subject:From:Date:From;
	b=HeFevmpDg/OQvMEi2KmJTE6PoYodv6w7xDPpN/KwTWdmZTNcgVSv2rOoh0yqBs8mN
	 N4zDv3br0+CrgnFaucHdKou054jAyM05fB4ODXDVWsPykhxewJSFJAVu2SO0F2Ck7M
	 zWUrNbtYMZdO7JJtHTEd7RWn6HFIdxqXSgSTaV4C/zyPicPsq2jSQXC6Mp6MOMoBsf
	 c7dlP3Iedo+CFXylSFNTgeim/u2UOAqj75+B2oDiUb/4DC3SJmJvNMlVae3eSdfuJW
	 fCIT5yCi0Ww3feYEU0uYsiB7rRdbuu6wr/hFHOS1p4uUQXqM73d2CVYgiZP3ixBVhD
	 PdSLXLNWsY8Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C95CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582499357.9152.12959016241030071175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1bc0281f6fed1ba253134dee72ab394829b11e573e3421945511298e8f56197
Date: Fri, 22 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755824993
