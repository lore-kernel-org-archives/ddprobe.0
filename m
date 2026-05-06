Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2881F33E35F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778097455; cv=none; b=EnErC+Grs7ytL7Yzbg5e/HFV0sYZNJiE9CvSoBBfBhLcfy1szm3p53+tVPupzPJH8RU0emRkfYCImP7aGKwwRKhbcc+56Axl5z7md7nANPR3Q9Qh1eM5r261miI5WE2klLclE2/GjPsiLj/OZwncQFl0zOTNfoGqwPYK+Du2UzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778097455; c=relaxed/simple;
	bh=fxPAKCrZStb31MLPd9ktP8GWFcKSccVjwWZbfNvytlI=;
	h=To:Subject:From:Message-Id:Date; b=h21aXkgGobQqvNRtshXy/XarWTTUvfaxtFIYWF9NBQyu7g8cuqzEb2i5+0KNR5tjJ+8es/ZYBwb4KlVl15JO2x6Y7SFXfYgQf2fnaS8p7Gf4rH91DfXwKb+3SujHOR0aVx16Or70hxVWZ03Yws8V0ygFiM+90leOix5WgAM/o3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcSZDwqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcSZDwqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10E0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778097454;
	bh=fxPAKCrZStb31MLPd9ktP8GWFcKSccVjwWZbfNvytlI=;
	h=To:Subject:From:Date:From;
	b=qcSZDwqGjMLd2Dnam9vRLZQ8DUkgvej4+JbJ3dmhhfplhlCeSs+gb8mPlGXedbkRs
	 E0aicReCZHH4EqJuVtKZzjcunBEJcMCZ4mEVwZr3dHMctfhIJuN+5YjFCKpzDKJfrG
	 VaYX8iqUfov1r2rFe+UTGqd/QD5TCxvqU8cSOBUnqMufS9QQDP5r63NEftu3stWms1
	 Eo0lCbARO33eJ4yjPMf7jxI9/rBPNtYXdcecSeqh4LqUFXQEe1Viuq8RjbTRkObskU
	 nCFLEAeFTv+o1YYec3CgdaDdkC6YbpixfS95WP3TLY0/lPy8tEbOImW798LdzcaLDW
	 gYxzzhgnSHCgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B186BCD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809745369.9619.9046511550612234923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1106e2ff27b622d2f2aa1ccc5ea772cd3883da4f5fd45486881c1646622336c2
Date: Wed, 06 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778097453
