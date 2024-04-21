Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7460F10A35
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713723623; cv=none; b=DjbkfeXboiIcrqyJ0+m5CDWfNdqDphS5crYA63kh2djiR+P5rySo+O9FQwvzQiQUFmjz0FTnX4sQmmIr/zFull66XIydbqiOqpLx9OyCP02uO0awkU0qy6RTJ9EeftiKyb0SkplKsmzj98Y42tqkEyXd5q2EWmhwQq5W2QwmdzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713723623; c=relaxed/simple;
	bh=IHGU5M5csRJOesPXzYjj23s5PFvPSCHzDwTnp9O3ZM0=;
	h=To:Subject:From:Message-Id:Date; b=I62tsuDDhM3zmxQ0j+AX85jHG1TYGxWNXWgVbBVmJAEy96VCVXy6WaDptgKBiwqFAP0vBgMmR0REwUGg6Q/CDDXXQ4ikTHjL/6Ka9znIdU1/WTMJzOaBnZLBsJSdKKaoIv1JeaPcILJlVYC91pdcfolQGvdj8LHMktMEefr3Mxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrhOcmig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrhOcmig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB137C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713723623;
	bh=IHGU5M5csRJOesPXzYjj23s5PFvPSCHzDwTnp9O3ZM0=;
	h=To:Subject:From:Date:From;
	b=HrhOcmigRxW4OjqEfHCzP7MXN0/GV1j5QaZOgCSfX4TF0EBed0/kvcJlA/gp4f8jI
	 m1gQvA/IJec93bIZAlewc6DpGJejdimGlnOR8h+MONvrdFODqSPV+HhflC6nlguxES
	 X/f6FXuQtkb99O8lvC2Vp2eS2PoUSoVCvaXFl901MKJPOWAGdIRLEv8P5p4WYIX1JL
	 a4R/DmyD3SK2ew4Fqu5NLzJoLtQxz+y+HAu2Z/+s/ArDzG16lxj1JVyijWoBx6eSsy
	 1KueVy4/YL+vru81aqnBHR6GwLes2BLBXqywiTcrFWw0Hh7JRU8f4CTvPZD4JwnBjx
	 9lzDzLWLw9kdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EBAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372362284.19457.9231434745434547823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434c1193a7c82959d3a3459cd6039b3e2dbf1e0c0278816c24ecff04ba22e2c1
Date: Sun, 21 Apr 2024 18:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713723622
