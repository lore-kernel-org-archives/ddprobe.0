Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E3E2E92C9
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751038194; cv=none; b=NOEnOPRpewnhaOfsSgFt6bZn1p/ydf+4nVSUCTaU/p5yy+fltCLkGsggE0Lx2hmXt+Hz44bqaxzcQx/b2iTnjwlZp+jcaN8jPmIrib9Gt3v3flqDJikuepQGzMcLyiZMoZID0hMl25zYUmzZtspjOsFWRnipXfO7q1hmsSzSOyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751038194; c=relaxed/simple;
	bh=4Nl8qTOdBd55LDXB7GYAo5GldVvo8x7tNgBxToI61r8=;
	h=To:Subject:From:Message-Id:Date; b=jUTsiO3dqJoeE4pefL6DzmmMwqZ0Y2MphKQ1tFeNFa1HE1hJb4XeGDvaFyUA/ZTcFRM33344db95FFLvO+9y168w+17GmCnYoDZgw8xP0P7LUP4SYWkEBQfCHm+iHONjRRK5i5X+XzGDT2KUOfSjRAQAIe2/nQZZKn8cvTRK9Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPOWCS0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPOWCS0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8037C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751038193;
	bh=4Nl8qTOdBd55LDXB7GYAo5GldVvo8x7tNgBxToI61r8=;
	h=To:Subject:From:Date:From;
	b=qPOWCS0DD2247a6R1LAfasWHd2XA+9AumqCnD1wlF22619zFnUKFJ2X46+VQ5zPXD
	 34kcNaVau7xrflWWptGjlbTvS72PzGLhzYAoblqdROiUei3EYgTMAD+TBT2iwibi7M
	 sJrY5HLz6zkfULao9xxly3lz6Ls5t/FRngp2lPYegUod9xWi7rnpmZ6oNt4COHVmID
	 W4HjzzvY+U04nfOOV/HJcFIId3wWtlZngzCSrdRkziyTx5tvI5zdxUe5iX09dLFefg
	 rLFxVCtHculR82MbN4fTREahlp3jaHzz/SKwk/TJi1wRMUQLQSxGUbHqbBnXMvhroF
	 f7Tu8kdF+WhPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94745C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103819359.13585.11628101140617514340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0998548a9beae78620dbf310db217bdc2665bd44dce7c67d282a8d511be6f970
Date: Fri, 27 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751038193
