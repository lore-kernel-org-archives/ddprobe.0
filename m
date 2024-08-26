Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1723629A2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724664954; cv=none; b=a+wm5xxl8lnZqxG0R628rfuD+jiRlmiD0qSqmbTSxr94IBkIP2VOX5Y+/iRYyaXeG4eYIKzVD2dsnvQL9bM4o2Qchcj82ST2ibS6GbhrXibEoWFx3wzqwsZ/9OMbgYTC51v/pVeJhWE7RE5hMMx7LsQEtI38ajPQ2KXrHMdKfk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724664954; c=relaxed/simple;
	bh=EgoP40dKVjaOGpOTJ1mzo2umdmPEodcrW410DCGW158=;
	h=To:Subject:From:Message-Id:Date; b=tw0R1SVpM872RBX1ZrUsA1XwHSorSd7YhDDrEVsl6w5f2sVVUAgHFk/en4LiLc5oaxMoy4VUli/SM+XaEWqp0TCYmxUKs7QffNAxXqaeGONRj9fiQjwyziUa9XFIwgBL285yK3bpurQrDVxmy2DyYZSbvXfZNz1kh5dAiQ9Ly38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m++gvImv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m++gvImv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F481C5141F
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724664953;
	bh=EgoP40dKVjaOGpOTJ1mzo2umdmPEodcrW410DCGW158=;
	h=To:Subject:From:Date:From;
	b=m++gvImvalOsblzw4aU7qOBJdw/JgvrMRBWXR/QjYUnTvqrj5Ln2j1JJGFGHrENyr
	 f+4k3AjaQa8DUu/PvyssD357OgAJHO+AtdTmansQYkbIn78Ir+xRNX8LR/ugb9E1ub
	 sOi2mCEIVwd1teThFajIqEZACUcx4gj1ALFv4eFbjAT3aNuoVKtA4/ms5ljjgBsdZ6
	 DFYh5QhfW8U4Rx8RTITcstaYRQcXHT2Y2tszIp8nUoi0BPsoRfpvd8BRxli3Ub706R
	 Ag5dxiWRERbxztYnW1+tG5dUXCUJ/5Fe9t5YFy6Xak8h/RioSrqcl77Irj+WqPM7OW
	 YSWF5TTs8+MWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C15C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172466495358.21244.8717826181594938896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c44bdce29f59835085e41ace70d652f37cba0c2304eb308ad63d1bdcb5ba52
Date: Mon, 26 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724664953
