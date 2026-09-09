Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B6B3C3BEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788984034; cv=none; b=r5AX1tSZH+/qhxA31RBz27nTch2z7y+46gk8mmMCXxLX7XYVwioS3iGSDdinpzC3XSQma9vCV2UuUQy6omA+ntfPJ39X3nmn3u6tkJVOpkpPoDaPM59nW7QhWPlAhCF1faernBXqO/B530p68VlPH9vYv7MzxW5jEOL4ly01B34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788984034; c=relaxed/simple;
	bh=QkRMbkbrE74qiwqjoIWbZukG25xI9Bj9GG4hp0nxCFw=;
	h=To:Subject:From:Message-Id:Date; b=U43/lmusZnSjykjCgdvQEmcrg8tmqnHXl/nDxjYLy5gKDrouLTSjX/QMsv7W7pxHNCcaOlQ1sIyoO2FOMhJUtQrf/G/kODAEDFxM8wGWMQ+i98XaMPEg5Fu/HdsG+zndCiJIkFiEDRGl2/D9Bmq3GN/2+KSF6MNEJzVc/51JHH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwOI1YU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwOI1YU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD532C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788984033;
	bh=QkRMbkbrE74qiwqjoIWbZukG25xI9Bj9GG4hp0nxCFw=;
	h=To:Subject:From:Date:From;
	b=XwOI1YU7k+rNc1zZdiQpKWONkEH+/L1I0dYdTplvQUZI5MzTARKmPZLeAz2AzqtKw
	 DohBSXShYOV3PBiMWUlKLeKVzCddQJzt/0J5sKuAK23k+si4rAa0dndP3YTbNwB76n
	 G55Zed1xzLJZTQVIfmeFf4PGtKaxMWbdIgoGuWnNCF7LTbywUFG+bwWvCGno5Nso5B
	 VvaZcuk7ATRo8Xxsn8EVWkUc39PMRvnGYwEXUcv39WDScZ/PfKGUbm6GE6ogw1VNpx
	 ob1jERB1WceJlOaGUn8Epxny8WfYXdXZ/aL66aMBagr74zAvhTUtOMK9q5yQVcyyHF
	 KHGAR7RGJhhzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF377C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898403370.4944.8198211666168637328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26844e044faf458523bd3071fc7fdab875359ca244de0a94a8e6512ba458f722
Date: Wed, 09 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788984033
