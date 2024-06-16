Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCDF1BDCD
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718554703; cv=none; b=tcZ/7CIFnwal8QccMkEiWgQeg6/HyVA1rW1L5nLL5oOVHW0X1J5k6je9TacFZmnw2rAUROBAlrjpE6K57eSU6NDQZcr2kMYeaEV7sqexXfn5o5Ys+5X9/WjsNE5omAl0I/Eo5cL2eylHRRFQXHmFCop7dGMOOMxS6bt53vm0Ejc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718554703; c=relaxed/simple;
	bh=rAC7NZ+bjafNNpPfeV/Nz7XG1DxcYUplLbik8dwMRIg=;
	h=To:Subject:From:Message-Id:Date; b=H9ws64Cs4IAOXVV0ac2V5Fsz2IF1kx3My+9iTBe7EpE+mLEsfxUyd0SRwkFd8lKBagMQSYcfq7oXsMIyKHUzZRx0whlW/zAbLE9MbUZmH/ghHbkY5oIv5gLIvf33r7HZqWZytLHZACdAeA7zLBCfOn6JcuNfvzo6/qXcEcIabYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6bSBQEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6bSBQEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8684C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718554702;
	bh=rAC7NZ+bjafNNpPfeV/Nz7XG1DxcYUplLbik8dwMRIg=;
	h=To:Subject:From:Date:From;
	b=E6bSBQEwe/tZ9e2C5l/t3ElWR4OZHXqc5meZiKagq2aKhoNELIF+Zd46uYPzlCRI3
	 Mjutw+ZctZKN63WmjVoFzU54RvoffHcNG+imGpbIBS0gOFNgl8E19lqtaKngllhoNS
	 680THDSITz66FiO9AcmL10HtFNIK9Mzk7WiNhkt8b7phSWPJsq+8z6XkXPI0M/C+Qj
	 A/QObZelysCCHPZaNLmpR5b6CaSYO7tKWTd/bo6G7FHCu9lW075iPir8YTJ1SI96HN
	 2JQ86HBPh6181UDJcwJ2A/f1hRgAKYzmnM++WdXbg1SL6w++gxLOFcD2bA4DSG5Ctd
	 C66bvVOYZ9EPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B26C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855470277.26214.3117869207275508208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8574bd16a9ec3295ab752a947c8a83e024fcf9b1f0714f7b147dac0592dbe79
Date: Sun, 16 Jun 2024 16:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718554702
