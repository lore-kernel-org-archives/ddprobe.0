Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6845E1C2E
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717634243; cv=none; b=leWUYrcgB+YzyXWsmZnXiTXeElNeCrrMTxQokP0/T693NlIW9NXRK6eHu5wyXNZZuzincazswClx9OKLshkP5vWufmHSppIt5ozoXGnFMC++Hack+DoTVF501bknB4+rsE9HUf6wLc8gMndBUXNbY7q65bAid+UCIrh8ahyz61g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717634243; c=relaxed/simple;
	bh=oRQbahk4rYSW5sUeAuHVKtF9YTLksPC39qqhTKP6p+c=;
	h=To:Subject:From:Message-Id:Date; b=nqrlJgJ9REtHIpzoU5Rbj8Ed3JpKYhPAlB8dK0YJrjQmOg4o66ZzocuKopjYqpQxXPaCf0KCM+Q3ZoeuyQpK2qW64XsARiKCZ4bPK+ro7Vk4MkdNeqOKLCSio+f4U9l330v4cP3cIy//BNoCSvPzmLNUGnO3e2ZLsfHm6tkXrPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLBTcOd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLBTcOd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAECAC2BD11
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717634242;
	bh=oRQbahk4rYSW5sUeAuHVKtF9YTLksPC39qqhTKP6p+c=;
	h=To:Subject:From:Date:From;
	b=RLBTcOd+RTHXJqVxqD7m1oFihlWLouhTNh/S+KdXcez5lOTvyV8mK4AgK5hlYTI8k
	 LHZ8MAojQ8PdkbRFlv8PCgcMxNHXpD+ak8Lez0kJ/WCYIBqkMUlrQWIqVo07vaDEzA
	 4Vw/jWoK+JyFbt7hku4CUhlve0DwqQNy/ZI3ux0YDqGPi3yVyeagVMWRvCnTsPrHNE
	 rc7em3QNTTAdyx9XrTNMC03mKRvbbgbNUgP8VSU27NmRAuMOXz10WzN1MmGmCplIia
	 6TdNz+yMFO2PybMaEBUFL1VNiDOB0WXzYUXID+hfUDiFSdkiMoDh4ZFnXfm4GCQIZh
	 SBbsZVvChn9RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79F1C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763424278.6802.3619158289920027740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f87af97a454aa94c136de1b39bfcba364d1bc0bb17abbd2dc64ff0170d2b1c5
Date: Thu, 06 Jun 2024 00:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717634242
