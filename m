Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212F51C861A
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765139574; cv=none; b=hSfp69D/b9KSGGA9OzTtLWLvqCGM0d/Ktt4k6CAkPru12N31UqavB1ZKFT7DTVLFL/0IqmUGsJuv3QIXiGZozlB9StWtzyCY5CNEi+qC81wzdHhVV+wx2VO29MmUvTOBZhcomoRqEc1V72Tx2UmBoupfZOx0KO63fcMisWP0jYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765139574; c=relaxed/simple;
	bh=RyihaCoAByxJP8yhNAVMVrqUu7XA0TgbE2984g/9rq8=;
	h=To:Subject:From:Message-Id:Date; b=AT3INrWtU4B5HScVLXmtqOKWnPQ7ZAYWp/EmEuJcmysKbiPTgpwdgAMbK953YnXCLdXW4i1y5bc2pwm0GpjYHkyryq7SGbHq6gOQLgnit66mx9XiI+oDeynp4P3v+pv3Q3yMGMXHi6ld4O1wSmMvV8G7EMwiaRKhquF0whUrbAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxX85AKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxX85AKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5858C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765139573;
	bh=RyihaCoAByxJP8yhNAVMVrqUu7XA0TgbE2984g/9rq8=;
	h=To:Subject:From:Date:From;
	b=RxX85AKNU0yCSXAnlDS/D8Oo6ILMQW8UcKVmCHci1opp1/3Mzm2clQ+EzKCe0yDD2
	 2YLgsH2JmTSZ0+Srp24Roui5UrgO9UHd4BWrwKgxsIr058+7k2X0hZhPuB7PTTxgMH
	 GJg5FX9mRscONF8r6oXpiu6kBfmfQxfdkIyhhls844s+83bjnVCSdfGgj/hcrCG2qX
	 VsyPZn5XV9CdPQ8tGhx8PcmNvcS0b5pOPRK/9QZL1KEMqQbN2sNxi849GHkVqZTZDV
	 FXiK43GqfbkDJuZUabQAyQP3JPoSs+qVCTGJLiaKQuPpt0s1DqDWL7/Ew16FiK6wN1
	 wOyhxKbGlGMxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DEED2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513957358.16390.8111543361420488253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ccff61f8c300e8df7b7d4378bfd592d0d76c014e0e40fc9e0dec295a6f5b792
Date: Sun, 07 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765139573
