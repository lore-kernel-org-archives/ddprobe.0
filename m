Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E73844C77
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746238195; cv=none; b=AHZgfxCuyJ3XPZJ+YoF9Sq9ox3HpmzhiO17xX6HJyP4b39H0bTbfqCutEnDIwNsgTs9NIXFO1USQ++koNNRe91cbzUfiWvXHo1Xszz8EAmVvEcpPCwhHm6D0/ZGug40vn1u23w7rM2JhbUZAaJA+a8SFSmWsQ9GekE3nm+KZKqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746238195; c=relaxed/simple;
	bh=MPfkpku6jIuTsLj9RXaJoUp97ZMoo9dTKrfjIle6klg=;
	h=To:Subject:From:Message-Id:Date; b=U6XlQvXCpPmU6qMmPxs6ZOnVyFwqo+ofe2V+sTVbQ9U+b26OCk4DeBaz1JF1lrnefmf0cx1ez2aiIGTAIJ18ayAkCwdk7HeqLF9o9I/SGjni0rHXq6FDvdahRAflE8bE/qDwODPFWXuVZ1TyohJb8EGl87kcFWtalAKo8L8Rc40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rU1QLk7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rU1QLk7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68BBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746238194;
	bh=MPfkpku6jIuTsLj9RXaJoUp97ZMoo9dTKrfjIle6klg=;
	h=To:Subject:From:Date:From;
	b=rU1QLk7TNe6c9IqHBrkIsXv2uQG9EhvAGTpclCCZdIhjwUowbZZfl5bkhrJZ+9goI
	 Qr3jQptN3wc8xH9ug7BivsvZSI1tRmMWZfLSUtSDSKMsvqIBXZA6DNrtw4Ek2cdCtl
	 jk9R445etnhD1MiAD0FDNtDG/7ut9QoTuT+Q6GItYieiOMPQ4la6/+DIG9srKwSuHg
	 /sL85BbAaMqHyP5wiA/nvJuEgYujihTbXGA/b69ovTmgsDt1RJ1MYNn+gZdoZmWA3R
	 yCPsZT5xjf2mGY0TDrRUQMOK+rHmNHU3xzbfCAmpg/IHA0OaC46Q5g+S+Ys3VCweww
	 ay/USOs234t9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947CEC3ABAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623819357.1124.5558449672515868459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0bf59771caca66a9a31005d1a2fe2a2cf8dd84e5f84aa6b91b86db3382855b
Date: Sat, 03 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746238193
