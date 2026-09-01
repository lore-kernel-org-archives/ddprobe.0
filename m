Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E049340417
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788222634; cv=none; b=KsBILBn6UkA5UXDS9HaPBm7h5vl4+azlS/9GKQGuzvIxEDW/eAtWKWr6NosIFGzA5Shuq8mGZhd3/DJT4ZxCI+TppNr9tx+0ljtV1F8eXkxSzLwImdk5OJxCpn/ZaWybeWD7/RR4iq0lWl1kpSoBG8I/wtQzhMk3Uh3jmBOiwwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788222634; c=relaxed/simple;
	bh=plgcRGjby8nF2+pz9dp2qAkP8LV1bOi9Be1R9OSRYlI=;
	h=To:Subject:From:Message-Id:Date; b=pulCQIRWjpnR2JASvguVsdZskFd2iN5IuRUu8xxulbyDsgL4zNUz5uMI0V9937QEXOg67LNG6ud8oZMc45sIA6qULkxdBMMUQ29NyWZARfb3cK9luTIvJSAoYkFUuHpHg7Uh2a5M7iImAmk0Gtb+HeY6A8wGJ/8YGIFmlVevmSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLjo5hXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLjo5hXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CB7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788222633;
	bh=plgcRGjby8nF2+pz9dp2qAkP8LV1bOi9Be1R9OSRYlI=;
	h=To:Subject:From:Date:From;
	b=PLjo5hXyRfwlBNzhk6y7RBj8ABEEgHiSrcNe3AOyWx0s763I8/k292pFKy/QriPfQ
	 w5+dC521XGEjoqxY0OyIKM7PI8zJx6xshzsuzu1XFep9GpxYl/2Ec8LljV4CJnc2g9
	 LGyy/dx5HIR4WTC8TEPSkzGfODBRrY0O9R9cjlkaKKav8VJqCfkOZ6BZyLj1f+7Xu3
	 SX6sC4KfEEcfk4tMCV9vjwHgslJuVw1YHsy/j1mwlgFXEaT/GaMhNnwi6dOPDrTpue
	 AiCAQqXvTmLAO+ZG4rP1csA8FTREFT10tUxGZ6kMag+zD0uwGmaNW5fnjsfcFOUmpQ
	 VhWT/N14waHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1549C624CE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822263369.9487.180176014074800279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649d2b9f49bed86806666b24b2e96476d3c08a7b078796294bb6b1d858030311
Date: Tue, 01 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788222633
