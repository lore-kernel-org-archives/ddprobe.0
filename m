Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D3C24B26
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749100194; cv=none; b=j4zkMmrq7cNjpLW0wTaeR1O1H9PnD2IT+dIopy4WIMUFyBVTn02U8tKhwL9dPyAVETK6bHDbvq9ueE4tXu9hJ+BPUPaY7VrG31HuxZVIzd9zIfofoaABzhQV7kGGy2SrnH3/lFDsJZOG7XyLoy0xSQG3V7JWd1WuVOerIJSvcTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749100194; c=relaxed/simple;
	bh=2Bmrf1LWDnTYOr73xih+sH+pAfGIkMiNG3GjLZxhsLQ=;
	h=To:Subject:From:Message-Id:Date; b=hVwTOjNXIaTEeDG3aQyFYvKdyNMWc+ZUNiHZB5fofAoasV4aB/lZHi7f5857IgmvxVao3/q2+1IVyZ6kN1uHNnnMTb2yTsD67PtEKkDkMxZM9yAhXdOCsQh5RRV9K1IOmw4lmS2iK52OeDC5JmTTZuzYJvB3q05eMy5Fe1ebbv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6YBviox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6YBviox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5531C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749100193;
	bh=2Bmrf1LWDnTYOr73xih+sH+pAfGIkMiNG3GjLZxhsLQ=;
	h=To:Subject:From:Date:From;
	b=n6YBvioxsG84RXwt5IIt4//E+uk1ZxsBIaq3e6Tpm0DLzxRXBgFMOZzEeOGd3ISC9
	 7hH25e8TraVJARJTSyWA7+f731vd7NfuTpeQyFMXoZCtuaa7Mo2ZPJIYfDaDpw7CRF
	 wTusmyKbKkbG4RbnQ+NWCw8AZuZkSMjiuhjep1edfO4aJkj15tNR8P9YjiO2wdN0CW
	 nws2xsi0f9RqfjIJBwaMVZ7q4yvV5ZzXsGi0IuZj3Edkv64IPo2iCaRoWyptokaRdt
	 zYlGSxNAu7n93cvJ89y46aM6U2wBDMi7IqHH+MDz6ur183WT2gv7qG+i5YmyB/dw+H
	 GciR9XKzZ4WSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEBC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910019358.11449.5473971438391113148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05441f9bc08a9d2a1ae0f0cdfcae754199f095c1076c3fbe44191a2294359aa5
Date: Thu, 05 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749100193
