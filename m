Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1478D40DFAA
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774093494; cv=none; b=Y7ikN0sLPpPrD46zSpZgXe8k/G3LAPye9vfBib955xnF1Xsah+V/3YveJQ69RS6YTaQH/dPEVw8Mrvlat1DcQ8++AhYdAU/B9FYlfrpVcXbU+xN2dNSppxWK39/eAj+Wm+wIsmRLKa2JYPyzKwFVr3NtU/zs60eB/Vu9AzS2EAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774093494; c=relaxed/simple;
	bh=MYuHo170ksJ5Xmoo+VcO50hkJjpIeBGykhwJ6ElvWpQ=;
	h=To:Subject:From:Message-Id:Date; b=NIV36OKem35uPkSYgsIxb5d6AVKR5CItv5gpyUV/VLpizuT2u7dicdMN3QsTgj4cJWzfNEkhKrpzIJj5c9DJ0133PJl7JqI816IauwrRj2Hn+A2vxxkHRwnRIw4UF0mVUjAd2rhxzUdiLbdO8FuoGBtiakhB/sWjaPXkvyHSGEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxMfFMAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxMfFMAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBE2C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774093493;
	bh=MYuHo170ksJ5Xmoo+VcO50hkJjpIeBGykhwJ6ElvWpQ=;
	h=To:Subject:From:Date:From;
	b=QxMfFMACTndheCIkn8svR8w27jPt3RHUTKYPkKN9eKP/qnzQl7UAgiHivNXUxx8Hr
	 zi9uswKjhD9ewc075ZtAO5c7U75iB3nyrJRja67HsAUkYWg66G150+/t2uIpe2EM+t
	 tMMaOegyK7xeJoGXwzti0LwP+41VD5Vhcf0Q6HpJgrcMkHn+EunEar8ATFd8yM9Lgr
	 1CpCmIASzb05lF0660+oXzwI5hubWLAHNRUuuHC9Hkunn87ZnlxDL36Cu1uDM6vAnF
	 BGcexeT7Z/l3MPKkxRDahd9TPWE8sFKbYcquEeKS/AG3Yl94KxsvlCUAmBntQ2R85+
	 qACtea6XlOF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C01094471
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409349357.3413.10299579031826501899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aedb70abbfaaf6b75798f6aad1ddec014251de70fb38cd6d990fdf5c035649a
Date: Sat, 21 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774093493
