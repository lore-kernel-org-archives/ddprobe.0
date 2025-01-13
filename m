Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5DE14A614
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736786754; cv=none; b=IpC18CyMVPmzV550+tKaqBCEug9waNrr6dwhzxu8FHsAQGtgHSccGxiTxxgcb1T/GqqH5RnQqiqgiYV6hCrUzlXXIl9giC6zqD4vsrjawr2FMC3IZ1GyrrxjRdx3Jkq8nLKER0q3XiPy3PXYLGYhuf3wS4Jwmsk6Ol4mkRzQU68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736786754; c=relaxed/simple;
	bh=FkBAhS8/VRYTS16ao1JQUgIUuCpeiNd1VaxVdzloADg=;
	h=To:Subject:From:Message-Id:Date; b=QCfbnef26lBQTAnWYBnakWfmfRAtzZ6bwK9vnew1vcLYjwJ44TqVuafskcArmYSLQOq1lz6TN+nHWcilQPEfH2xoSIixzFjZTvF+OF0Opvxsfy4izGyzunReskVfFxIh4QoSHTJohCByhV9xsJZvd/SG9C/uGipNbThxtqXiO7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnumIBMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnumIBMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F65C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736786753;
	bh=FkBAhS8/VRYTS16ao1JQUgIUuCpeiNd1VaxVdzloADg=;
	h=To:Subject:From:Date:From;
	b=YnumIBMMWUFgvc6MLuprFLV+Mx8ogpeoWMhuXBq5t/C0+tp22YO+hOI7OzUvb2U/J
	 y7vCPhd7N7QbdvhIroU9xPuxGNn8rEgRrf5yEXejBApxs6bmdQ19UvT/s7roK1nsRU
	 p/U4kiRFkM/LHa6zhs6YiQdJFUMlpIPhxCdFAXLtDHdFW6as68NbCFM7xWRrDZCt4S
	 0cQfSh+nH9NH/99r8LWr8CFhR/gFtarJ9kPz4eUgnE6aZAtCxVZ+WPnEPZnU3I0t+O
	 xfgqF1Vxc2rGexQKCV1QgH/Linh3PrU9Zn2baxB9/Q5IBwgMWKPnFtnW18XpKC819h
	 lTEd6rVHW86qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5480C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678675366.8863.13735267576793612287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89535656317b59883b6c686e98ccded02647e7fb978f9d9903f75b907789f498
Date: Mon, 13 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736786753
