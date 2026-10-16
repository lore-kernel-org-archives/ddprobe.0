Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E923443AAF
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792185634; cv=none; b=UusPnQCAF+xMj5spgBU5ViOw6+hqyp6LeXEEZqnvTljPdikTm+rNPbOZVoldRnhCDDHvl3e4758/5h8hIr/8AxqFukKLX1kih67DygeYcozULZg+gvCxnb8cL+NzNXPL4cCE83rOm05O2x3v5zKi5w28OtOie8NIPsnnxoRTgFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792185634; c=relaxed/simple;
	bh=wD8PfPoJHXrFveQuqe6myj2lQvKHLCBr13pt82raahI=;
	h=To:Subject:From:Message-Id:Date; b=W162eIVyONM0IgNr/qoTI+ksXaec80pmMWQuofGaymExwTWrLcdXPpEP4M3GsvEyGbS4rLQ6BPhWjcGOaMlIy3U2+vcHaL1ZeIWo7W9ajkdotfIg3hHLB/dlEcIYYukW7zvAbA4F6khBG0nPIaAiOWkZb5u0txWHtJrTlfam04k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5QW2JPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5QW2JPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC041C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792185633;
	bh=wD8PfPoJHXrFveQuqe6myj2lQvKHLCBr13pt82raahI=;
	h=To:Subject:From:Date:From;
	b=g5QW2JPI4qPjzAvIp6JdR2bu25gb4U1iIpo1pbToMfdN1Axcc+P8Pl/YRWRGtZpkG
	 aJRAT2QpvVxzg5zKkzHMAvUH5dH4Idk8BoNhnYsjeCxto+ytXhntiWuIuvzUqa5bbr
	 BU6jTWXS/V1Mdpq7p4AMQQ2kKItDERecSDuio5DSvWeGl80yJJDP2H9ws/1iLl/Vst
	 WnvwQ82dOn/KZuaZEmLSAWlZCp+iOoHyGU3/VKBjRh7CyEu3QtYj1Sv39K+/hL1mrt
	 hX+bFwPv9tLjJMoFsa2nbVXqbC5YOAMRz79Cu2tq8S2mC97y/ZPMJZi5ARlH9beuVQ
	 cSSMtJ8JUEHAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F74CCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218563371.4786.7400658475303931920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b5dfcf07abf58d9fa2789da122b148954e23e7a601c225ff4396fbd94eb7c7
Date: Fri, 16 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792185633
