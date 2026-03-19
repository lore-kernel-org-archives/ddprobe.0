Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA98207A32
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773897294; cv=none; b=FeuEOv+CfX354ZFgUx/P2g+lAqqGE/1l/kuHd3wScRTYPHSPNu0QdMfK9tQXnCNfGiKSx09AbUUF2pSms1rVZcvfLaEFAJar9+/rpiIztfgLAIHlwN5T9yV/BO+O4qOQ0lrSkqOjQN3UupIVc9OZHjQtIJB+QYjCrqyrTDw/5vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773897294; c=relaxed/simple;
	bh=VOAjATSHNoyfwWXfpbM+9kZVXTDKAghDtboLDA/UdHM=;
	h=To:Subject:From:Message-Id:Date; b=uaoOpU3ZlLxpNAZCIkEX9AmIBYxBXppURdPFhRE4YWDgDpMhc5/9SEeELz+I2RYDK7G0//oUaFt7FkZVmzBsuaIBXpBy+HkzMkTkhwgngUeIZlTeOCNcuQxhpZkViwhcbA+CAmIrMKo060cgr4MXV+NRUuLFbfBnsVTZzPa0BXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxvp0CTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxvp0CTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C99C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773897293;
	bh=VOAjATSHNoyfwWXfpbM+9kZVXTDKAghDtboLDA/UdHM=;
	h=To:Subject:From:Date:From;
	b=rxvp0CTisZb8AzWx9DZqeHqp+syTWe4lyjGAqrwxSJc072cO3d2kq0dVhaPv6gaaV
	 w844vWe7Y7+cqvyC8WW2DkKSW5kSVhhi3tbSYMvblQmGT4GmlXPNBUx1Oq8HxTPQlb
	 PuzS9TKC/UGyVMwZK8aouwkbz1Qu5bvu3Jk3D0A7eRRgTPVBShdP808MMRGKIF68RA
	 2IwxzrCiedNHBtMRvJNOu/44BTR5QMdk9Ibr9P9M3XYYGGF8p1085oru23gYATjKt3
	 8thnAFfSSLFBGrnoWjCz8ZcAE8C6zLwqIDqEpgq/yFJEG7DgWF4Ts5hlur/9C4X167
	 HBAKlJ0l/fywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949371088E7D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389729357.20219.8470544412986163503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d3b7e9e79800d707e137874d0a9b6801e22db24ed2c3a092d23f9bc60613b0
Date: Thu, 19 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773897293
