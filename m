Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B856E55B
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752095994; cv=none; b=VoAtXsqOgCL7mrSTlQzduWLqSsuuJNwD9s2mU7pwze9n1NOlTCzvY6/7B6Kuyi/qZp3N/34+UhAJuKruXEJjTu9qH0nPdcpJ+4ExqqO8zIEjHpd5Y2oc1ln/CNDOE1BLeZrX6Ub66PhsLbs2OsjokLBzdmfr2f4Mtn6JqsG2CAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752095994; c=relaxed/simple;
	bh=+MS+54kGZ8YydixrvaOnGtQdL0ijOdTo+x9+8skMhUI=;
	h=To:Subject:From:Message-Id:Date; b=H3ZxB9pWLC/AweQhvq1nHr+vg8MD+Xl28+kUUMwaG7WKTu1jgVSqO/WLMpqpikWFn7yj1eA1Cu3jO1ja/JxFXLlagV+Eplco8+FHGTncDknkeOYtLukE16hwtWNNbbG1xAEPWI8EjweFQnXjokdTLj4gSHV9xv9LgRPh8yFYYR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzZgYgSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzZgYgSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F49C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752095993;
	bh=+MS+54kGZ8YydixrvaOnGtQdL0ijOdTo+x9+8skMhUI=;
	h=To:Subject:From:Date:From;
	b=HzZgYgSQ2zfapKuplK7YMa0Wce4UpsJ4bjTnHPouX+5/ck6O43OGRmnc39JsbESCH
	 AGuBXZT8O7+Hp5Hfh90dWSPdH31Gx3/UZWleDpks84E8YT9duJb2e9u6dSrdgjnjw8
	 T/DU6AWcYFRwpBx3ckRmKOh1vBLk3WBgvZwncPXX0P4OhAq2Cf0KCdD1hY+O01lXsz
	 cQPCSElzS1Xfr1OVdzsUEG/5kXigS2lirKCaquB0x1rqgzl/ZUY6+pwqIY2RJ9/g6f
	 TvmL8xM3u4rVKr/T2tMW0rXBS+lihbqxSOcfVnpcVbU+6uYlkYgKYnceOkvN5nT/mv
	 DCwz4UAhL+cLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D5C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209599357.5107.17095854519590299953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed944ed3b485b4830ae721cb04689369552555daaba6f14519d570434e8c558b
Date: Wed, 09 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752095993
