Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9F81F95E
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737172554; cv=none; b=ifLp2rFSIPAyyd8UWK1aVVhdx0yNESCCXYc2GNimNd9mGbadvBwybpn+xpvx0aFnU/6A23JBdpRBmkFNvnq7dUF3D8VpEqjuT1pn2JFiMC+OX/7mjjveM1xymG8RKYeA1z/25YnkM3Lkfj50JLqoDOtRp7y+cjXkyPAEOxUXuf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737172554; c=relaxed/simple;
	bh=5Nz0RKiU3Iagp7/+CKpqGeZ7139HjeMQJhcZYl4Fdvs=;
	h=To:Subject:From:Message-Id:Date; b=ODzih45VieZTvMB42HMRvZrNwVBY0mRyXy7CGJGlZ38gJkFyhG7KUrhTaNa8EvDFxqFsjAQsByEfJHcY7kEPAE8ogqHfGlSi+A+jKTD9wPZPnsG43/VI0KUopTistNAa+Of21/lpECcp26KC8MFC0UpueTBVqZlOOd+3kffky7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On4veg/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On4veg/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0504C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737172553;
	bh=5Nz0RKiU3Iagp7/+CKpqGeZ7139HjeMQJhcZYl4Fdvs=;
	h=To:Subject:From:Date:From;
	b=On4veg/7ewpzwnnEiW/kLXOqFyAqLw1mvs21XsdABus252vOeTtoUvaBzxUYc4Nss
	 yyZ292khmRuYgHyZiFLo+e8vMI+eGmPKlIWBo2qmMvgidJyv+hH/VP5LTXyw/0C9Vw
	 IapC73GFSSbQDZRMTqeMtg53uHb58UwpqXZrBOdsFUL/fmHRBK+rVWupw3OuPmUXT8
	 bQDeveArIf7nbIL/ooNP6+VyQ9tzkO3JvAE0gQI5wMvh0TS1IplYUzcOTh2rHbJTS8
	 FzUvJCtSY3tC/GQQlNXw37xxktPEPJe8vA303nu7nURWF891O76OdwmaQig25705YS
	 fDJye16O7RN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0CC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717255358.8747.14423837721680967572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cebe13a0dd4b48a9ca19b9a3bf1313e12ccef8236cfacb497cd632bc40e50a6
Date: Sat, 18 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737172553
