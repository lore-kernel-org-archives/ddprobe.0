Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F581B87C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733512554; cv=none; b=Y1kcYMKLXs47qIWiHAGbPi3HSEwRqREY/6CZh/itAVYgFHNGZvnxTlyVlS8oIm3klj4IhkHYHIYh4pMb55altNQID9WDso2ym4t8IHSYP7t5/QUk+Djjx2DTfh/6TSPpWecQ6AlFC5EeISlJxcUg02BpInxUy7eIdGN4fuQ0yow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733512554; c=relaxed/simple;
	bh=xJmqbnC8+czsaDBdXjS47OHpFFwRoOqxsCTkOVlwB0A=;
	h=To:Subject:From:Message-Id:Date; b=XRAn2KMlkaMImROmhVixa7dbjlBw7HJC3ujIpEz1u1wdrtpPWnvutXGk5SflQ4a7vVFVhiQPeLvJJojkf1/tWUihrxUCiAcEZVTj+a0NUobhLC1kNnWgnSn4KCDeD2mBEu5Hs5ozLEGrjDwsPs0/Fz16q6FK3xbSszwSAkCGP7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIHC1bsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIHC1bsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B21C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733512553;
	bh=xJmqbnC8+czsaDBdXjS47OHpFFwRoOqxsCTkOVlwB0A=;
	h=To:Subject:From:Date:From;
	b=dIHC1bsDUJnVb/mXieajnQN2yCG3bG9UXX4Y90w0bdRf7XoBdSOezibN9ZQcpx1H1
	 aOkMR5QCfL97RklTHI+emm/aRxL9h2Azkb+EgMps1kTrbXdzxBAWBajybbxkc+7TCu
	 pb+mc1bed0mlEyLQHSXIQohO2W37gZBeT1UAM1il+PLLLSqY28Oc2cHuQaQ/GBZo0E
	 xEfvm7gGYxm7DaJulSR8gXvpFuMlU6w/cBY+cveerYhjGR6SUGjzS/Uu8YCTGD2rka
	 LyK9dAZIYFgnpu+M3Olcf00YeSeoMnzpO2Pl7Q0WNS3qemg4+a9n7aCBxfkZt72E8N
	 y73nXBUKnMG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB1E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351255360.7546.7610937869197462320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3ff4f38f454353a170eee2bed25123f2d1e10d2a04990320c208d90c2211d2
Date: Fri, 06 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733512553
