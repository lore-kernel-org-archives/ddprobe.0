Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EAA55E69
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749493194; cv=none; b=BMHTJoemj40LykpS3uKKHc6+dADba2JeaPek10i+D1Tde0yfPByVL6cMrR6QuommwmVQfu3uVMdK2fwNGU+cNwbENtydv+2JCkYIQWplj3jhDoNXhCFBHHHQIzFQEV4hngZjjwIlGEMAPQ98fwlf8IdpIlR/OcB7WiHTjx12gfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749493194; c=relaxed/simple;
	bh=hNZE1Xy6Fn6YoMNxOC1QpsXSVta9T25Ob/7tKFsq0o8=;
	h=To:Subject:From:Message-Id:Date; b=d2N5M7fdMrl8N3+WpK5XDcRg8PphI2UaW8SyLjixXefSSz05bv9MSzgO6MCoIIconihSh51SLuBqIyyQ1UaR54jD01xg1vCWVoIsncVw0VJzxjb7FoWMQExl6jVR+1BpceaInq6Fi8kkhCRDx7Sxq7TnKhuV+d8pueJX8eFXB54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUM4cNDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUM4cNDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD087C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749493193;
	bh=hNZE1Xy6Fn6YoMNxOC1QpsXSVta9T25Ob/7tKFsq0o8=;
	h=To:Subject:From:Date:From;
	b=PUM4cNDQD8DHjjWkjb3+yWuYWtQZZfLoXexOv06BKwk0obIK7RavTfkgXV7dDZNFp
	 T5Iwu+dzG0L2kJ6Edi0vN/bzdj9m7WRIll75v1+DD6QYZBaOLHzLXjbzZXKMLzaoDZ
	 DXwi37K2+WR3W/PwUoZDyVprno4mTwBGN1cT2wRBq2Z4YOf2LeaOB0d9U9cx9Y+nqU
	 B0jl0GjmnbIs79EpwVm391S0Tzu2DqpiaRO9lZQSvmWhoPSJCBgQAYmdl3mMB4ipRX
	 MDmeystCz2gz6mWTYRqNizLiWx/g957H6jVj5ePcainl6VvNEEMSJM2K2g9Z69go2r
	 NvtQtYHnDOmUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95628C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949319360.19670.3188048101705349838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508101f9fb5063b1247ecc0a54254c6de0a1233a64d55a32dd85603169f62587
Date: Mon, 09 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749493193
