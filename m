Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4795133ADAE
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786259434; cv=none; b=f7lyqmxcxdRN7yN/V5wxyC+NpEGOalwCucCHWL8NXLoLkl2jyEUiDRhOIR0jYLzD+cSBstFLL1vBhSMLKyA5PwZXnOp0w2aWcsx5OdgvkCXE4CUPZF+GJAw09ZXV2Y037PdZqwDsRCbmJ9oLToXFNDtUUfvY44hT6+b2qhsuBNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786259434; c=relaxed/simple;
	bh=EGINcyC2RgPhnnIV6gjoGcp4CdQb0gjF+9NqLjeWMj8=;
	h=To:Subject:From:Message-Id:Date; b=uygO7mtl+o35pRNdyrL9clMHvok1BOb3DqXkKOB+vDkKeOGeDw/wvGlfEn6P97Z/TL6pmxRVElRj6PTuOKP0i0WYeU4mAwKBIxiVqHjagKnOsF7P6+mw9a0CeFXqzJPA1HsAz18sYyp5DNB681mdLFuIaWl6VeYBxbLyewV8kmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o98+e9HP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o98+e9HP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D618AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786259433;
	bh=EGINcyC2RgPhnnIV6gjoGcp4CdQb0gjF+9NqLjeWMj8=;
	h=To:Subject:From:Date:From;
	b=o98+e9HP4OmFBc+olVQHJ874gmYwrpKwuioBmejm4dqjF3zFo7ywZTzR2H5BtmNPS
	 MgoKW5Qd2ejfNZrvByLLmGOMHIqVn4rT1+c5fWx+N6zHEKI5rkyj/KZ9u0fGo8IE1v
	 pwR5MBgZ18Hj16zzRrUw2kAXeceUSIkmQZI4fIwD8S86Z44rYSCpkCBM/SjffAKswu
	 Q6ooFQUWpQ7lz9fwgBnd3U3Bnl/cZ1ROH2iZUPezEpDv/y6KYTqbFTqtjcuhdIrEeU
	 EPVjLgN3vpsGY0PGW2TFNVacyeF/vq/+GXOv6dtDfO9NjBx724x7R5QFNk//ea3aJc
	 p5iR3yndrK6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE70EC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625943369.27981.2785759925574566024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010c6aa4f6ec6325ebea315ce8d9d104a75a99f089ca61a1a7ca1287deb29e9c
Date: Sun, 09 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786259433
