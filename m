Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108521465A9
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727453154; cv=none; b=h0Jvku2RA8Z/bq72ggv/kbNiH49O7wWzbfQ416wAaI5wGuAKXqwnBpGc45T4ICIm0ADVMxXy03VEIHFTVgheWzT9T/qHlyxlt9N4VO77KHGwzvGBHCzc29aj0dyzCMD0P9y7FYErbbIuNbNp1jB2FtQFKGbTQYSnyE2vLUdzUII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727453154; c=relaxed/simple;
	bh=Lut2ayQc6vnZrJS8r41jRf3mqHOjhJ4WD+kNr7bYX9o=;
	h=To:Subject:From:Message-Id:Date; b=JgVVmbEKP5I0/sLweG+ZbL2/Y0RvxC2BRjlPtnzYytHywpMA4qVXLXB+fkDF3CV+IfkK1Is0SXpqpg2ML4QzR6su54l/G+jjQxc2VRktysfEunhTiQVBwfADOq+fBCmw+YZJHMoS8nIopDynwxS/OXcq9CPoriTk86zFW+ShL1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgoDKVMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgoDKVMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A326BC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727453153;
	bh=Lut2ayQc6vnZrJS8r41jRf3mqHOjhJ4WD+kNr7bYX9o=;
	h=To:Subject:From:Date:From;
	b=YgoDKVMfq3E+dHHBIIFVWnjTsVKeJB9RQgUXag2hf3a0cfKJYF0elipBFUGYdMBPr
	 E9LwKq8SjV2oHM9QQYvtFAkXgPC6iHTg59Bxn5lb/bMWHrDw1K0EVoMZ/xufYt+60a
	 8iKPFxculoY91c+r3FXVl42jogDXGxzW48A1heLzG85e7m2/FG/QLUzeG8+t0Qcuo/
	 cwYsIP8JSackJiISv/UAVKLkPdbOrl1UQRNlgfIYiu5P3VExpLEnbQZ3X6Apqtr6jv
	 hlCVXredMqjd2bA1w95/NaqCjjKF//1sb6G3AaYv6FspN4N91eXh12T4D5ntZSXXZ9
	 q3bMTH6GKc0Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB1CDD1C4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745315358.20511.12452037704264265958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6586be3debab1fd2a02c17db51fe2bedb19e51ac2e1ddd5790e343dd9ce81277
Date: Fri, 27 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727453153
