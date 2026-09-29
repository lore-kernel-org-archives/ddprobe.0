Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D56E35C1A1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790653834; cv=none; b=ucF6IBWUV5zRtuyFvv4BHq88kPZQQvVK0ml+UgRkBd3AANkNPQhcp+J87DM0u1Syu7iRWQ1Y221/DbJJ/Zsj57DLKNhwjMXuq5NdoA6W92SqR7O7L9q1NCmqgpxBMW4ic2t5AYvqxWDvjsG7hYnF5OCE/MS6XpjMq9bxNd3HWPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790653834; c=relaxed/simple;
	bh=urr/aSiLCZ2SSxU/CmyYXI3itvl3dVVaOuU7kh0mBpI=;
	h=To:Subject:From:Message-Id:Date; b=GKdUl87hVY3izY37u+dIHzPVIAsdMsbY3BbPaq/ISLQTMM/xWAaUH/Lia0m6IU3vmS3bvuPJrCyCTZE7Nw+FlqyBbrlxrhHozyC5C4mQXoi/ZsHYALAIsEHozxLla3g/amRpX3elLXy38sPDR/Prvu72Mc55fX36Z5ztRz6c2ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFgxNEzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFgxNEzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41C5C4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790653833;
	bh=urr/aSiLCZ2SSxU/CmyYXI3itvl3dVVaOuU7kh0mBpI=;
	h=To:Subject:From:Date:From;
	b=eFgxNEzfnzIjHwrbwMw3isdIovMBSvi4/5nq9guF+EdbRFFCUuTF1qUtTmOnoFbS2
	 ijOmFYWteDz9oZKFFOCqpLMLMQLXIPwmpAglRETdx087cpBwN4c8OrqV+64p3R882x
	 zBygANy/tvDXrzeNadW2cwXiToYnxTneA/0Hqn3nFhWqMKEWKqla/rEF04VnJ/gYvj
	 Yb5v4BIL9Z3hkMtpFyrcDfJYRtpvgxr7u1JEjP7yInIs4e8jJUh6rCdV7Ku/R/bjiB
	 p9yjMXUoKge8qFZ934dl8k9wj5KuHWL2nba/DMSGDrCMDP6AVZC6yrEqv5u8hdE/V6
	 Qi1PMRW/+P30A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05EEC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065383371.30843.9149058217999792289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7e0b985e7edaca287c49346e22716767f1f9b67c46e9c2fb842fe4f4ccae93
Date: Tue, 29 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790653833
