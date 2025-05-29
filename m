Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9B422258E
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748519995; cv=none; b=J49hOt5gIJSc7L6p/anoxGrGtX4eT2iol4+bsV+2xpn2gW1HXg2S0b7LlZ8z2YC/lgBUegSstPAv+ZjHqU6GUsWDwVftIsTbU1sOAlsDOvfKwfCfxx7R12FpS5WpxesZooL8VQBZrHx41k7qy/4zihPNzAFocfX8Wii6xuOhbEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748519995; c=relaxed/simple;
	bh=LDanKOkJkW4T/zzeFH74WCNPJvShf2ccJYnceS6qCRc=;
	h=To:Subject:From:Message-Id:Date; b=tsKaT6vsBHxXn2LOZ+cr5+DL1WPOzQ9ynCh7ROOVXmu9ZHRu4lEdbg1Si3GWnWtiAXkutmvRs/BCRXJp2r0F002IdyvpsqDoT6levSKvoyemMDgbUlVQhLgoeVicIiLfv3anAZddPUsPrR+uXlVjPoEpmlCC6zFyuQfZbhQyuLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSsSRfj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSsSRfj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C812C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748519993;
	bh=LDanKOkJkW4T/zzeFH74WCNPJvShf2ccJYnceS6qCRc=;
	h=To:Subject:From:Date:From;
	b=VSsSRfj7g5zE5ryA7uEDNDCtr7ptyC2S44Szv/O9DjpZ2BbOHME2/LsUmbcjKnhCn
	 h5qrzm/TaoJYodf8p/unhNifc8M966TDpz831vIyudGUz5hL28TMG3/eWHFOUQwGmf
	 nw8rCffNXG3vNMcVPEJFiN0eMVRHOdp4BaooF7GVnK6Wn5/Cq8mclHQF6FUH8MKKUU
	 +VOr4KajUiIp8h6Dm1lOg2+ymESIRm/uGmPN1VgUUDBcQTTcO67Sb0jE4BYrt3WP+C
	 TVagbQMVGd43B9Zm/XdxxsQBtlxhJvHALNVcZuUd6TpyEVY26w8B8Up8SYLbDdkmL+
	 TNm8/S61H2yIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC78C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851999357.27381.9963526095871603216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82de65bdae5c73a14b6d99d3acf8106c89ec98166b78e550c717bd746370ed88
Date: Thu, 29 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748519993
