Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250543D47BA
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775124934; cv=none; b=OjemWDAxxoDMcOS9e+H3oZCjnWJHdNtnbH3L2j2kZKxANcP6olt1Lhf3PK6C05hrKgeWryoPX6V9CCDQSCmPSj05Ezf1LiQxdXo8Yj3MTJGg+8kIj0j3wGNhGlV5/zS+YEknuE2ycHkerd41bChUSsgeUpnKmOzXGnU8kN3sd4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775124934; c=relaxed/simple;
	bh=9FsMDHBiziWGvzGRnc/S3MVh4grh72eD+3l+St2XrsU=;
	h=To:Subject:From:Message-Id:Date; b=pkf0o0bpYc2+VE/Y3nufDZW6cSbAsQC4RXQ18yS6gja4e0chTBfT2Hc9nTSJxRTW8ks2KM7dFxEm8f1DSiVvSO46zVtf96lcyzEmXN49Ec5zxlN58nmHSqTx8u6D+8/MIxen1D/J7S9Ntk4wK1R1XmycjjHNvT3BkdyiaPQ2CGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvhmbwJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvhmbwJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE887C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775124933;
	bh=9FsMDHBiziWGvzGRnc/S3MVh4grh72eD+3l+St2XrsU=;
	h=To:Subject:From:Date:From;
	b=BvhmbwJGF1MeMO9uuFWsx+pWL8N+Ep58wPHgOAijG36unbutQR4TaJqBtnGXJf7YA
	 HsErrQf3rlmiiw++Tk5dRmiJuFu7wWuE84hUB9iFr4rzo2rMPGeYLh87SwhsEW1UUa
	 fXBrDGxNHfYcQFuYb1Gc+WOT9OxQV7oUz3onHiJNSERT2BHc/5DnK67jHe4ReJT+DS
	 OVOl0XV7p8nnuyJkA5tnpOYsUlVS7CQ/N28ZUvz1ZCr7c98iBlPTjOupU0VcqmSLHo
	 2D3AdNN+pY1iajO22AZwzwsnW/Hl/FGH0DU0PGSKdSnXtjW+lnzytntwPAT5jjMQy6
	 mfjg5Tb/mO3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6A9D39406
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512493369.4327.15228639467750647027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdba5320574fec7f27b5744dacddeaefb7e9334fd3eddfbc86ba3f59bcc25bcb
Date: Thu, 02 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775124933
