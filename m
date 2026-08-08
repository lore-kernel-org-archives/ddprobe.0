Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E371E260C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786201234; cv=none; b=IJGmheBYqaZ9BG3P6EeSQFULyMFK5VLRIqaXnokl56egc7rdHtnMTs/wpx/NeSoGpqC8Btodb7FX1ZmkQO0LGN4pkOZsPT3SV8SNDRW62fhtUZuEGCwKadyLkfVSvsfWMUJC5HlQo77qcP5l5cYKFxNS05wTAkfy/mIru0oIDvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786201234; c=relaxed/simple;
	bh=agob1N3YgbDAA3z6p53Vgw3A0a2+wc3yjEdoj+qPdgU=;
	h=To:Subject:From:Message-Id:Date; b=QlIigMoMmATg/gcCPvNxDIENtK8ASZhiHJ8rGRiNzoFHyj75luE0KbcRy9rm3WIh5XGPF+qsUB25OL65H/YOSj5tDU2l/NNurNIoPz937VKb6Eo1E96m6UnfOExiHQymwC5XJ+Ig+HNxyRMrWsc0LspRu0EpRekFtueZO+vER0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSRigVqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSRigVqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C2DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786201233;
	bh=agob1N3YgbDAA3z6p53Vgw3A0a2+wc3yjEdoj+qPdgU=;
	h=To:Subject:From:Date:From;
	b=YSRigVqBlX5zO/tAqnqYBjOpZiY7NxnBtr4EcKEZvJoPNGnRB6QwETvBBq/TcRycO
	 b52GMoAQj/4muAhPmj/yKsOH4CIwPVXf+IDIwe1k7E9jvY91MqZlX9wrPg5H3Xuw/x
	 4U1bbySoubqauAz6lYhaW6ZyZT7GdDyuKAXUIaoMumZd6+1naMYsutTtYBUiTf0QL2
	 logC4E6bV22V0tmOf/FSaMopVLLdeBwAb6KT1E24+VAlEBumAJWZuimIQxN7muNGAs
	 8ZpnEUhVQIHJA3kPplPl49YGF4ITC7+8TYNBRxAGONrkKlNtNrGUW23tQg1NtfsJzy
	 z9lMv2vWhuoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A2C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620123369.24916.6806588901493880478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52085b4a1430742b2dcac5ca0f1ff096e7f98b715a75012e41d0f1fc28b5753
Date: Sat, 08 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786201233
