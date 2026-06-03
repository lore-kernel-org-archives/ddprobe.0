Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A46C1FBEB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780524274; cv=none; b=ouxORmDI47yc+gHQYevBk18ePwwFWuZrOs/14oHC68qoQKR4bU6u+BBdus+k0ppxjZ/Gjhygm6xa7EWr6Tj2hPH90o5uJT5efF2I83DbaYaNWcxHB0VkcNsibGCH7hBvenszzFHstBSRgberodHO0YvRn2/iIUt0kjvVlZzxpD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780524274; c=relaxed/simple;
	bh=9KXFbRRn2aL6D1PbMQVhoecBn+eXjJTP4pEDnh6YPgs=;
	h=To:Subject:From:Message-Id:Date; b=ry63Rn/5RHcZCLx8v5UZXPsnUn7isQLPywceP+c3ScItNYKIOmIgeoL1X6GnhIRUqafVwpJJme2uEjNfTphtDXUeTMXH0Jr1JjavK3sosHd6T5Ejqd4AUVPQBacKHuRaAwUJnSAsiEZEAZprdpLXUCJmem9hpufpSsISyaGSzSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPByk7RA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPByk7RA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D30C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780524273;
	bh=9KXFbRRn2aL6D1PbMQVhoecBn+eXjJTP4pEDnh6YPgs=;
	h=To:Subject:From:Date:From;
	b=XPByk7RAMoRvAXeFUPojrUZeEGlE/d+A2nYFaKo9rx1pGSnmNrk78dCG5ic+d3rAB
	 s42OsD86kixpHw2tmDnm0C22YDubCfJO/A3Imt6ba+r+GN4HZRzbaT7x4qsoj23ecG
	 /s9LYDSEaDkl1rNPN9krDwBXSoNkKr00vnk88pAFL3miVsZpyJLjPAAkTunJ9uLfWa
	 EKpEC0j5v7TAaSQtSniNam0MT3CJqep6MlGJOc1Ve4gWvpJHWNQiDcEHMEV9PBeo5w
	 CFxkPLEgMz3plFookIS2sHEyFNH9GShYK2gDXl6vwRfY5sU7Q2irxUYrzH/QWju5ov
	 7FJV0aWqRi5Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D62CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052427372.29237.141143306258782735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e95e69499d93d7ebd71bc6e1268c6c3d783200c0bfc2e29c9735c9fd408094
Date: Wed, 03 Jun 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780524273
