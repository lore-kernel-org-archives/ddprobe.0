Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9CB4F1F2
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729571754; cv=none; b=uZvd0XVF8hDuQPfvjjlWd1DhdfaL7AAry9gMkPiC5qrY7ei1+oOWxjThK9RMqfT0Ma9gIeANEfhke+4YvaOUS/J7YU3VKw1sZSSKTjPjaHO7/fU5DxyqxzV/i6aDA/x6mBsofn1St0PH7x8cRe83z62TdK7gAUmnoMpnjm+u29g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729571754; c=relaxed/simple;
	bh=Az5NzLhhdPxLfkvI4pWLWlE19Ovp88QMn6wPAG5+Tp8=;
	h=To:Subject:From:Message-Id:Date; b=u5DDNNV7Y2imS9ePeyGMB8B5zR1c8N1QlASCVLNRIlsotbhGU7BRZoQ4Vnw8lfjP867HC/S/Kh2Ty04uwKVVFSLGtENbuMl7+br52vW2nt2ELliw1iy0z3jwZgdRKi6pSas+I0pVk9+k/lvAPbhPdbx3yvlFwPfd7tfBFuO4jLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzjIjCiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzjIjCiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E2BC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729571753;
	bh=Az5NzLhhdPxLfkvI4pWLWlE19Ovp88QMn6wPAG5+Tp8=;
	h=To:Subject:From:Date:From;
	b=VzjIjCiANF2VjANkoZUapqJRm7jp8adi8iv1RoZ4IXdhUe93iLnAEB58H0JH/TrbY
	 gbNvlHWRnHjDjg4fQvpnUyTqyp5R5GksxFpo0bCDyMT40zim/zoykzbgkx5EPqS/eF
	 +pMpz8/FJAF/h+J8tekZrnzJ1UVIticZiD8WoZKZuX1e6NF8t0HhCiFEcZGLIiITPZ
	 14ee3QeiszH496rHHgBDZXb9Ew95yPFS3PjXbpxtoWeu/zb03vjst0+vwGEFQ8WGYr
	 ugxYEXffIoGssHeP+nwSLaGuZPDDATzdmJxWFvOZPnS8YxxIrmoNTs0yszaqbPwiTZ
	 yp36ZahmYL45A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF78D1715E
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172957175362.8203.236663219404386243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440b66403e43dda9be3ba3198166811251ed747cb222dd34ccb1c926d0bba184
Date: Tue, 22 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729571753
