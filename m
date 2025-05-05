Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD611B415F
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746424794; cv=none; b=Ld6c4ACehJevJmpYl/utVSIc4lD3NOXluh+G3eg2IixP3oAMMmFKIUH5yy5ZC9LIKMsg3PesGhSc9oNx9S06ufP2Jb9MFlGHthFTERz4mhRi/DJnkQTPuMDHBOVfZwiyKbbzAHcYf4Y6sWmS3Vd381nfCDz7HwwRXlRqXowkqA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746424794; c=relaxed/simple;
	bh=KSyGVn5LQQTqBtCaI8fp7ojvcO2LJo9qmow5xbhUlFY=;
	h=To:Subject:From:Message-Id:Date; b=r0dr+idwVdjjtPAOJRBZsN2Tw21sK0pUHcNV/8MYtmcWgxIJthcvLKB598KeHntBrnzwmW083PAVzFMA0DZm9TYMnUU30viPAdCOdBiRwRR0TME1PJ8k8trGTgyCTUYJzLVfwtwN+BxC1Sl2EuYXjGf6Dmn8m0xMySqpZ6kMugM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3Qmy974; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3Qmy974"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A84C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746424793;
	bh=KSyGVn5LQQTqBtCaI8fp7ojvcO2LJo9qmow5xbhUlFY=;
	h=To:Subject:From:Date:From;
	b=H3Qmy9741HOvgmR7dBVGcZRbZCHLiZ2N+Es2yq3QMVR+aE1IT7Ek/yNuClfrC0MXT
	 6shMlqm48qSxQJ6ZCmQhGxeSELWVfMrKClMSyMY8Hax9OuK6ubQUEyNfNZjy2IykmX
	 ZnGLQkr8uwCDvdCH4l04L8fHtr06hLT2WTE3v7wrn1leCETH5Gw6Kj4j++zMLRZ+Sw
	 xMAHpJtWrFXZGJ7SDKPAQ/c4xl+2pn84QY66a3COrM0wPNfoT51y1zZ6nO+Bnxt71z
	 qzDJqPFWxXUKBK9AYG8x1FOT9UkTHc0G/10ZPw++IAUaJksw3N/ThWtZpu/tV1XuIf
	 e3weoatzuxX1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDBC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642479357.26467.2828980319795227225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de1a913e1325c0cd22220d79e17ab4c58d7e6b5e70ca79671836aecf69931d5
Date: Mon, 05 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746424793
