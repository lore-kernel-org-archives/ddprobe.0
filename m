Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA4416F8EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718096903; cv=none; b=IF0tVbGjJuD2u0uZCBFiuZlfN7Vr11PZYni8IhZ91jEwwp9mZhd85pAtSJNjGkOXxaR+bvHIcgZXbmkekDT3IrfyGfcd3gStI6/JQjWpzyW92Xl0JTa3tKsm++OLFfec1aWzy6lGZE1eBEqtxcxRgmjn2H2d3WqvEs8iTSGeMO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718096903; c=relaxed/simple;
	bh=DnnAu2BaW/dwdLicuFNf3Cu0YGyEizQ/UeSa40v1sno=;
	h=To:Subject:From:Message-Id:Date; b=OWAnOflIMHZtlHtHXHvCCDcGyRI2aE8HFTGGo5tbymbBZP2zUZfDIVjiHRseb7n3+8lP/XbDSbAedxOlwM0FmLRtXr6Q91CTxO5etyFn31q6wsStAy8awzUOX3kORk3U3ssYymw3sb4rH0guRP5p4Das33f0MJvMglXo91UOhk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk3e7W3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk3e7W3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A04C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718096902;
	bh=DnnAu2BaW/dwdLicuFNf3Cu0YGyEizQ/UeSa40v1sno=;
	h=To:Subject:From:Date:From;
	b=mk3e7W3vbCo8J+UaHb65geoi85I7mlyEr7n2ibmf7Ui39PhXWz5CTIcOkJpz0hmTf
	 ZDUwqa4HO9Imf8xC4I0yGXnAD3BtwsoE7jyfYVXn4pKbCdNlQzYC11gjo0nzcxqnS4
	 sQ/mbUE/lxo5NXZNDPN/PclxmmVX7qmNuM1lL38/gEEGYpZ1kNiKA7T07Rx9+huY11
	 32VRxYkMwRzH+140rR59YCn/S3NFos2FgsC70HcuY3nYlO8bVDvaaICatmfHL8uUq0
	 cHjEN5Y8AD1XThiAU/UZROuceT7MGNvjjNkTqG6jw18l6o0Pa2gGmUk3W8zcA4DBLT
	 f7UYHnOJClsVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BC2C27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809690280.3763.5845083773716459550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633a9aca907e75b42ddd410f4e1baa48167207c9af5e42b79a7eec85a7172cd7
Date: Tue, 11 Jun 2024 09:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718096902
