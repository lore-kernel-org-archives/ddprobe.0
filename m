Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552A02B9A0
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717050263; cv=none; b=CxIRyV/25b+ef2cJB5Lwi3ZjwoO6XmpKsYwaEuey8VGhHsXDn/AbGsl/0hUh7aZMfgSDinEOqcoci2OMHuBVG1FwvWv4I4trFzrJHJeW9G0auY2n8rimgTIjsXmbcBaVM3V6lFLdqFSxB8reYKCTYc9p/58V+rV1dhu90Qg0OL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717050263; c=relaxed/simple;
	bh=tec6IOWhnx95EqjA+CVjHWzYYsUpHoDCmDnHTrcs/L8=;
	h=To:Subject:From:Message-Id:Date; b=nHsP1pP6nN1VeI/beWEkiRl5F7ZboBgsbDK4q9FQooZfW/HXv548yhzYorady7D0p+eNDdADSEZdAL7WPQkvUFKzuJh2Kbs+hoBWjYV3sXWFicdX6jYWzJiq7dhd8eo/DsQ9yi0nkhAOfDxrOHYI6C4KOv15iB8Zpq/2ievG3uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5c1Y3ul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5c1Y3ul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E4DC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717050262;
	bh=tec6IOWhnx95EqjA+CVjHWzYYsUpHoDCmDnHTrcs/L8=;
	h=To:Subject:From:Date:From;
	b=u5c1Y3ulhrii1m7998XGd71TQMAxI8/cihjf7mxr+E5I7S7HE89D5pJZHTqaFxpRw
	 KjDNtR6sduDCplVYmhCnxfmCe1cXqaHq81Vx5JIo5LojtqJGn0bmEDFJS3dLG8F3Kj
	 tjn3EKbLTntYHUZC3/cH0Ymfrc/fO/6amfEnLWMY5MQhbvUBedkEdmNXJgOCn5cY08
	 2iLZ5pdcqeKsmIy1h4Gz7N8iizyKkdF9Ks+hEOfBvVQ5ZQqDXtU0yAZUVo276d/9GW
	 9tMjZPQxR4E9h/jrJcqLt4+CrzYrna6UlXTeUJMP0j+NITI2MYMki1gkKx6je5DUOL
	 kbW57U1wtp05A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF722C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705026277.9103.3638624768281588886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0e2c6b73bfdcc671c5415a2bffc3cf82f808aba90d6a057097e456a9112e47
Date: Thu, 30 May 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717050262
