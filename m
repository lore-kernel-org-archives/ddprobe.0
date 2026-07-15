Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530C41F192E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784090914; cv=none; b=JkLQAVKj77KNedN23RcQvcK0Pypfa6jyRA45wPpcryQjvrmBLe40UNlHkF2hQwdYIYEtZfdYFkHhnFoCCHn4mS1TZtuMHJr4uHdj3EYbEEslTQkFiCDHH4+9XjIkoWoqjZMwy+/42RqdCEHOsw325lZYv25H1RgAoQTUmR3g0GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784090914; c=relaxed/simple;
	bh=wMKRMhtCU5aT3HTpugQeEP9kyMRZxU+kIcb82jIWrPc=;
	h=To:Subject:From:Message-Id:Date; b=NPtlwueA4ffF235gQq6Ym0K83BFbVgrFHFwpqIQx4Ah2cvB2x2xOMkEuzx7HAFl2Wn48kWZa5vA8TgdNKIFuFAubhxtMYEJopRJNZCgcgZf5nHMKEjjwkLgyrnHOLA+mVsuraHcZsobRYXa4iYeMJxLTwqzGEdnCSEwgtRwlK+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sH9Rr+Wj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sH9Rr+Wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD0BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784090913;
	bh=wMKRMhtCU5aT3HTpugQeEP9kyMRZxU+kIcb82jIWrPc=;
	h=To:Subject:From:Date:From;
	b=sH9Rr+WjvFk1JfFRxchAOTSL3Ta/gqkxmH+X7QElkTX4KiOAt9M0PBqiXbXgTnBVz
	 K3I0HC3J1MvYXtvpgbCycGkUctoR1uGHguiJluBJKn0tzlzb643TsF5oafNG28rHfN
	 NAKhJp1Q57aB/is4a6J4+i+ajEpEUROjvMPMigtpaAYhltK78TWrvGzJBpxXPruWbO
	 HBGiGUYwRST3qRx9qBx9+5KWk0+4UVBPzeGco1neHQPITYK4LWWz6Xv7Sv/p12KPTs
	 RbaiMK50tkd/jwWNP7aBSJvBJ0aukNSv+2dxaukOmHxtv/jAX2MECCPw3EaefL+zsG
	 CO5+kgpCpjWzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89ACC4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409091368.21646.18078119855112348338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4f1cf518a7b5e3225a93bda7add179407cf5e24d018fde57c1a0ed1a7b484b
Date: Wed, 15 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784090913
