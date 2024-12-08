Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CDF1B960
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733645154; cv=none; b=dbKFyjJjH8iyUd6A7fpvUg8GJKfB7xuCx87g7hYc1BhZ6DeWqCXEvm776dNelirrytlY3dbKfNccm7yP47qBHd9V7fgS+dDN41AGXkHnP3+UL8oNTb3Ql6Dlgceqwwma3o8e62ta4HWWroDz594JP/0yZc1BzmAkCrCFY66UQ0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733645154; c=relaxed/simple;
	bh=BafOxuMhPmFksjPJt3N735WZ5G2pO0PNXZVXdxW7Srw=;
	h=To:Subject:From:Message-Id:Date; b=qUuyQ197OigXA+7quD6dGfHO4Txo2q7spkBXKRB0ZUP7d3Al1buHe+Ap6+RMqt00LnJ+2gQllY5fr2K38TAxYhr22LfUCYrIsVOIiypn2GnwFs3fmecDFYzchZuRfiiIvZ/JXAEL/ySSN6fvAZXNhGEwRKTjebfNVpylMFyJnCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+zh2z0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+zh2z0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1FFC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733645153;
	bh=BafOxuMhPmFksjPJt3N735WZ5G2pO0PNXZVXdxW7Srw=;
	h=To:Subject:From:Date:From;
	b=a+zh2z0jaNeJaxhnQHXI5oQLI7XxBldnotoJ298DYxHqAkOsHYPAuhZuNn328Bl2u
	 IKWNUfVVxj66D+iXcQI0EETBRMUuv3w+JZaygOtTm1VkV8a88LhtYrM+BnVC+igZrD
	 44OhcmcdRVOd3waaODulTqrWIHaRufWAjPRQxJ3vil+22YEp4dX21WBEdW3zrezuOs
	 BWUkFaF9z3F+LXsOpv6mhF+hlNI7b/Wn/+0kZNvxVjbw1J2Xl0qkA3IArvbJ5brD3s
	 GCBZsaKord2ecadaM0d9bF5g9ggpQFl6HwzT17v+6LO35erftPic1pmdUkLLHpT/K8
	 5oiSSUEPpVn+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96527E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173364515359.24141.157137003950557345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e19976617b6f53f1284679c1e622bd9a926c100a8a77856d173b995d01d599
Date: Sun, 08 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733645153
