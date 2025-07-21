Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2997A2236FD
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753133395; cv=none; b=uJ2r/LXFHuqNOQyJo7Kd2c4YyURJA5VtmqMc/ze+Z/ATFUqq/4H5wriXNLjzrYQOwk2HRyuYxKMyCfWSvlrrDuWz8Q+uusivUUaL/uRsQvWiZ/TNcPEWCcGbSQG1KEZdCS7TBOjqpwizhNtqOZYcFrU+1PBt8bxCluQj5qkuiOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753133395; c=relaxed/simple;
	bh=2Tn6v0BjQi4zBy1uCqZxrWYoyWq5W85O861YkXwwkmE=;
	h=To:Subject:From:Message-Id:Date; b=S/zpxcsKGQ0s9Cq/isV27FSFMDWhGV+CE2y82WSeXLCKA+XH9aH7lNW3goHDT9HQoerLZ4Dyw9msf3sXlMOY8spX+CRDSALeS7ZSDJPJmZ8mcYbLItvLobVAP4fjdEEyrgltQ448cGSp4IlPASdWvS1VF3O1VzsS8D5V3foDf7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHbeB7st; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHbeB7st"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB2CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753133393;
	bh=2Tn6v0BjQi4zBy1uCqZxrWYoyWq5W85O861YkXwwkmE=;
	h=To:Subject:From:Date:From;
	b=qHbeB7st5LRZjACgl4I3wZDg+ldGBN0cIkrUvvJe3GQPv85wUM4iVK9cC7RE4yGAc
	 E34TiJMfQgks3RslDy6doakKCR5NSa/NdYZ7BPPTG6GYikLg47H6xK7Uq3Gw3fGx31
	 nZxAsHlvpllAhur+0+E/D5GE2fJ3W0dYRkupA6I8+QpmoVTDCmHqSHAAnrzkuzD4jX
	 Ou8Y4vks51TWUl0AdkUx6/h+Rn4aaxqVVrXqlxmSYWH7crp5gutmNP5s3b936MisPW
	 ZJ7dMdWMFXNGYXkYrFepf7ZgGSSBij8DtKCPq6YunHzrf8V69UctU41RIfOqTODvUh
	 oMDOTSV2wsYqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906AAC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313339358.14436.6732938292978744694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be8da268cdf6372a13ead0a845990b6e2f5b985423b8291fbed815165f45614
Date: Mon, 21 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753133393
