Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2922A1553A3
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755244194; cv=none; b=L8e3onALjdC9kKCsPGCBpgiRKIa1/r0Nc1+EOkkqDIAoV/1rzqs4rBVf0QRnVgiQQZ4GqNkKK9vMYYb07WjkMyMSvOjl72xf4HQkDZI+zNaQrL9pjYVRW1D3NRO1IjsekXSg5CWrcUDD8gZ/sNPKKnQ5DAxhGtRazSii42qinJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755244194; c=relaxed/simple;
	bh=odxWteIaHXiaD1tjaNgswUfSXdP7WcLUDBccueR7V0Q=;
	h=To:Subject:From:Message-Id:Date; b=PQQ2L6negZal1jBqi+iE31xt4BxAVQIciwhJcnh6vmJP9jneETha/6KMOpy/I40OfvunjtbD4cpB1u5gGC2PbgWWp9E6/wA55WdwKYweTBOCoK7dfx19mQTfl42yAO9jsxEkyAET1GN/HuQ5W1/VTnfHLCwl9LbkV7DX3rklm38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhUuBg7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhUuBg7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B29C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755244193;
	bh=odxWteIaHXiaD1tjaNgswUfSXdP7WcLUDBccueR7V0Q=;
	h=To:Subject:From:Date:From;
	b=nhUuBg7jm0HLgglrRFZxOhPWSA0V+TR0Ph5sgQ1Y5C9/UYf1xTqTw54W74p9IqYJ1
	 WbdZyUuCRdtu6rqT0bChhkLAXUOwJl0vipA4v9tJ70njd2QSCTbr/fzRJ847StgHJo
	 T2Gxgf4eZ/0yOQ87YTMI7JtSVaiD8gWyRU3rvy2EXjYTj26Qm6GRLKH7aCLNkqjEFA
	 vowjKgBDZot4wRl8DIlueKNhMxpmo4YzSQD0ZWNCyG6B1T5elcBEEWG8JjZoR2scW2
	 OlyHEkILJIE/YZkiPOX4KHwu2+ci9uZm353JVMXCsZ9BElOEHJ9Fzerx8U5SmWlepo
	 zn+yK5kVlir+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F38CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524419358.26889.15803910972404733680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8c4838ce4108e2377b705a955c597e306d4ef9a01c770c1d611a7962c6c022
Date: Fri, 15 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755244193
