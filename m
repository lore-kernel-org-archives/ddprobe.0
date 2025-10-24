Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C558E31D74A
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761325193; cv=none; b=ZLWy+b2/OKoZV3zqC85XVtFDvtzRp0VUcz5ZF1RvmAASysf4QxQnUuKcs2BpSAbRO09VjRy3xPtk82qOGRmll7EXcaK+yEH2eB/9cmGiH4X7XZv/BQwx14dwtLCfXhJW+pFOlKJEfhVPxpWFk5aIG1/wyRf6vBXJQhutTR2IGnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761325193; c=relaxed/simple;
	bh=L72Az69WovZKvb3ff/txrv14+RT/VwTNX16hyprF7jQ=;
	h=To:Subject:From:Message-Id:Date; b=OYrbE9a4KKREqUvheuWiCNdUPWZmdNl5d1MCcEMSy/TPXGlP5nkkt4u2JjuFeGettxzBNdn5nkI4xHFDuxca31RYJLUWmCs5fhBvddvmIpvqjUNH6+bfdV4yhDlR/dok9aHvnfeRF6iK3hrGtEBadOIKr6OjpIzA+tMZLKFBP6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i05g7cpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i05g7cpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA69C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761325193;
	bh=L72Az69WovZKvb3ff/txrv14+RT/VwTNX16hyprF7jQ=;
	h=To:Subject:From:Date:From;
	b=i05g7cpgbDeHYwDJbA1F7oYFgoEZW/joVUBDkJsQm1z7uQZcVFTD5lE124EdDZ+65
	 lsJ5JfsjCaBEqaM30fBqPGGpzOYxzzK81V+oHuxwFeI22ctuMRmImAMr9rL+KoOKHz
	 BWqEyIUB/IK6I2T6YhJMs9fNi78rEm45kq2yuVxeqDT2zYWsD4UlEI50cRoaVKgncW
	 6IXJmjzpJiu/Zv6NtrPnEYItMq+H/q8hTPTqrxNsrDBErTvbMCDdUiwxNS8hmxWCsp
	 ozJJj6g6M9RH8I0X/zSE5RKPC7i39w/1ehaFxOroK6nSKGCMubZnQ7I99+Cmilm0sb
	 lq2xD6Mv7R/ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97CCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132519357.6297.2754363453679252553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 390c550bf62776232a369585926f38094e6655e684d732ade861550472936c64
Date: Fri, 24 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761325193
