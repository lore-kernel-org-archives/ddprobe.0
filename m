Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1AA26E173
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759502994; cv=none; b=MxdwHgeKpVqHCZFWBOi+czDnCdbOIma65gall/XEZLQZbtVjZEyCUa4bxKASck3rwurPNglm7WovfAB5Zwf9WCSuWVNNb8+SD9sESXPBZwxaHKyZ/yru0ivA20YPgbUKbTmIJBtbyKihee6sRslimLm7q2utPGzXur/ZPXN+zxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759502994; c=relaxed/simple;
	bh=fEUpHucguxd8HxYeveq3LPArww/cEA94FF1fHa624HU=;
	h=To:Subject:From:Message-Id:Date; b=atD6Zd+blQB6Wwx4foFZaaKeBbT3cjd99wrySt0GsSaZ/rNcg9iwgBoLO01dJY5r9v8CizajwYIu83slg5PKJHp8nn1x4FWhjl7KYi2rIPbdmhc8U/Gv79EJUIgncwtKiGrfpV9xMQ95hulm4wePU8NJ/ePYsWBHQJpnLLdz8/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1MLNaAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1MLNaAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE9C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759502993;
	bh=fEUpHucguxd8HxYeveq3LPArww/cEA94FF1fHa624HU=;
	h=To:Subject:From:Date:From;
	b=M1MLNaAusDk3Afz+/GCBFWMkAVKJ1HEQsX6iQTY24bSCLIiLXdZ1revKdEnIRUAHC
	 IrBwjnrAFEGqES2uiQtk0fHiK154IkgGB7ncdO9rH/2tJwSSwfmoDUfzC0G+57FTx7
	 ZeJl8nu31vUh8iAnpMsPvA3Psqybe8Kvxc17eO2SmNijM6MalbetpN5QHJ0jk1uZqE
	 PJfV7mHM/K2QkDWiwWePKbKLMLBLxDlfqXPvBv14T+GASsnDU2OrRQSUWfa48pc/9S
	 F9YlkxLiR7xTKDnn402gVUUDCYWt8c62+CyDSS8gHP8DyamfmPflLBD2nDdkaFcn2V
	 ya5mHnhrzvJ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B5CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950299357.12905.4164627723175815303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db45f6843ea82d5480b7e2a3d6be6d598ba4871bccd62f9743761a322dd071d
Date: Fri, 03 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759502993
