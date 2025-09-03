Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D71BA42
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756912796; cv=none; b=QHwpdABIjnKUQHEnPi1Y1j0Ndt9Oa3+Z2+gJV6c8DXh+58EwZyKH3tNLSLTRu17CiXT0qlc/dKvLPXlMq2rHANlFSUBrnz+OHN6fV2HV2+jogyJ8Ne97WeDv1Vhn7UwPF5bHSe4O1KMYVMZ0q5VkAX6eLME7uYh63SYV7OWizSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756912796; c=relaxed/simple;
	bh=sLedTNW/cTp4z2LWIRIMhkyA/hG2mOaeAY2h3F36sfg=;
	h=To:Subject:From:Message-Id:Date; b=mi99QuE5hW8/+lF8XCtiUxD/pzO4ZnUdpB48Wb3WVbNkcwMbTuKyp4Q3e7/8AIyk2rc95BcVvtNL7ua9knOws561SY15fMNNByxWZzUFY7p1cGdcB+fkvOafMPhKXSn0rMH7RqNxkr6xCl/tw7le+BKJ2Jow9J7JFwDYgJiNiNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyyInd5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyyInd5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756912793;
	bh=sLedTNW/cTp4z2LWIRIMhkyA/hG2mOaeAY2h3F36sfg=;
	h=To:Subject:From:Date:From;
	b=CyyInd5irMFIDUqCkXyWPMT9YubS6rmL34cxYzOYhdXJ5ObVmUz/dY0Ph6gEjKVIb
	 PSH3LUWj2obH91xK6Pe1+iZmmRaWhIIZRjV5uf+vpeCf10f8p+edgVFh9pvWx+O6Xw
	 LG3s6lKOA5GT4F5jREP+TycFZ2BT2lutYKkCX6HVO8zeIT8zLxdCarmegpSUM/6NHO
	 WtBjpgPEGTANGAmvHaxmq1cvHr9MxzZLT6w0juYih/Babhf7Pqg2XemcSDCztBOOnO
	 vrO13wj2cYhPbLffmMEOYQvsHxR1wioafkhWfmYu5g+fUipjNtCHT+XiqcTKbIgegK
	 /KZoqgJENfdYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D8CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691279359.4471.6141252144793280475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208adceccf51fb9a42c8f95db8e1b85cfb5fc6125b16041d98bf98bb0b5e67f6
Date: Wed, 03 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756912793
