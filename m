Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28001381B11
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774544094; cv=none; b=MY/oyGfOrqAmL+NJb8+5RDwpUdcn5F/BCCGLpX4/WmcOT8+BUd5q68BjcQKGEtmrlKLOGjOBe8oLyYC//Uhik4CEPx9Y3Rtsl6R42HLmMN1hlI4X9ejnPAxAXqUg3PHwdsPj9PfB/fG96kYqN4AQB40dqVnwQwtvsnr883tzpWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774544094; c=relaxed/simple;
	bh=pa1L2S0u/0ajAvX/I3k9sr8sVh1e2VRLSVX4xYxuSKk=;
	h=To:Subject:From:Message-Id:Date; b=bJ8S9Dhh0s0aakmeW52Laa0u2XXWpzdde4ebTgkNWmsmS1uz0jdZfjYhUVGHatkwJw6BhbmOOCRG2bpW/47OZz2n4uiVkCyCiC2KJLDNmdHcpc5UiJkCjGs6ywb/PccznE1kVM6Ui8lFJgQYjpL0UOEdRkONPm4gUzNZo6zvYVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQc2x1gR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQc2x1gR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774544093;
	bh=pa1L2S0u/0ajAvX/I3k9sr8sVh1e2VRLSVX4xYxuSKk=;
	h=To:Subject:From:Date:From;
	b=iQc2x1gRSfjFsh6UmezHctJj96XfUUJB0bw2QAQ+bxO5q4NADGvYf45v0f89lp51C
	 vpEj1tjNoyAv4J4UNknoiB5z+OSTVvAY/tWb1kpWKb9Bn0Prb6cNI06NxfmMDCJk1G
	 iAf2fmO++xGUXKDgb7Ac5A88Jg0hO2028Y53eekdVX2Vy5TrEY6SYkgwSrY1TN8TH0
	 lQe6NsPOvxGhozuLxcsh7CDUEzKizJNvrwJb3leZI8HKHQl7MZp56ocdXxI7bgZH/l
	 8zN82hiFxh9NXT3gIvR6QBG7/M6WlnR3bAFQDFb4K+7kCahwd2WbX6EaQ2jwlXLEGv
	 CX+Lae/UewqpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C510A88E6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454409358.17371.55596613514197506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dce2fd9e998aaffdd45cf4e0c43a8aa12010853d5add0f036e603e360f8159
Date: Thu, 26 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774544093
