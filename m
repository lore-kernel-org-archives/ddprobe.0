Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C0F811FE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719613463; cv=none; b=QpDmXrOw9OrUtZ12MpiD2OLOZ72ayE6x7hiMN1FA9JgDycjElcx1BcQ36Ca3UxHGRhzmvI0eKD4QYfWHF7p87eiJG/SX6CMI9Fi+8uCV3J7/SMBRlJRAmOPGl3TiJ6lOzv8WmhD8uwD7Wy1rDaw15K0oFZ08Yx0sBV03Af0nl8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719613463; c=relaxed/simple;
	bh=rOla1Bq1om9yKyhBslJ72oH9U56LDuiybLJBU/pZZIw=;
	h=To:Subject:From:Message-Id:Date; b=W4X7GczkY5SB+kg0uE6aNHbRkFJJk8L3sf8COsu+rfxxKiygUPxWnQoRxSt7KlqcOF4Qj6C5rtdBO8LAIphX8UEF1IiUABRaf6Al1cx7ZGWAKpB1wf2D+QWOtAgUEw+zERoDvc4h1JRuzl7k7YvwZhrrydle6R4CNMiV2cP+AhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jgno5ONa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jgno5ONa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C03EC4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719613463;
	bh=rOla1Bq1om9yKyhBslJ72oH9U56LDuiybLJBU/pZZIw=;
	h=To:Subject:From:Date:From;
	b=Jgno5ONan4V6JW+u4L6qYJUDKgjpMI1gFl5s6dzEWaxwH5MFu6DTgCc1nT200+EO1
	 TjerebiDUqG2giMv4ziFL1VwR68Y+maWOZ7U2eiNHehHvn8JUFcYPh8kIaxAtcSSpx
	 dVp5e9BMDb4fFvkmsXPrRSv4YD+qyKuHxZfZ2/NYMoPk4OSmwCj2HHc1wbWnB/Xtwh
	 DXOgozHkCW6HX2X8YjDVjzaXUGbKJO/HhRHn8k7ZI0yUeLBVZYYW4aCpu/mUszMsOB
	 3r+oRnEiMAbehUUer6Y7uu0CD1ZtzQf6lKKzTMGRk6iWQgwUCQXn66S8rPHFqVcq21
	 jBnA5KYPPEmWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7DFBC30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961346286.21625.13212337391313524831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb48dae2055cff62854d8042e9bdb0e8c5017400c12d684d691bc8a2fba0774a
Date: Fri, 28 Jun 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719613462
