Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1765B27702
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725570954; cv=none; b=dIkJMbcjswEMCkzj0YiOWOZjCSNM+GiDnM4Uraul5jKk/03BPyKpwhCUnN+1GNcwGeKc5yT/q6C2vjqJEuQ5/W8zKlTJleWYGmbkiQivEDX9wMXBzqunoRUfTmMY9TKkJNijlx4UOX+x2i94lpMscE998gD6n7Bnb7FrzMzI6Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725570954; c=relaxed/simple;
	bh=DR2YhTdwaB12QotF3bm6bsab76zmPWGEpIvxDzGsO1g=;
	h=To:Subject:From:Message-Id:Date; b=e4y0vPPXSdF3lFSNoX+VBxd42XTnubK2DzyLpHs9i2oUYHUgv2MP8dU6ALvePdD4ZtLOcxDfimDhkXioT1AFJaxTVq77FKUOu+syH3kN0WaqCyvF3CSDW+s/WZ+PYa2917tHyrR70RV82pzByV8iRiVWB4l588f/ZgTHl1wE0F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKJnFV7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKJnFV7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AEDC4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725570953;
	bh=DR2YhTdwaB12QotF3bm6bsab76zmPWGEpIvxDzGsO1g=;
	h=To:Subject:From:Date:From;
	b=GKJnFV7wAsg9jaAXScjVMMtxCybI9AdoVNtv3sov28ZvPqDSib2TNEswFFjBPS98X
	 ZltGcT48IWs3nbBBkvs0EZr5cWE5HWM3KW/fIpVde5omES9mBh0SHyWKJ+I9IVRuM2
	 LPqahhsuqbh7WB4fb+AoZohYFO0kU74LVJl/gqxJFbNC/85kmSWLccPnbnmi+/YL7x
	 oPcJ3+7R6H89fsBS8KElPk2zWTchbh2JQKKlKGEVBlT7E2rW9KCHuhrLk7NqgHymxS
	 uh1YolS45gN32T9uOQg8q+TarHxXtaHtn50OQmg8yj6cpcQPyMHvx5H1S1Lkq4W8yK
	 cE5IHl6LxSOHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E3FCE7AA0
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172557095360.32097.6052999667873515137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3f496e335497a5baf7c0b76fccd875836e422d90b2a247d80f5c962ed22b19
Date: Thu, 05 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725570953
