Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D38A83CC1
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732780554; cv=none; b=GUyAEo7UJcEdAIRCo+tV+//p1ZXBVRYrN5jNco4K3dAxqcZIhHOBTJ/eGFqzxFi2c5MoJitoXpE5WWBdpWpRAEAJOlZ5kuAN+vjIzYn/nWlfeCyKd0ebK+wFuecyhwHDRvgzC1eiCkjeuiYcGFQgpO41tBPzMc/qqZhrsqtf/NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732780554; c=relaxed/simple;
	bh=KKpudJa9ishT17qROqWD6zl1zmczOOAwzEVyCdKSvZY=;
	h=To:Subject:From:Message-Id:Date; b=vF0DdpuPxU4yn9dyjktfoocjlUsCoFGHjB3FttEeOhvq7IfroGY++tAq7CihaiZ4tJpOH8mO4lfLnAfsTayUvTHaxEY9y9At0a+NtuGkqcr+VZ8dFLvNk1J4ZOFVV+gdD+InQqkDein5feUcD8U5HT94BOuW67Vt3noFGUEJgZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLeTo+Rq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLeTo+Rq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79FDC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732780553;
	bh=KKpudJa9ishT17qROqWD6zl1zmczOOAwzEVyCdKSvZY=;
	h=To:Subject:From:Date:From;
	b=NLeTo+RquW0O/9b797s9C1W9mVYnrNs8VYBPYw3kJT76adCMRW0TAIbLlVNnmBZjw
	 kOUD8puylXgWzmqBZrMNie6wXWTs4n3L2R+57Uk9XXztZBfjEQQdtEEpGCImLKXgsy
	 X+j5SyxKQ3d5rn5RWn3fzZv/Naz5mmcg1P+lj9x0cUD3AwInJ26dbzfecIxhPXWmy1
	 U9Q0SCHl0iK1F5OyY5tTCIxNWKOr8/PIy2DWLKYuuQQqR/MKJMwW9GX1DRXFzfh6Fa
	 VL03VAKDXsG7G69LAcWiFk5KCwjkwUWRJCz0L1ifzAirVgOO+s+V+xD5mFqW10WdYN
	 5qcmuaPYo7DUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E2ED690E4
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278055359.28679.9791577440706855247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b3d8195cfd781453bc6ee3a6fb54c504193d9d20f85f3381d6d8d3da918ca3
Date: Thu, 28 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732780553
