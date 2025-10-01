Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F421DF742
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759320594; cv=none; b=D6L8hf9Ub0SJ3DKC6/zV8QF2//7HhozKCqtI03UX/1iMqAMPmb2DLNhZAtSqnDdPONWNfC5KFiEQsoII9RkOXnkmETZI5evezhOvzUjOa1gd91FUfvC5A6+EqXjGj8rn6pDSAZs7d/YJV/e2yJBOHxJRIx/gldj/GpealjCfy7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759320594; c=relaxed/simple;
	bh=vd/W0EDR5heMFNfw0t052nuo7BVwHTzVPP3LHoSLSBU=;
	h=To:Subject:From:Message-Id:Date; b=Br6/jhrxvCJ5L+u7HmuDjX2Jn5BQXejIo2D4cZu1wVFKMSr1Rt/hvhD5MniKk3SMWrKH0f4S9kDIGKFRc6G1O4PsZxtQhXNSbD+4fx+ED5niRnFbamUnYNlRVsW3cpXB+l7A5Darw7UXhOKY76rowPZNcxhGuY2XckIRAdShhsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p72I5FuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p72I5FuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C67C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759320593;
	bh=vd/W0EDR5heMFNfw0t052nuo7BVwHTzVPP3LHoSLSBU=;
	h=To:Subject:From:Date:From;
	b=p72I5FuWzAYO+sLNIGfJi0Xds9NMI+yBYEvIx1qJjHw9VOgvBtRWtu+Np3LBymFnE
	 YvgMIOg3vLBgyK/VUdAwVEki6SiFHiPcmPrrkU1D8OfPGp0r5rdDEHdfsz4J29IZdf
	 d/QIJ6/uRmgjRzxHAbR6tInjFP/fS41RPQpi5uPeVea/9ObppZHVzZha0DBuNbZye/
	 Q8ZqFXSCz+BzdOnVS/sJbICtxa2SBduna0iyiiOFuG3vXRorAnnzdiJr8nC0j0ZhY1
	 KI682pW/LPPsZ2rmlWtXsrfeDn99h6tY8lhYlpSNUQNgIXBIYQ8v3qRNSWg0uyDbZS
	 4gd6z9p6WRlyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C54CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932059362.20622.8140412361891762814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d27a1647bf87b4e0dcf77b0c45cb80bd3d124e52fc4bf360b95da8dea25ecf9
Date: Wed, 01 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759320593
