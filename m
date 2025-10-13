Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168392356D9
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760318994; cv=none; b=awOiwOgeHDnotDj3zjQeUJRX9rqDWU0hy3O0foAws2WMR8LYLWRX6+fkWCRUCHgZ+tDj8mgGBdgyb0EmeXGVbqW+ZSHVJ4XJXqx4OwMaVQrBAED8Mws15uv0poHg8o6OpujFoz4nHKUwZf2e0TXmhL3FC2ooD2yOya+iJI91V0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760318994; c=relaxed/simple;
	bh=RS8ZhPI9w8g6ddUp15cK17NOnoW9M4FeyU+7p0A9gPg=;
	h=To:Subject:From:Message-Id:Date; b=kqtUql0miSW99Ru2l5zt9MI39vDxrAjzsYOoVxFgZcF4tRjPVdhTWyxDQdero7jqfsGI71K8nifsi0yYdUm6TsM62MFeYZTvY0R/V+etbsqo4S41AA1Hllutvj4PoIXFezkrhdJgN3rIR8Rz4pD0JFXxsnVG7isd5Af8Qsnn2Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBfYHzAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBfYHzAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B3DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760318993;
	bh=RS8ZhPI9w8g6ddUp15cK17NOnoW9M4FeyU+7p0A9gPg=;
	h=To:Subject:From:Date:From;
	b=dBfYHzAX+sojF1R0sVC8G7saz5XnmtSKNnkT0JCMwTxgDZE5onh4anXPmmxK0AncJ
	 v9fouXK8oBpxM+LX/5CFgVPiOsMvELSa8j+ILtcBh6w53XA6HO23iCasRWgI6LWQ/2
	 YqsNIcspM5YG0q+2rCov263+JaEWr2/v+Yma119oivpcBW4o/FAbCJd3OMjpYZwMxW
	 QCy2Zvw3AakRq2Fi/tpEeIxrkFcbPNPWdeyV4ST1MWwJ24knqcEQ9DJTmdivGG9EQ6
	 tayV49R0JwAoYCGMVOqshFcJuosv0YxS7Ytk/mkTm6pTE8zeeCR/aIkV+Dyq962h1R
	 iJsWdVK1zPLeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D5CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031899357.16773.17550238620111130509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e08dcc9f9d85d7b2f8f7e31c6738b20022e20c197af0d5b7ca26530c6ba932e
Date: Mon, 13 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760318993
