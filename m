Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C440634
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727913954; cv=none; b=qA8nbPKSO3eB7fdR/NGCFOBEuvwREW8z6dz0iSnke/AuXpVmVK7QtOO67CZt4jB5EhHlMFKSkIDoj7cgXm40jm6gQy39BXO0ypXuUlQIlsm39HFp6vhFgtJUQ4tsIDK1yvQI89oTt240Nu2S9DqK6PUTH7y72evzyQ9Cp6MIm5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727913954; c=relaxed/simple;
	bh=pB9oCzJeO5o6tBlcTRAXF3F+HOu2oV/G55RqebJT1wc=;
	h=To:Subject:From:Message-Id:Date; b=ut89qBry53mGqCndkmF7AF5zB95XmegZkQGWBuwn82o+bevyNfJlz1vpj5x6Ne/8WqXK7T3h2xpt136etrvzRbx8HiB7HmLyfVGF6CILnf0yYZACA1kUvXYKcRvjaP9NUv8xGLBlOOiRcn7gJTSUgBlipRCtwiYtjJbic9KlnJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBbxGtzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBbxGtzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B61C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727913953;
	bh=pB9oCzJeO5o6tBlcTRAXF3F+HOu2oV/G55RqebJT1wc=;
	h=To:Subject:From:Date:From;
	b=BBbxGtzfQzNL5gbOYKn+iWpEozSZZRh9wqt/FSrBwAsnZ4/vOwjxQcR+6dNTD9tyC
	 C8RZAlFwAIazZjNEsZKuHQDPjt26LkROG2CvfkMlr2h5v9FsoZOWmFQXqCGYKpyIFf
	 J2jkteJ9Aka6C/G7B7X6LOvLU8Z3/6eujfTunuEtepe0lD0TFnLH4eNbXsfPQ+kpf4
	 auj+cyezXvWqBzNotF3ocQXhg8U2g96CX3g1RtpjJIblaplPY81+/V23OGxW6PFkge
	 XOaWBvOv4OY/eWaRuUVknu4KDvkmDpjEAdHt6bZaAsLq+roAcyXPfq7RT9C+10m3sg
	 R9ms7O75nL5og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7EFCF8549
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791395362.4024.4800048954226521003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdf336de6b642b481a9796af1836a4008fdb533e988563ce6ad754ac0bd94c9
Date: Thu, 03 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727913953
