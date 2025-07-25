Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E3E7080D
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753463395; cv=none; b=rw6Y+FetGy0brYWHUHApoj5XirrYrgFceMcHxd6y1zxLSl8nEpTzSPqfvs1bDfugodxhLmjIOyK9CEErB+VXeVvrddZmly9nAGlLf2ukC63MOzFLYXR6f6nbzWCYkR2C5QcSTPnhaMz7XtB4RcSLICMjUAxTcmYFQeWdcvDUCoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753463395; c=relaxed/simple;
	bh=f2aAU2mmzjDpFGVtY2AOwOOeteg7aDx4wbb0I3ARz5k=;
	h=To:Subject:From:Message-Id:Date; b=RSjMytPi1LuKZzmDDy7rBnCOZcB8wkRAOpVNk0iz1B/tsgZAz/NqqCX4omASeLgQdJFPW7xQsGTcq1Aiz/5aKN6G3bht6lCSoYQbHqJg1wjd6FtrBTHU6fMR8jkkCIgsgjNhirVJQkL/eS2Yx/AHhq6aWJMJEJ+xtmfx6NdO8fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMq08lWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMq08lWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33ECC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753463393;
	bh=f2aAU2mmzjDpFGVtY2AOwOOeteg7aDx4wbb0I3ARz5k=;
	h=To:Subject:From:Date:From;
	b=IMq08lWi+sIvI2PJmaEE7vsehgNnD2c5km+LH32vl223LM0TUQgupuKFvNhzijqnz
	 oUmAE8VUIkX4Icnchb87Hj1U2BvNqFxsOMU/ucpH1D5Bd0Y/d1XVANiJ/j/jho/xhn
	 4PeZweaZSfSHSW1xG/HJRBf+2NK9K5lu8VUktEZtlycXJQ7kyr9uithNrDbN6xu8bi
	 8fduZ6Sr1g3X8Cz8t2/WZNoEzwlf9o7BGColf6PVKyYTaKigC2MnyllWR1DRurUjfe
	 KCUb3YGhvIVxL6l8PcnP1QMUgevqvxJWyPxgE7jfQZwJYjkDydNkjIVNCdW5NKxKhz
	 YsJ4bPpEWbcGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94794C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346339357.17439.17966521427000027469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f871c2a963fbad566647a68f80d90097144162c881350e9939c2635e857ccdf1
Date: Fri, 25 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753463393
