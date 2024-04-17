Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED8723D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713326963; cv=none; b=QSDbkGC6W5gRbuNjVKs4wSuW0IlawZuNkt3HrYM1DkN0hGXL3kavQpPLT2tZdBDke1CMKNC9X4x3fPf+5nei2ua7UD0kpwdn8gRT0F1Tp1lLQdaLF4tiibHDCQw2pEVuTtDyY4FMS2CJB5R/05mL9USGSsFxXpgeeBB0vB+TDQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713326963; c=relaxed/simple;
	bh=G9T41cr02DbP+ovCc4LG58vinXcEbBlK+UshjfSSnZ0=;
	h=To:Subject:From:Message-Id:Date; b=I3M1QEA1mlHROM1dWebSdbntr3SVh9nsyQ1ab32X5EEVXKpc7q5aLM1UJiW1SRDj3hmMIOnRWCNUNtwHu+MhouP3eahLul6OwGi0imonj+seuL68h834TNS5FvPxKM5A1d7m0+uguMh7x8WtbGp+nc+Vks6K3AzKXX4yKsrew1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwPxv0q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwPxv0q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FA3C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713326962;
	bh=G9T41cr02DbP+ovCc4LG58vinXcEbBlK+UshjfSSnZ0=;
	h=To:Subject:From:Date:From;
	b=UwPxv0q4aM1NPJfK/T0ZCNaqFf1n6dYn/SnMO+zTOOxsJry85y2f4aWFyfQTOGIhO
	 5VLdIfkI9vMhbU4Dl32DOOjGbC5G4XLP4YNu0IfaslkVeQWxxbjBQABajeJvWjtLkM
	 MPrnmSjkMgOcvG5bPDBnO4kKFGknPY/yhaW3EXgyXKr4wSH0FZqGFcQaZqGj2Y5xza
	 w9o5Hq7fOiHuoRoO5o6eCfxU2a79Jl5XZBFX2+lD9voRYKZ5L50Eyj8fi/aDnzYk5n
	 IVaMT2pBwGYSCxtVdlJE/d/RK3gYJe1SSmyo45ERnuyGwIW97D0ynacWGGUnYrKzcU
	 QX54vQCLPJ3Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C980EC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332696278.19127.9882687844572363380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4aafad52ab1583ac4fcd444644605bf9554ac884b4c8710d7038063b53038ab
Date: Wed, 17 Apr 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713326962
