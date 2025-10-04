Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D98378F29
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759540794; cv=none; b=mQTy2kzAx63xU7vAsPseRUu8nNEYYmMtoIQf9oVGdhw9C652orJn2XMrteCzn1DFBu0m1gF4+1Pgzc2kif4L3/ekt6ATVzBh2Hm4NMhW0kr3IX7b1+IdHbuMMo9Emp47Qn4VqFvSVyuqBLBc0ULY5QE47aadXOfh4zDvX6Rs4U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759540794; c=relaxed/simple;
	bh=WKJurMsiwK0XwrR/7+1RNT9CAHmDt5l6dlZJOvPZc6s=;
	h=To:Subject:From:Message-Id:Date; b=U2whnwi3U+k6nEetV5qSU9hJ8P9Qf8c/Y6Jo/m5vdnDixxiMdQ7C1rNIG2PlqsgRxsivQS6nd1M2wZMZgozTF5wtyEOWATmdghf7MHhk53gH6yVqdBQvYSTYUHwxxxSfGkkuy7GRCPTwPiumpJEdR7evR7Nfe3PBDAv+4gBLA7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFNRjEIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFNRjEIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA099C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759540793;
	bh=WKJurMsiwK0XwrR/7+1RNT9CAHmDt5l6dlZJOvPZc6s=;
	h=To:Subject:From:Date:From;
	b=aFNRjEIo7Q3wHUZasf23xdMCLjVY7QlzPxFg8+eQg5vDcw7VXvhAbV9oE+zc8Lahb
	 rbQ956UdTIUKKFyUywT/AkjmDpkpgM8TMtRPv0vW4D9CfVRj1voLqIxfnCZGBe+KF6
	 GJQP2LyX3KjvzRCezd4BgJYuYguQS5npuZW83lerZ0RKzTgW17UJZPHg7/utZw66hM
	 o+AAr7K/UjARPewsi0YF91PzwyTbSZDyHetnQ19wLg4/Yo9Pd9sxRWZpl3HIi4xa+f
	 w6xmVV4c1jneXg/6vLd4s+pHjClBbXaE2Tz3YQZAGXdVbOxjRf/sBdZ6ZdBG8BzPAZ
	 olhsbPTIto+XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96059CCA471
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954079358.8231.4223600409043057445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ed037872878edf19f69963b1b43b16b6396cbaeb373c7a2a55360da29bacfa
Date: Sat, 04 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759540793
