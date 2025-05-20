Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6C41F03D4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747774193; cv=none; b=p0TQ+yz+TNPCskWht3dqbjRHv4mkCwfXIKFDLXXZdYD1YxbPP7zfzLpFilwFFNCVmaNZqO9CAovT4QD85Js1P5AEyQg4VQTDI3Z1itaWawhX/zsP0jBDAVfCMxZASKejppWGoHvSMsonWNzHEnPnZxHn5pqMIwSxG0fUTqcgcQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747774193; c=relaxed/simple;
	bh=oCxYOEX7BGL3okByDBOSC3MtaZy8ExmyW3X7lvarnu0=;
	h=To:Subject:From:Message-Id:Date; b=XDqQxA+IWOmNYByLlwjM9+sfvM1K3FZAomR3kBDgEJPiG7KJiyIhiA+b3TpEk0LlFFenDc4ft7+vFpYoMCXEp4CGgMm/rErtJFS/6crYZw0EmgYosWFYln+n7as5hiFIPIgIKK7fsiivB5C427wMTd8NHvCDzQ5R4QtUdwIeMXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdPMZR+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdPMZR+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FBEC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747774193;
	bh=oCxYOEX7BGL3okByDBOSC3MtaZy8ExmyW3X7lvarnu0=;
	h=To:Subject:From:Date:From;
	b=sdPMZR+1Dek/jNTMR0J/R0kkeKHrtfwvKqGBAOBLZKX4MCUJxy0MFL2bmNfI+IRLT
	 qjmdZqjn8NoNn1lO2QFM2+fPGgM73eJ2v9QLp0euUU/zmIDRKGgCY/N1cyATODIj2w
	 MFD8t84K6D08ZHbFNG9saPQaanW0J7Evluz8PKuizhLYw+lM7tRtOeYB44vNp4KnXV
	 vianrwK5eYq5M1/AN0wremCLTAEsY3jIaltzLYSh2VJ2R7arB9sM7dHlqtSvGKf7qL
	 u5pBoPln1Dc8GPXgDL07liqsfRyiSbuxNDt0aw4Px3G7wpJ+w8tZQkc1WDVJjYLBjQ
	 kjo3Xals/gQ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91824C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777419357.13342.7435298248390236266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375acbc1445929e22c571a399136cd135aaf3283cab70b8e92dcc604befcbc45
Date: Tue, 20 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747774193
