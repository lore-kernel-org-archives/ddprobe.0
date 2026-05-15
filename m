Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183D725776
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778803834; cv=none; b=Joqpd9AHvm5X5rc62YKwjKOjHkvnP6w0RwaBhgSu166kMQ6AA/p6dFNkIoyLvrAvYE5LyPFbYNvI95MKtDHCeZhBEB6ICiPkpW4OCpNMfMsgwQyed4BUkrELAaXRtMJG+5IlqV/JnJGp+WClL2etIYEfdQQchgFbfTctHZrB0y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778803834; c=relaxed/simple;
	bh=UlWPQUov1FSk5lKrY/mN0esgYOoNKbKn6QIdCs6FenI=;
	h=To:Subject:From:Message-Id:Date; b=lPcUd7QnliGCXVZSO6l3jSiE76tAgXFAgwhhqRRWCM+vK8VKOreyKmWbgq4W/aj2GJAj9y+sbEm/ZNzJD0j6afL4YbOfCnj7iVBVizu7N15dXMXDe9Ta1ee53CFKPhAyWWcPmFh21OzKiapOM5/uVYdYEld+/RaM5A4j9FVGLR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W01cwSUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W01cwSUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDE2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778803833;
	bh=UlWPQUov1FSk5lKrY/mN0esgYOoNKbKn6QIdCs6FenI=;
	h=To:Subject:From:Date:From;
	b=W01cwSUSSUy8wnzuwVbA/ZMsHhTAiZ83jMUSPWDLrebLqL9XYJ/WOzMCCP4BbmqfM
	 MLCVLUmX7Xj/h271X01x7xo2coMFVKOW+wUVfNt7iQ/gaLtWu6yK6Bfcz4/SZDArvN
	 pYzUegvYoPZ+tIcnv16UupSSSenWMrMfQgolS+Xx6rlFkWqZeRH+rSpfzJAD3drojU
	 qwBrzLf6Baz9H7HTArzTKAlNZzEhXks6MLQfxv+t6hcEWbTNzZUQVLhZEfc1em6oCE
	 Dqh5gG8xWYc5XO+YJ70grC3dBhECUw2YvDoHDhnQQ2e3Swc62US7LDIvCxvUJaAmRL
	 /yzHCpcdKT5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA947CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880383368.13289.3570272021835263901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e74ce06057280fdebdd0ae988e57364599ac59986adb3d2a4ef468d6762e2a
Date: Fri, 15 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778803833
