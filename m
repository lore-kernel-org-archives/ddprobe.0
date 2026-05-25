Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DF4385521
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779715954; cv=none; b=ddoUgwU6wYnhWFipyyUzKrcDvbc457dV/FPOCLTFtNudEPgA1mzt5RsBmDE+t/S+s8hm8ni509dMU8B/PmAvrkTGg5AqPxzoogKTWmCyIaaX4eYTqvamZjZEPokHC36BtbgPqwuOZzq7FgvEUBXnvlBAJjJZAtGAxuCC50tIeUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779715954; c=relaxed/simple;
	bh=l/gWykyDt9a5eTtYWv6TNQIlxJwj+7TB//BIjmYDgfk=;
	h=To:Subject:From:Message-Id:Date; b=ViIb7eZgK4h2djhR5IMxE9Mlfy4T2TM9V8Aw/qLdJTH4urVBGZTL00WMrc0PlGyk24XRdbBT+CxPE4btyeWjultQ9epBUwFHAx+F/oqcVmqieARSvDHQW0tBfdyj+hEUDB+48EY4oyucu4NkgwnjKz2aS/Tgq+sKlrrg796wVgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szVwoAX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szVwoAX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55E1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779715953;
	bh=l/gWykyDt9a5eTtYWv6TNQIlxJwj+7TB//BIjmYDgfk=;
	h=To:Subject:From:Date:From;
	b=szVwoAX4tGE5E42+AM1IropyxSZjcugfIoJCpvie1Qw7ou+ZDm9m/tgPMWANzMOYM
	 8dz30Wp94uApQsLVWZ08I06o2DXIKGKRhYZmLbqNF8ur6vYwRz9lJJUQx73GAC9ege
	 6xuWBuabCFo1GIGbM/RdMX/d6SS2PXxZQfdyR+IP0R7Om7Boq0LgD4ZrzlaJuNTYrU
	 jI6MHEEgzOeeNH6FRR95+I6Oqjyld3LnWHeYceev2YtpSrZB2ze5isuBxAqrVJD8i2
	 /2WY6WZc72B6PdXY5V5ZEX6zEgj+B1z4Cyg7pxuUNcZyi7cZKkZ+Kwrmzkucd5Yti2
	 i43ymJsOeGqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B803ECD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971595373.29272.14771118895502232852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d50b0022cb52d7f1f7f92089b4b8e2d204b1b8cf9c35f3ad2a02aeffaba817
Date: Mon, 25 May 2026 13:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779715953
