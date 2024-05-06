Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691BB8488
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715038343; cv=none; b=oWmFdZe7KCik6IZPVTTVfDl5bTrKyhsv64Snwd1IYSsoYRKpzclmVNt/lP+L+HsDF4wYrbkQoxIyWd1n3G4UclJpDnyHuzjWeyGMaD6RSviMF/BQA2KPiOK9nE1bs+Q5swJyHsu3hfXI0Wa5htRrPUUL587yhcRx5r6+WCjB9MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715038343; c=relaxed/simple;
	bh=adybaiPOd1Y+j1o6YgQ8uOEawTsbYkWgTkLCxarEkmg=;
	h=To:Subject:From:Message-Id:Date; b=rwA0XaV99K412n1KbSYexxwTTsKNuaLY8Z0mHvcSH+iKme0Ok6KQ3pUJNB39Qr40HOmETgB5hHkXzI6mj9dRMZ2o71pzd35kxkmOTVBQsN+puCazaGmdyA3TybbiFlJCKzKzwJf+bmcgfrefxXTht8xDiO9Q3xocyKDbg8thcdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFFx8cU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFFx8cU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA92DC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715038343;
	bh=adybaiPOd1Y+j1o6YgQ8uOEawTsbYkWgTkLCxarEkmg=;
	h=To:Subject:From:Date:From;
	b=LFFx8cU7ZFfiPwelffkD55VFe6Nalpgssy7RKCMZ3YHbzNZj8p3UZ7YDGThaAUELK
	 iUmJjBtwR2HUkVVm/4vsh9YGf7RfDFX1UgGpHz3lq/jrPd3tnG6lweZk8d45ePgWjz
	 Ym97I8HGE1Zl3K/Nxu55PErvhfm1AXr5nUsYOV4YZkccwNRGaMA0V/pGQUKcz55Lbl
	 TDMJUObcIFbjsTUUzmUWDZOCyZVwXfam737c1CQ99KVia+VOhvW9+S24AH/9lk0bot
	 tbLZr1QkFhdVlFCdBf9mYy6/aHW5AKJDrKtnfcV1MFFsuGmWDGEp11lChmG20MJrZX
	 SBPuEiKSQjsNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D9BC25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503834285.21005.3051181169390294509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec3d77e929c25ac2d05210b796f15ea5413a892c097c0148974632740b23e28
Date: Mon, 06 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715038342
