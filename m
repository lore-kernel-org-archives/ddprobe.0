Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA223148B5
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760450994; cv=none; b=Trb3Sd8PHDV+WX9bkO1HREMl8NZEIVN/TLA6us8BuvGf4ZctWMa9vSMXOnLn04yJyZ8NrohhT5BgnvzO17HqfbqDi+T99pbZPDIklb+z3b/BlQZN8lZ9t9zaUzvuSmZcIqoNQJs0tmbtc0lcsM56eJHcEVZGVa5A3lfM/WsizT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760450994; c=relaxed/simple;
	bh=kyqjTngh1dC6I/rfrxcXhWBLXwns+M0p80+dbyH0rWo=;
	h=To:Subject:From:Message-Id:Date; b=FnfZPIHn8561YqpTi9q7ZH2ke1Ny5gS9aalkz6toeZwjMfvBCMFkI/BGtjdlGyAB+wcriqZ7vAeMH4RQ5JOvIXbAUPjnxVKERC4iPp18CIQGCaMQLYZ9ZBjeLZ7ZNTV5Iu28LsdMGR85UK9EwCyOeubynCip1GfNHdYVHZgPYHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7NTvpRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7NTvpRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1D6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760450993;
	bh=kyqjTngh1dC6I/rfrxcXhWBLXwns+M0p80+dbyH0rWo=;
	h=To:Subject:From:Date:From;
	b=Z7NTvpRGSbti6xmlSZLGmTpJmI8nsvntgsSF9NGfE8RVmx8GH73tLZi2LvcMpXRf5
	 WE/0OhEA0lFPz3ja4/M7ErY28yi0d2IvFy0G9Y5FyKmbXANbWqcNuk+6o5iWevTOGc
	 eGM71eZGNpeaFOQXjhLTGbM1+1qmcLxqgiNdIvEXaebPFwp2sjTPphAOQ6Cz2Nw3QX
	 nPcrgRLaQz0X2Wro0rJ+zjO9AWGyv4+8zyXHOAjpx3HiRn2FacGOQFNr4SaA3u5f6k
	 Ro7PYGKtVH5+Fo8BD0JDTQDs5D04kBVHkPrWlBGz6K/4qDg0XEMGMpF2K6Hz5ulyUr
	 Sodj41DpNCADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A0CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045099358.9707.13883347260558424041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83f16de1b554f915dd5d8625fea2ae384dcb29f9ba094926bdb3b4529ab6956
Date: Tue, 14 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760450993
