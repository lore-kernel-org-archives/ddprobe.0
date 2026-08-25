Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16915486631
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787671835; cv=none; b=ZvBFbCm+wYGryEF+5Rdv8RKtRUbBBPnAfONPQOSEJ2/Rl21FnK93hCoJVTh8ZDobdqGnQ/fX4m2/B1aXMXyvMB67atF69pqlcdI52kWlmZUQnsW5SoqeRq2gtuLQcfn25NPUldxgwXgS4dt6LMBa/NBJR2wGsuseH8FW4fiFX6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787671835; c=relaxed/simple;
	bh=PaPM0kzMznty3Elzh8mANX/o+ULABhY5NdyH5KgGXJA=;
	h=To:Subject:From:Message-Id:Date; b=oBwgTvQUCfGF9MSefOK7gMDRAqbPTZFaENerVcYN4ZE71nbK40eu6TcVuiG0eSio3OgSQbHPNzbHuu5fNSyA0+s7rKFAY+e68kzoRSliLkjpNE4I+x3lDkSpK2Y8Esbt6I8o0mQ/zB4tpJ8A1sVPi+KoaQLNVebVVL/IA4706UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPvxLe1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPvxLe1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF825C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787671833;
	bh=PaPM0kzMznty3Elzh8mANX/o+ULABhY5NdyH5KgGXJA=;
	h=To:Subject:From:Date:From;
	b=ZPvxLe1TMvabAmHDr9TRFkW0y7rQdIgnH2zWPRXyMJKYTv2bU4gUfJlEORdEPc1x3
	 47Dpx9A2VrUh8ox6GlVPc8Lcr5q/XfxGTeagaD0y8rZC1aOb99ky2DZtn9IivRtd5M
	 vdTL9gS9c9gH8OmIM1fG4M5dL6sog8Rp2X29Nr1K/YA3H8DqFzdNJ2LlbBAvTWb62i
	 d/UWz7JneM/YGE0zAGS/XF6S2A7Ia09/VSi/qGG5bgA0Ou1BVoYogwNIPHshOqVAve
	 Cqdh5St4/+EsGqjN+yt+3bVjRP+FnL97nuriGge86Y9wUb2Kygnsac89XV3Wcr4MVG
	 cBoZKlkV+QLcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3AAC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767183369.21429.14694752959778614667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74feb94c11be341514eef1ae823b1855eefd6b0b3f51bfa3b4afa71531d8a9a
Date: Tue, 25 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787671833
