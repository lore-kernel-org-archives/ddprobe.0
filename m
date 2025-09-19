Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFB77082A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758248994; cv=none; b=eDXvBnarhylf5AlOJ9bqQNGt4PG1SOa0Gq7sTzEwSaJ1YmdiGWpZxiJf85Qrf/3UjOxbbKAU51sbXTTsH0SL4k+dc5ZS6yhRRgfx2WxtG3DP4HJaSVx2yr5IdAkfjYwf5qVIFLGhEgOK5uDmRByUKWINPf5n0nNBRO2YNMBqDhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758248994; c=relaxed/simple;
	bh=En4gMjyorlkYgSi/CGLBKmMzZykeTRE9VvyBTc06hqs=;
	h=To:Subject:From:Message-Id:Date; b=Ga6qYYnOG9eVEryGw0n6Cihzj9jI+EV3PsN1y0b7y8S5cZFazVqZ+3LHZkBNrtJgyfbcp0ICJSq7l+BC+S5qKzWs3eiVag9giG43G2GHInkxKtHtWyT9knwnS5QsTPDUeIet1c6t2/pLeeEVpFiJPoHkzFFyhZdbe7mC/ewLUpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK2VQJCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK2VQJCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71BBC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758248993;
	bh=En4gMjyorlkYgSi/CGLBKmMzZykeTRE9VvyBTc06hqs=;
	h=To:Subject:From:Date:From;
	b=rK2VQJCuXkKzNNuR5/4/O4RvWEcIxHnfPLJeyDga2QdwCQX4SpBQBSK6UhhA3QveJ
	 wmRg+rS6KEb83ftcsLmr9YtrY3mUxCCnfO4xY0au8nB/U2oOn6SyzftgPqW2EM7hWY
	 SefgdGFbGKksTlNVghyG61H/Im3vOJV8XDP0L3gqkdNuGdP7DcPUf8ywpK4QiXp8Ht
	 HXFbm0oGxsvsrtajhFXKumDTe8bbJDuc2jGMTXReFlhNMGOvODdi70V6KmcgQhxsuP
	 nR0VhPe6oQFYcNQzj2bs2BuWpT/zFhOJZDptmSncb1VJwVc+iDbhJBTnZ9QLIHgO0q
	 IsymDE5FyEGpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B41CAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824899359.26033.8329560639509623225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47959f25f3445f4ca119e219f072651cebecb1a5db7386f2f04de39cdad8c850
Date: Fri, 19 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758248993
