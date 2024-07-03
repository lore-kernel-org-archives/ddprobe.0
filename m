Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C158199B8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719976523; cv=none; b=X/xh+0EvN7V4zcVekIiiqkdV0MCPoZ+Qjw2X4dYYpOQnjER7pRoM07W5FyQaeECNJBTPqdiURu25dTyRHgb5Pcu5MApw+gkCyrREmeD0vhC+xdoqdhm75x+vd0CbvhyOGCYdCOxl3DMdCaKP0vnJDmoFkv4vUg/rDXmbOEGkQVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719976523; c=relaxed/simple;
	bh=FvcXYcq08qH/jPhtcTq0ge5sYTEm9k8XpI6uRWN+fQA=;
	h=To:Subject:From:Message-Id:Date; b=FfhXLuU00b9zdRHakysSNGee2jZdJa9bhE39mMkgEFx5tQuc8rQOKuFsfH9MOHz8n4mo+UaGaaX6mqfnxZsUXUp3gywncI6Qgm1CIeGLVom918jdAEUQ+3p81hOf3fI7qQTAAyrHBePxLrRPzXQisLB3YGpzswxmqvxa4aHfCDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azCTwFoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azCTwFoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB10DC4AF50
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719976523;
	bh=FvcXYcq08qH/jPhtcTq0ge5sYTEm9k8XpI6uRWN+fQA=;
	h=To:Subject:From:Date:From;
	b=azCTwFoey/Xv68VNTRcPfBVnqT2LH3I/OGXITHGi4ei+5gb2IbqFJQh/5nCUqswdJ
	 5x/uw/ugXrbcQ/pEp7r6yj5Q+rG9ocD1hQDwKlZLNLRzLisV9FZDjlYY93+ea5NxM/
	 ssP6DGOlB2i+LAivj9PrUopcMG+bIBVdwaKir3sVRjFEPus4yc7QFVfiRPqQzV2HJk
	 Hwx4YQJDV/Fockxt/6DNQ5FgwmTsiLiHyU4w7JEGWoq39L8tgIE1WoW2yxCmT+LUML
	 t/XAUXOLswl+FLDCkPouuDXnSTEOiYN9SLfb+qT5+sZLS8Zfv4E/H7y6iTmwmr9mLB
	 tX4lmM5rzoHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCF6C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997652283.31999.4639929807601830470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beff25d9bac2d7ca0bab9a1d58e3e132f6d5363d9ae005fe33f881eeaab655d1
Date: Wed, 03 Jul 2024 03:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719976522
