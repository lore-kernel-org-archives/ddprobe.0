Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7AE26D4D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749891594; cv=none; b=njoRJ0/GdSPQSf/Kv2gf3W68U/xM0lhLrDSeCGuvmbBzOW2N+8QpFX35BKvICj/0Gmvn0k+6G2/8w3ug1uIIrmhTqjscPpwJGf0NzYuGRxrYvAsvcT7s2CpXlaxK8hq63V8ZZEjFYqRQZ2bCPjlrM4Na1NEHf+OpzpneLT0YmVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749891594; c=relaxed/simple;
	bh=bfQ3z3co3e0SJI6KPENLFiGc7GtAk5nOaRC+7LqOg7U=;
	h=To:Subject:From:Message-Id:Date; b=WS1KFlxusWU7ba8yYiuD9oR1Wdutr+RuhWJINyG6Rm8ONgT/HUt8H4/ytAP/HDmsehwOe2fwyMrSUDT5TzSdUlFHBx4h8r6bZiFqbU0lQKeH1ZbtdGN/9/JkMs0IAx0mhfh4iXAK2peAR8wK05x2sblwyfvEJ7tx/lCY2xFAI2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lxa7RLIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lxa7RLIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EE1C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749891593;
	bh=bfQ3z3co3e0SJI6KPENLFiGc7GtAk5nOaRC+7LqOg7U=;
	h=To:Subject:From:Date:From;
	b=Lxa7RLIRvWcPC7OvenFt8sr9lTBOv+eJd7aB7wVJR/OO07TU+6651EVwe45sStZHu
	 ChUcfQC3wPVaFWBThq0dPMmAiGFczFMf7+oTkwlf+rt/qmKYF/U72GLbrWpKAkOXz6
	 n6ELZkvxOFOSg7NM4CKF3sdMIdQ68OuGmQuIO433kW1eV57HbLutYs9aohMoEQsgUI
	 JpzQyC9vNt7lxCkhkwPZ/lBlUdPdgPMAFuXW6P7wmeQW4xmqpGKLV+/QqUCbAMrdSi
	 5rvW4CdkVjhGLLLmTAIHPRKQ27XudKVTqOmKcz8S7v5xd++HaWRwejz27l1N3dZCfb
	 efo85/6D/eM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DDC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989159357.25127.3951858376868234027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8337ad3a1c6f796fa75f6b7bdbc29c49036124bceda5baeb2e15f01b5af1a3f2
Date: Sat, 14 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749891593
