Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3C3CA52
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777520854; cv=none; b=m3vyT8W5zqDmMZOtlLzidRaxJwdApf81N7B8EdPeu15WdCzB9qIgKJTGg1JguoAmm1vLvLfTdimvvf+cl8Pp/+4nFNwEZHdWHGLwQd0J975Nid/4sNP9xdiEad/S8uu1jnk9IpWDhosUicKLfkrr1FzQMUrky6v5PjA7wwJ633Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777520854; c=relaxed/simple;
	bh=oYuXLr+q5gQmDWsOSetkhOE4ItfMrNjtnEGhlAaSuAo=;
	h=To:Subject:From:Message-Id:Date; b=keIRtR6+h3EJH1J5Uo9PAgbiSY4iqeAqx9EFxiCBkTA3Bn+UAsIezknsjASPOUZ+dBrzxR/v/Fwdz8DNjIItThFkE/SgbOdkwFxlTEaDIxTlAADMyGNkEbNNnesvJi7CU+PQBuqulckYT6IhLk9BllVYQKTrCAq7i9+fkXiIYG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyJPyn0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyJPyn0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB268C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777520853;
	bh=oYuXLr+q5gQmDWsOSetkhOE4ItfMrNjtnEGhlAaSuAo=;
	h=To:Subject:From:Date:From;
	b=YyJPyn0W2JVTVURSJoyVFMBE/qwx3SN0XKuU6goRILqBmlqijmViEv5r2y1YFoegi
	 L1tmTTaTaDi2O97Zt5iPehtHFzH5B2VVrBmAxlcLpXd+w24qHFiG1d6lVvR4t3MoDy
	 8/rPSrF4JuUASePhQzVM8XICuv9HLSYVPowBtmM5TZWTJQ7dIMzMtYbepeH1lVT9jQ
	 tEJvwf3wdv2O9O7i/VsyDV+chJ7la2qKKi7k26WfMMK8Lp6YJruNGlDJp0RaVfNeJ4
	 1IOaL46/vhkm8kYaeYjtZE9jja+o6U12hA6utLBGDaXwjHAJESJ9XRpd2p6Am8Dvui
	 Q6k+1hZ+MYNaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91C2FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752085368.3179.1577510661710920382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5c44fd16e40e42c502d5bc47a5951a61cb94b6da9108e870d7fb90458e9938
Date: Thu, 30 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777520853
