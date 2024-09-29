Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3317B8F6D
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727619954; cv=none; b=KwUwi8AkDKLqHUowsmn5FAOvlm0pPMiXXsAjG8kPRbEo2QoLFnTZeXCi4vJfRxTUJ9EmMf8iUrxlNQiLcSSDee4vvMCSRvPOTIv9IotM+oat//Q87oN/hzHegjkkS4io+hcpFHGwpOSrN+QFslzrGcmUPEn2WhysZlxlugtf6ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727619954; c=relaxed/simple;
	bh=mN20Xpa3kXv6xkgdgRLx9Vnxb/7YMKZgINpm/8NZVvg=;
	h=To:Subject:From:Message-Id:Date; b=InvOJHrZDhf8GGsbRGruToPMXxzJ7VzstF9JQ4Hs6cMXhh1HaUnLvqmQsuGr5Qgv6vsapgNI7KPV8UutHvPpbclghmdtnpR6zHKHuED+TFVeyUC2SvNSB/VCuCNQgy7xZUJo2F8y9NfRvvufXfdVk+xS9l/z+KegC8EUnrN3Onk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIYMpMMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIYMpMMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D40C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727619953;
	bh=mN20Xpa3kXv6xkgdgRLx9Vnxb/7YMKZgINpm/8NZVvg=;
	h=To:Subject:From:Date:From;
	b=PIYMpMMyKB4/CSVtrYdzslhjYrXPTkucnyoUc5Hke1VNIlETCN7tnd4TMbioan9kg
	 EdC6vIAwocovyaOL/Qv3+sRgo9GWABhW6fDN+mgNm4y+2wSV5KTn0LFywyB8dZGQR1
	 yb7RVglxOImN5hPyN11Uke1bCm5keblRWrijtjWMau5xypzbGb1LqCze2TClpvA2Lc
	 /L4HcF8Ka/lHEkVzYDQ30/vEg2B+tOoBccStlTXU3mdquXdynAB7gwVJQOJyZevCdb
	 bDdIlMZ1RGG/YsFyhCnVLlmjvm2l8PxQwt3uxzjlYOMcQzG3Hv8Pi1AAZxtNJT0UxW
	 9noHhK9hzyc4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF79CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172761995362.13868.6313798410646932411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caac3c698a4c7e431183de25aa0197f7ccb6679f2c346d3d0fa82b4ad6e154a3
Date: Sun, 29 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727619953
