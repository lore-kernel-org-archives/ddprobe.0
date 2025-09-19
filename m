Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3EA227BA4
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758308394; cv=none; b=R/CEU5lGzM/cfgvQ/n2drVUXkTcFUmv6XlK+3bd4fv6jyKLftbmQmKQlaraHdjgM0nCmhSf5lqjFzuO4fI2B6yRYiCfYdpTxQwWqlN34lq8LEQVMhKWWXKT4wJ+yGP+1XEflfykLCGnTwmQ7gbiZCz0th1H8gd/3yYwiIMqnVOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758308394; c=relaxed/simple;
	bh=wCqHGzlRt9gTcMl4pcR3peN0usFGhUloK92K0c7yTLg=;
	h=To:Subject:From:Message-Id:Date; b=ObVxz/iiSc9EE3GN2FzqQgqaBYVH/6ScC5cxkuqhYRkvoeEi7F+8yOlHPLPrFdIMw0Fnvoe3wFNQ5ppwylYFjDabfxgIBvyPdREnKNC8gffLScGOanEYnIvNh1cx0rV6OHplAMN3MHy+ujrGTIAOd8oE0bit/1zIlkezPwecBmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnChRHQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnChRHQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5810C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758308393;
	bh=wCqHGzlRt9gTcMl4pcR3peN0usFGhUloK92K0c7yTLg=;
	h=To:Subject:From:Date:From;
	b=hnChRHQC7q3dpGk8Aev39gdJkp38g5vZ2WIGZ/Qq0ZHCULsPsO3evrQf1h+q4sKiJ
	 Lrd+FCNCoRyO6lvrdrp4PdaprKQT18l8AH71YLfCQHjtqpHPAQMPi+QujnykUfrfsj
	 I+Zt8PNsXZD3Q/9y67pufCZv6lz2DcgX79wPLrfJm8p22M6AD4TiD4TSLa0ZlSFHTq
	 wMc1lYtqJpeheyP5bsksKGy4HNG4kdzNDr5MXgkgU+DRzp7sIBIWxL0qyzbaNVLBfH
	 D0DId8Rr+IMWAxvFdw9YDAvE0X5mQ6Kt1AEQ8PQVbZIbfocDJDG5do578N8L3CerVN
	 7zWTQLBOeTzBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA5CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830839358.27060.12934451287977872602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1012eefb1d77ef0f4ba620ba73011233438006ddbf2084e150565e84786174d1
Date: Fri, 19 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758308393
