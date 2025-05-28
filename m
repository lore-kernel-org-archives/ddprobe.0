Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317C1286D42
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748437194; cv=none; b=PFtyn1hFgQFGPWT0uxc6Aymx1Eojf0gBPZQUkEDiSyh85WI0kF8MoZAgfj9Y7sbN/VR5Yffyk+qQlr1gALtpVqIPccr8Z+0SVqpUrLPSk1IocziXqTikUcEfun4ClPpRwg40d67/J06JrWUWmiBDC62v3CUJDCsf/pZsbVzebZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748437194; c=relaxed/simple;
	bh=Km3PJj+UNluhz3CLPNJvVWgT++DCUYvj1rD7/mMHA60=;
	h=To:Subject:From:Message-Id:Date; b=Dx/ZqUmgjPsgwFAlUYDpQkrmHsqcyYNuRZLjWf65Ibmh+b+zf2lrd1+TDSymwfnruG/BQPg3UHErE8TBIX620/wVEeyPkvjb750JHTTJz6fkhSwmrHEkkVaI/OcOrTkto+EirbWz+TVZ0P1PJltNrki8DnQ8SiTTdZ0z5QwI0jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubzKJnO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubzKJnO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3A0C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748437193;
	bh=Km3PJj+UNluhz3CLPNJvVWgT++DCUYvj1rD7/mMHA60=;
	h=To:Subject:From:Date:From;
	b=ubzKJnO1wtXbgYdrjW+3YNRk4jYtq/fe/vPeJyKfz9e26SYajZMAyBdtxT/ghuupo
	 26oZhYs5avJjFq3BZO08nRDb45Wwjw/zHUSIbnL6bJaYdAeXNox0QKgcH69fkyCPMC
	 U4PvVJ60o0n6Agt0ntA4ZyNo6utfbKkmj8gMC5uqguRCaViQSwDKH7mH2AYVunjbxD
	 K5x2732/Qmt1Znxjp2gy70ycrOyOGvdyQ3xhBsglCZSdrNNwAwA+s6OeggLXoYZrKT
	 76iRWK4hoo78+f5m2v1SNZ86hM6KojSnWUwkiMjXk/zBfiZzryqHvLtouGWocExhVK
	 KRYG1UVsUjS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FCC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843719357.24636.11723805114643925747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869f15590ae4fa1e207081205cc51193c59bd6124ca2aed41a4f3ea7bc6cf727
Date: Wed, 28 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748437193
