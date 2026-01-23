Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F7926B2AD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769190234; cv=none; b=rekcQy/non4tHe5z7yKakqnv7ocwqiQFIAJLInhGv3//oCVOkszWmLQtMiv/A0rFNIH0HotVqlENDRSf3I3J7xi2rYHZbmupQZQtSF+ER1WFRnXviN946lSLTDKQK3xRTIeFLq/oL28GYqhTE4NByO/8J0db7j2D4NaEv70tMCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769190234; c=relaxed/simple;
	bh=lDbaQa+1Ez5SJJ213xhdPU1RVwB5f441Tb5LJbf3IN0=;
	h=To:Subject:From:Message-Id:Date; b=JwMSJ61L3F2mIBsLjQ4XWCa9MZdI+WdEI684zryrW0NBR4Aq4IOQ9lVHF910RlXTV9H2wooE3wS0WuQIE/QaB9uamtW0BoY3IojQmxqLA+wvv5ZXDaDAjhuv7VWJoakTLXpu6gI4tgIYfFEM0WK5FMSkWlJEDe0ecMMdetLSEeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulxwZfyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulxwZfyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF1FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769190233;
	bh=lDbaQa+1Ez5SJJ213xhdPU1RVwB5f441Tb5LJbf3IN0=;
	h=To:Subject:From:Date:From;
	b=ulxwZfyZOO5Ip/tZQI6NECifIxrGcfuYvSwzZkUDAll+wa1XFlbdCBhmo1ISUu5Vd
	 Wca43V6/KuafdVgO4y3zcallvCTXMowDxrvMAEsvkmyuZqVC/+6WOOyP7OIDTWCdua
	 kWlTXx4RsXNMoKX9Nyglnrv4ifE0slzi+wUj1bcYlw288OsbAYOv3Mi/GqLPQ6eyq1
	 dheyE7rhWsGtnitG9DmgNjQ6L5EMDHVNEu4NxZavXXtE2TeSc3k8VW3dV/neAyrbu+
	 EWBR9TUnQ52k9SOA5fDziGEK15vuGcGgQAnCIiap197waf9pdltEde00VBuxt8XvNa
	 7wcGgZ1yUbXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90286D77899
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919023358.24458.8806724137814821450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85be180b8f921e664f4af513906965a8a354840318e9d2acf9d1ae9209725a08
Date: Fri, 23 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769190233
