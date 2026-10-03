Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23BE472783
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791043834; cv=none; b=TqSSLDy7yHQJR8u16D28GjOCYpsBBW/On7yKAbTRBJ1EJQLUjPMNnSgCticiEFher3Xb2M7pUjqTIHDvnoC2u+KETavorxV2tFK+vBTav3FaIpsPrCfHTA1trxvm7rldUo5mejBboP2dv9OmiKHH+QtuCcc4y2nnAeCdLSxst/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791043834; c=relaxed/simple;
	bh=Fa8FOgrDOOnxRrZwxGQfew0hS+BO81sK6jDpebZkKNA=;
	h=To:Subject:From:Message-Id:Date; b=NQdjcLCpIGjeAcKG6CWE/m0GQSdw8t0MoX9kWlgHK9X8+eaSbr6pS6gXJsBrFaqMQupzhxECMC7hRbM6NeMO1qREGd95HrbajslZ6JLjNDztlKAk5B4qkZG8Yo57RJGVpYAxKz/njPiLkq72CTmXqZ7uQTxzW3ql6ZPhxMQCRdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3/AaS2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3/AaS2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D5FC2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791043833;
	bh=Fa8FOgrDOOnxRrZwxGQfew0hS+BO81sK6jDpebZkKNA=;
	h=To:Subject:From:Date:From;
	b=o3/AaS2F3MJFIJI0KAGH3+GChpOBVweRQ1H7kpbqP90aG8zHN50pvtdgdrphGmKJD
	 7hYxyViafQVI2LB86/f0Whk6BaKI1qNKiuedVILppCAWDtBJrYIgNVMCIav+5iGWyn
	 j6uVy5K15JoUu2JllxDyIq8u5JZJWGPQg+tmWBaF0iTzs6M5c2bDZCIy1WxNr508ds
	 dtextgUwEMoTGJWnsdwyqmiGeM2uygRgLTqmDiJqI6FhcquGY4XToJ1k+LuFe9fteX
	 1DhU3ah5GdzOkUx+l5VYfOz0dIMrWN2IDX3+FvLHruX98DCwSuAji/aNDBEBo5xmjj
	 b/pRQmKvB6JrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3D7CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104383370.7523.16269420230777416717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d87853a5a1216283942f1507bc852b2ba2fbcc49e4e6060b05e00c29de4675
Date: Sat, 03 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791043833
