Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248FF74BE1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782038194; cv=none; b=jGnKqHyrj/NVuwgmuyBgrBm6Zwb5IepzLC3qfAYEgoApMwZgbHRxkHEd3P6JADLKKgk44Qe0e5Mq9cPNEFL/xLUMQq4uUF5Ns+tAsFUqOQanmBmAmreTjCmcHxPpcf4wHC/vVGoR5epp+HzveHHyYDoK/ODX7U1RSCoRaY0dw0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782038194; c=relaxed/simple;
	bh=a782oMqgtqdYQ5aZmBj9jUkuUbLs07SP8d2WKB/wrgE=;
	h=To:Subject:From:Message-Id:Date; b=kmFfumri2KFfsjKkzThKVTZglGA/tF8DwdYth/Y4dt4VEaLFQXQZVZcL3Xgr88tKk1anQ6trmM8ao2t6PsO2CxYZjYTWsCpq39CzUKHQA70HOYjHiPhBq2ZVxHGi+GiMCoSz6z113PoScgVT9LMYvBOXkEgvXhNaE7r7Mf60afI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBjo2yoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBjo2yoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA87C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782038193;
	bh=a782oMqgtqdYQ5aZmBj9jUkuUbLs07SP8d2WKB/wrgE=;
	h=To:Subject:From:Date:From;
	b=lBjo2yoMPgJlLAPg8p0HMSICkOXqLwAfueRUnFBkNgZmy9+AI8uo0xSmypAun2DsN
	 AlgsrItw3nxnZkqU2vPNKFv+B0v3BXkau2Zxf3L/U22bknKltRz04GRiaGlZ6WqpjJ
	 +AY0t07qhONlHP/QXoylcyRWSMBi9UUQmsF07A2e+swMCHsmLH7qm90l1fo0hHhN7h
	 1UVpTuueBkbzfJusPVJrEHmEGxGYyI6e2XQFQMuVeIjqgQLlT4baAE6I3tlYA2EArg
	 prcMz4u/uffIj7m/auz3JRKsV5SUid/Tvm9cEVQiJshc3sVLHugIWkC0AxCozquSgT
	 S/ounswKaMmrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC0ECD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203819370.27169.8667796100358479544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be62d906641428a169a53ae7485166ff4d7d69566089e4b5b4005c5c7ed1a272
Date: Sun, 21 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782038193
