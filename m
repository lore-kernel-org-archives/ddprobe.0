Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3098224503B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750973394; cv=none; b=TwVUoRMX3oSuyOLTdSrlIZ/ckzp5DS5HrxetSrw0EmbVj/iOE7cdJJqNpGkakTOYoujaJ5RNgeKUEeQztXrynD+1a0suh3CgQp6ZodlSRvUkqWoJUN/Z6AKq9+CZRuSvKJ8ag+fzKmq8Kzihg90sWJfTADsBm2AQzvmN+oovCjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750973394; c=relaxed/simple;
	bh=ooT3wD/zWH0A7Abq7Aq8vElHDez0xmp88O2HXs98fUA=;
	h=To:Subject:From:Message-Id:Date; b=dAuUZyztgo9lv1aoEMkJmg1MF93BATshZAFgEvax455T0CWeZ7rTSi1+G8Sfb6AscnqTV44DywnJre9Y0Bseds4p0YF3hMm1ZojDIptYektEr/aWOgD6MjZH3PRUprGte+slpYdsFc5CBSQPIQbhyjoofEy0fAY8uGg4kaEYfqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKflGlwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKflGlwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAECCC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750973393;
	bh=ooT3wD/zWH0A7Abq7Aq8vElHDez0xmp88O2HXs98fUA=;
	h=To:Subject:From:Date:From;
	b=vKflGlwPgRw85fvgYaZu/U2DnsWEj82fbzeZ2GMKZUGAFdN5SoDqV/pNazT+zTe7Z
	 JCFBXtrtK5r0+vSloPtV67M5/v8xbNfLt6/Cg3T/Y9xxawXqR8m/XT2YfmjYSdUlCy
	 BLUvFk5WNOap3MmyB5y9MgXR+VgCJF1+WSQawncicTY6ydcoKTwhbYa16ZM04TLS1j
	 6X+xP8SWAMRwWi7L6eeNhU4fsnwo7WxAG4O7Y9Y4qmlX2/pgUa7C0syUSl5FgtulPT
	 pzKk/31/MsTLmryg4H9VVYYxquXkCc/WtKTzjY+Ffk9imEt40T976tMSS+dthjVYts
	 XOG8B14BfXqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96991C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097339360.27391.10544734709138278404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5e3a3b201d7c46cb6be9be2ebbb6e09a8e7f97bb51fd0dec91dd6d9e2fcd55
Date: Thu, 26 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750973393
