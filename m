Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0B9379EDA
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789016434; cv=none; b=ntrz57wFTpJlJ3QruDLau1QdxiYZFS6FO3gyH/bcittgypipA+afdJYFoSjl5s/XJMoNK4Nm91j2Us0fRF2f0dmNuAUMm/99KceaEp+7gBeBZ5GHO7WgOfO5rmLfG1mQzefS7cbA2ZjSxJJZrbJDQD0cz+zOghnbLxBma1CFQZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789016434; c=relaxed/simple;
	bh=0c1xfL6mGb7QiK4VWm4sJmh+vN5e9pQ72CzXs+hO84U=;
	h=To:Subject:From:Message-Id:Date; b=W+nIfBRMXY5FqDBxz75dnX9zgMeyZRsByeeT/Dxs4lpXj/0VNOEt6i5IHdLlO3HJmBYjrbgAynuPtfra+/SMsD/tFUJqObYRCD7TitksbmPjruHUZ8NDoelm3YWZt27qG8m0zv8tqrl0asZZfepb+84IwhZSsbMhjIBx5kJFfrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeVhlyZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeVhlyZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD14C2BCFA
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789016433;
	bh=0c1xfL6mGb7QiK4VWm4sJmh+vN5e9pQ72CzXs+hO84U=;
	h=To:Subject:From:Date:From;
	b=MeVhlyZ0LESlh28J/7FKKhFx3kL4N+11mLCBB3qVxIBA2KL+dN9AaMaAUzlOOXFVM
	 eO4dV7SCbppwEDTmKPA/aYKcAZLb0BWjsMXdspM2cakV/Sbg0XkOtzy/SYuu6uhNM6
	 uA6H/0kcPvyeat07OdAdzbpzerARv9SENS417l1deWjbjI1PU8lMpVPiHhsAHfdrc2
	 DiB0IQ/8miR1/1T3TcbyTTcHFZqn4piHJqSgOLrXjg0nicj4QRRyOhaXTovk3cBXiB
	 ABSWhhPPTiKoSj0iiWJaFKBV+TbZYk6qzmhizrfdmwpqw/EJ5V9nUChbdOIUpGQXFa
	 /t7H/r51AUAMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC52C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901643369.31393.1249881411577227145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19001f33dfc87ca8ad5eac18fca1681bb2926a24b3b6490b769d0a3d62ddd912
Date: Thu, 10 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789016433
