Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7B7313550
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763064594; cv=none; b=DI9eqwVYxMpg7HtPNn1j1JUKTX8hsDhLD8jGY+Crs1tORNosPwntLGJV8IT/Zl+MAu+7Sk1RxXGZdH7d9BROxoAYj6pq89RPFLusJ81V6xgBZDviIDeY1mxfcMeKfhJJW1m7uz/ooIZ9AhrVHD+Rm9YnANB9lVp7rUPmDBo5QNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763064594; c=relaxed/simple;
	bh=P5ntG8mZEV+H6Ha2KiuJSv+p9JCC5w/03RjJMmy0zDc=;
	h=To:Subject:From:Message-Id:Date; b=G9PnDaF2SojQMPXx1e5H7rwP5aplwyxGGKuQtX5pVuvAI66uEsFZLldPq7szjzd0QSue+NN3ccAzNnjeMP1h+PB7jUm2eFUBoKGp4tXNU218YVvd9UyvlgQla/43Qw/SWE/UXoTHu+JRtuu/q4+xO2UvBac57vQ4esA0nt6NKJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o47aiBqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o47aiBqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD1EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763064593;
	bh=P5ntG8mZEV+H6Ha2KiuJSv+p9JCC5w/03RjJMmy0zDc=;
	h=To:Subject:From:Date:From;
	b=o47aiBqere2J9VwYSgg/cOd5RV1UVWby6uOCuGTRbskKbZyFORzudexNSseY8GOhV
	 e7Qxht2JpWd6fcZv2adwySSXqimwdBNDfY/zGrPDR7Ip+ZiB5so7rys9HMWVehSQPR
	 MJYsZsx2IfZCSFYAehFVMgN2GhA+DFpc8+sXi7Mt8cdLOn9WWIokwEkVsz/IpxWMO6
	 Dt+phHCMY7cZqs+NsO7jdOU73dzjSV3yCtaqN/DJ3gI+2yG37ws1OLm9q+w/yaHydY
	 k4PKFN73+589qxDXOJkvEJbcgHr17yvyDVfho7uvWfLRWeC7ohRsCxm9AkPSFHhcNS
	 2B7dbdNSfm4Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F958CD98D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306459357.1480.3240798121806895820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab11f96180a38228333a714f5d015ed002b63cf4ec432ca6234cf8b32298ae75
Date: Thu, 13 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763064593
