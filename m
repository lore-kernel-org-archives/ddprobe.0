Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B48231832
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781748394; cv=none; b=R3OfCaUguknfQDYrshs+66aOMr0GlBdRzzxC3bY6Zrz+C+NpeJPyu5AyAqyzo89rG1TeJLfGSI6UZifyqvPMNDHsanXrm4rWzodRmFYsnynSan9d3hICh1siD+3D+YnZ5VMs//OEtdh4ebYcek0FwCcKbtMd131us8bGOA0ey7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781748394; c=relaxed/simple;
	bh=ytt81AWN6sJyufzhhNrC1P5Co8xzcuLJniaJpuJnbGQ=;
	h=To:Subject:From:Message-Id:Date; b=d10cwVm6F4FI4KzBLL+c9rCwWs1SQdeZuocxGtgHgbHemelwhn7Tl0SYt6D1aTdN/z0LnDoL2ijRVcRIJ6nBNB5+1oB96sEFzRZi4Y2L7Ma+z6hXSHh1f4Ti8lxLVAXnRvq9Ta6S6JAZB8SDi5jSr5ae+3Dj4rBygCa6MYyGx28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCPbLpnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCPbLpnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF946C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781748393;
	bh=ytt81AWN6sJyufzhhNrC1P5Co8xzcuLJniaJpuJnbGQ=;
	h=To:Subject:From:Date:From;
	b=LCPbLpnIG22iL58mmoUe2ANep1EvPJgmBUXzUEyoO4jEBhtzkU6QIUmyfTA3JNfSL
	 mPU3LsDSlwUmzrXSG5svkWD0S7hLvHbKApmEqIBimfw8Zpb+MCQhIniEawv1zkyC9v
	 hSy2kVdmiKab5Fn3Md7INHceghPdI8LuuH412hMOL6oj3AfTMD4BXC3oQnkMqM4t6m
	 cjLAxCxSTDCYdeCCBCazWz2u+kVlJXshG300BVv43w4edexyne7uKFhNiK82Nub8Hc
	 c+ugDThBgH+8GAnbwE0tzajRXsSlQzlebgpm7C7y41PuOdKQMK4SDiTyD60enNboFJ
	 KuvmgZPs3+Iqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FFCCD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174839370.10555.4767644034652448291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674f0245a86b55c6e89da5d955fe7a6abc9795467999418c22d6d4d4e8dc22c1
Date: Thu, 18 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781748393
