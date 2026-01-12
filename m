Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2390FB672
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768176234; cv=none; b=rtQ2hw6vnOpyuFyGliA0FtwGDd3WdpBaMKrzpdt/0by/02jFFZpjKRjj46TClHkMe4GSoPPdPsRQTHsWPrp3WvXndQPmAZbjy59RsMd9ntIe7Twi+JLsjWZmBiBd0H9tqTG4YIZtyWzncjM3ni9CHjD3wfLckCWHOppHaB3mHaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768176234; c=relaxed/simple;
	bh=VFvd1eFTNzbHnk5QHTwCSbwrJX4Qa3pG3psdm41j+DI=;
	h=To:Subject:From:Message-Id:Date; b=LvC1HkZx6Al0Jed+ItD4glQYb9j05qTbNDxIvsW7FXHrRqgRov40vThQ5cFLjyleX+KbKrAVNsluMDxMmtOE5VTIqONvxGmsyM7GWY2NK2pxGKuogiuUZTNfmPHdqEa2wgtmlSVChaoMDwCOR1lEJa5pqxiefGV21lrW1tpvwME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9efnUxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9efnUxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA1FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768176233;
	bh=VFvd1eFTNzbHnk5QHTwCSbwrJX4Qa3pG3psdm41j+DI=;
	h=To:Subject:From:Date:From;
	b=C9efnUxQhllgYr0GfFvy+QkNs9KG641UvSnZCYd/kM0Dq9cffkvpX9LOcGcO3S6U7
	 Ul3rUuCCd3Xl1xCbnBh9h6GlEBtyAuO/UBZnJcoIzOBk8YaxHXOsdiZ0so77KYpMqE
	 n/pYQsb+aOonswCKUX8bGPOQ6X+GPDpoWFshZj3Wx0Z8tluyufyzkDEEsAIY8xtXf/
	 hXNOhaZx/YSZEw4IvmcTF3qCB9HOOpm2GTI2RIv5jV8jfzB/hUrFRE5MuBIVUdgrjr
	 az51iqajOSHgDQAdlfl283Bt+PEDZnI34GFwnDRdYUh4QMNoWVtW5dY5B63QsoMo3i
	 adYJ3K4bsq9VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970BDD2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817623358.23906.22253333525573754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fbf58bc038ad57b956cbb232f944e2a25dc9567a627e419d647c87efcba682
Date: Mon, 12 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768176233
