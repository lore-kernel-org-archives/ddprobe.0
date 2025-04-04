Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDD41F4E47
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743784794; cv=none; b=Xvm6QXJmMuqff2tNCDLJ2gMsR1Iz3pA/1boQLrB0GHgKiwLQnWbYbEH+tQjKy236O70b/8Mq8lKgEEqBYcKuUL2+PMBKEDabd/9hLoNljV40sbUCjl1LWjXuIXHxDF33Ruqesvi4WmgzkXu4LX2E1sf9QJ+IU2xyuhuTdR1vryo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743784794; c=relaxed/simple;
	bh=fvXRoLYjC61iP3XwLPddDBa5vD3zbWQoNTrhQ6pQ7e4=;
	h=To:Subject:From:Message-Id:Date; b=K1RR3jZAdNJiPPkbMN9xmgKtELu9VpWK0L37ME3Fs3u871sMXKY39C6F5hAX/4xrPLvwCcmEOP3ARBL41U0wOxW5Vi0H/vYTV0vP/oJhk/HutztqpBZ/hylRhtPeSKpwY2jJZCZV5pqDAh9viUV7axHhgDPhEJ2jGvh+hP4U7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9rUpVgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9rUpVgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2FCC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743784793;
	bh=fvXRoLYjC61iP3XwLPddDBa5vD3zbWQoNTrhQ6pQ7e4=;
	h=To:Subject:From:Date:From;
	b=j9rUpVguFxOjnUpF3AIkF4gs39zf9VxRVLU57SVx6XqPXEL8Y29cjWHCCwl2ACPAL
	 8+5p3MahO3hp/XaxgVlgp0cc6Rpl6zuaRufoeReOWEEmbxrdUiK6QLW3RfHyTLhdsl
	 E+M73exD9hReFhoAc6+3Sv4/LidLLIBq9Te5TySrvcdX3YMtl4cEWFcUGLR55hLtAS
	 Ro16F7NF/YDlBYapr9G4q9+e0rIQkIm1ATi49lis5GtZM+Rm6FkiYeD3vw7vxESt0u
	 d5Y3XLmBQeUAnhi+dxlo3czvBWJxukdMnbGymCgI4NDawhsCpQgUlnAdjqgJW6PlW1
	 j1zpgyVFWkJxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEBFC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378479359.24917.17092558575308505623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98cb2f99d6d695d6736b892c60b5eca266d053352df5002fbc00b450ac13b9d
Date: Fri, 04 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743784793
