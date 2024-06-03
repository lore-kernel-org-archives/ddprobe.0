Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5650B132134
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717430123; cv=none; b=qtaGs9dvgk7KVSANx1dJcL2/IbZnED5hdL1cO9QLm0aLnSzvhrjYhV8To9aMx6G+jzHRx6XphZdKrZ7SEUJdbSp9q+3u/EHXPP/yjfakDoXegLrar+gag+V/0b0dCIsPhjGeNqkI+O9vHo3QV+JidzIc15GYvN1AXmNA4klDIFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717430123; c=relaxed/simple;
	bh=iyGCQdmmOOlhz93X/OiWVcC2CZcI8E88uNdNdzCgUNY=;
	h=To:Subject:From:Message-Id:Date; b=OzQYcIErV60yFoeZt8vjE/+z4jggu6L1B/ZeNsCsimRghIBG89ZFQIRuJRfAdMr9I/Y5M5AuP9N0TEl13nQ59qpvH+6Re2yPmIjAtXTy0ypWEuaSD9chX0y3NFED04Y63JQyU3y7pYnC5Pvrm9uIbX/7i07zwmwDqHmY99l7RAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQ/nGCLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQ/nGCLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26DEC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717430122;
	bh=iyGCQdmmOOlhz93X/OiWVcC2CZcI8E88uNdNdzCgUNY=;
	h=To:Subject:From:Date:From;
	b=AQ/nGCLF3ULqdpj1s7nLCUPYyw1dBDvfoDmUal1LqhI55WSg660isDr7NWQ6Wz1UQ
	 gQwSx1QMtwPC56B2vo+sDdNCMLhRbuehWSMcJOxo9a2YLtDN7wvyrawC6g8Qs6a/wu
	 qS33Mnxzb5zTKN9QErSrX6hFHYZN9hmvptvhqKIA4g3HrHly/tTcRNHv7Q8mhVn8s3
	 eChhVB23hRoQ/IKiugoxoJ/cBZ2QLWopvpC/IDz/Tx9rVfU2ujdoHr5gStyHsOJgvf
	 TBsYsdhfze5H/D6Q+2QQM9henRu25usKhvReK0qgf/8MszU7s7GqrOnTcmpt0UXWL9
	 7PbXxO0rqdN9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC365C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743012282.3812.4205937444293700941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1a6d087ad3e07a391c6e6c68e27a883b1b5aca62236e0c6553d619c0f1ea3f
Date: Mon, 03 Jun 2024 15:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717430122
