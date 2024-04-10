Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1599D178CC3
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712766497; cv=none; b=rdj3jAqVmyn2sfizWDq9Iflo3DrogtBw4eh+P4DCzsX1vXTAeFAfrjFcFzB1M1QVzpwsQNPvNw3ogMgbrvYczu2CG0tnwNNjMmhKnF9jBg51PZu6pVnBG6Biv8pcZ3Z07QGuZzV/8+Y6S2NrAxI8dXagpxG1xPCX1WJIgUN1YBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712766497; c=relaxed/simple;
	bh=2F772lYiYKCKS6ScIEn4eBkl1f/N26GBeL6wNzVZ3Ns=;
	h=To:Subject:From:Message-Id:Date; b=sIl2laiBq62tPn4HQ9iak9qmmfNvqJGnVbs/7KS/MvLuYaA19cduc7Mia68r0CI+54rgK7gaaLyQum1rTv0EBmhBs+6RD55RcaePVdtBIpruFoG05jbHHQHx/206ZOJWBtKn2UwsH889AJlSehINWqfeYpSUM0Fx/Rd3/k+v4SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxmXf625; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxmXf625"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95890C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712766496;
	bh=2F772lYiYKCKS6ScIEn4eBkl1f/N26GBeL6wNzVZ3Ns=;
	h=To:Subject:From:Date:From;
	b=FxmXf625QkvqcWi1wiVwXIyp1Snxg264R/eXA6pErUZGr/F2QiKxzSXXtHO2f4wAS
	 AZX4gvmeHVfuSj3OB973qMPQQa88OyNH1RgdDHJkAkTOXmjVB1OUL8lZl+lJGg7RY5
	 RhunFMSFR4DIJzrZjPqwjeUJtu3h91WA6Du+Yo5TRMHd7zGqE23uISoe2K53d6Cpq0
	 bl7tzsTx9DXevFIe3z5smTDNTYoxO67AP/2Oa8ZNmEkBAlPPY+SqwPnmsYcUBw11EO
	 5sjE8ivlkSOMg75OphGdtKM6bDTdMqmfDP1rWWYkLdqDDM5EaYGhXxzvLbMX0Ltk46
	 cX3NGFKbg01TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F1DDCD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171276649648.14565.16300355598580238075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a457989215d6b311a9dff3bf68885be0a0bfc99775791b6bbba05d57573600
Date: Wed, 10 Apr 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712766496
