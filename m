Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221D23176F2
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766580234; cv=none; b=Jo/S7ySNfoKYEMZXfQmkHHUIsWr8pP0/wuybzbUFnsDQRCvamlIJinBP1O2uvCSkh37hHpp3Zgoo4AMJbLpPsx/007Ci5p1fGoVhSZ0IN3CbgDlVqJNDrlhnmqUP2l+RCg/XXp2dWL6kOocq4GMm4iRcHtv0UNyjMjXlIotovd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766580234; c=relaxed/simple;
	bh=CfpXUScazUyQ/lAP6LEM0iqxJZeRyoT9YXy7zZesWVo=;
	h=To:Subject:From:Message-Id:Date; b=gM9rJpo7WucnfkmaYaIMnrYt8VLmC0RPQoOGmPFP8YNizfBFIiPe0rjCNxHxPttPJvM1/Mx/r0sS8dcEz30u/SwtaF70QgiMpL3GsuinLCA5aqW4OYfGGwHMhkvUr8s6IcQsTOshx2W8ZbTbvp0aGGNsEaQcsOcJGFUc8XyfDYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd2pTjVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd2pTjVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC5C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766580233;
	bh=CfpXUScazUyQ/lAP6LEM0iqxJZeRyoT9YXy7zZesWVo=;
	h=To:Subject:From:Date:From;
	b=Wd2pTjVX+i5aFz3lGJ9iG2GLfol6oujkzPCc4BeMayrnpjOH7aS5d2VFL4pF0lWhJ
	 ghj8IQ57Qy1mKl7GRXc0bCfrmeWBgplSA5Rw2rX8ALXTWk8Oti0NKXLWIkcu/eK2w1
	 ev14ersGw7R/eO7swECQeFF+7p5+SFczAhrh9gt80d6l9mWrJ9IZ6ugrWqoMLKf8v2
	 Tv5P5UzrjMzXy4hlMhS8f85fGSQC0v6eDm4AUoD2xh+nyVCUiktUkUjLJ6jJmEPxF2
	 uKxp/vCUqjytgOhjIHCcXBCNPRu8gP3OboB26C+HcPHzi7Q5F8IUX4/5QtLC3lNvXI
	 h9yz81KOvtj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91361E7544B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658023358.14095.9291941234674564485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34267fe5ca9677e7133bdb0106d7d829b2425e8bfbec9433002c67e94db483f1
Date: Wed, 24 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766580233
