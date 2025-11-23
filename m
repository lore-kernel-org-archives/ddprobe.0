Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A9E242D7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763935314; cv=none; b=uj4IB4/GnZQkTxDR50U0/s+O264+pNp907DAQMZ75bSDPAPPqBwfBH7tWl9aikgFThvoxyJFan4f7M9Il6aFS1sgK2sofPZRYF2hA3MVyEiRPWlI2xMR2CMUo9VF9R1R7DG6G/+TfYdEqutESSAIcEk2+z2JztZ6H07DcBUSKXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763935314; c=relaxed/simple;
	bh=RgiOLYv1T9A7Cd9gbAdifqtL1EvigHnw7QOeamirzas=;
	h=To:Subject:From:Message-Id:Date; b=QJbvuFQOnR1Y19rMNHNPzgXFAngPyqSJ7RQjF+gBdckEn6N3GdgZyHD3hocR2umuxGD91mrTE0zMvKSUY6rS1X6LBAq+EoczCD+XO6g+duK8xrq+U3/Hq59lFrX/sp7khmJQfLPOFHD7j11eUmMbwPiduoyT6z1MUww2evBQG0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itJI3MqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itJI3MqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD034C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763935313;
	bh=RgiOLYv1T9A7Cd9gbAdifqtL1EvigHnw7QOeamirzas=;
	h=To:Subject:From:Date:From;
	b=itJI3MqC/2IcypYR5c8ktpQ1KuOPJRbLEUQEL19isbuALHyl44GNfT6OxKOv1W0Qq
	 V9vBR6PllD5KxV8l0oTX1+gKLWIVeyQ4eS4eAVSDFNrMOQm+O0vWrVLyPYpdCmCn8W
	 Suf159ZqoIJda10YHNZrOtKf4UWPj+Lz6eFHSw/xQkpUbrDgjVr99mxDOf1ChzOGR2
	 /kRAAKASAfocDk+SvClYyDYxv/OqB9auuEdYscDix+p2o4stjJPky64hUoDvu3mLtd
	 +BefHr16YRyNSq2E/wWhwUtSqcAZRhupY+A9F9PpReLPbd/mbfCVkGCgZ5tH6D48J+
	 3b10D5LVy3RvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96503CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393531359.3672.16538769882563167672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26296adef2491a7bfb87ea17477d97dcd7d4451f880e212df8eb7e4fdde9066
Date: Sun, 23 Nov 2025 22:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763935313
