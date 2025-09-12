Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233CF2D0C7B
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757708994; cv=none; b=LxNiPrE3FwePR0RIogQxsS38wAcJ58mboaOJzCnKe5Wn3/75EZtEzx+ArVzV3ZwgPaPLbuGkNmCFs4JMTY8eaSHx/Z1g5bW5VDgeg1q43GR5/och+DQJ7RK4V5VEES8KdQYiJhXrUYP8sl1bpA4mpDYl4sVr/eA4zD1zFJv+RLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757708994; c=relaxed/simple;
	bh=JjYo3QlkWih2CsGw5rfKKhWHB1EgxEdUm+cLC3wG79g=;
	h=To:Subject:From:Message-Id:Date; b=vC8EOC3E2wWagi1Of68njkb7WJJsIQfHi7Mf+YWlFLiJNa6LvLAmeeB3ImwLJYI4RvHdTuQEkuXBYcDweU7aoi3V0iJcKa7M6X5ym4LF/ABRTdG2bfv6zPRqjfGLWg6c8+N28jmnUSktRJQjeAoOEuDi39aVdANslP2MNY61gAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ2jg2Dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ2jg2Dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8A5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757708993;
	bh=JjYo3QlkWih2CsGw5rfKKhWHB1EgxEdUm+cLC3wG79g=;
	h=To:Subject:From:Date:From;
	b=GJ2jg2DhCXKrCUZeAWntpUAjMhW6zHXtXA7hUpBI814joBFnTzwb2VNyW+UPOJ16D
	 ze1fhudvszK9o0IOPzO2Q7mU2ZJiYd5vSAUfKYWp4LjufIOVFmgCfoR5fgiSZIPREc
	 kIPNRXE7QDJLWw0VwAj3BhuM6guIVoi+STz89ekhGWsHUWSw9Ch2Kh+LGuNr0oO35Q
	 L2Xz/5tkS+kUMM9Ww92xsPTqJcgw2eaQTYWIUFm/n5kIgPsFU6RAc0LzZVOQKDDV/M
	 6hiR3boXfur2/L6zkQsp/l8SQoAyNfFRMFEZgRQ3dYyIGEbcKvhVdt3j1AlNao1Jwz
	 3C6liqqNnZy0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93172CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770899358.32023.7748207057359910269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c034fc09d954e057351a367d6c0c7bd4be6d1e5773d3fd27882294ce04dcff
Date: Fri, 12 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757708993
