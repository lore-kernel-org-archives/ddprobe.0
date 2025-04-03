Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D89C746E
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743644996; cv=none; b=otBl7DnISdY4BcHtmXM8Q6VHceY0nNI2fHJHGdVtxHAU02NOme115n3ItPOv31Sfqw58Psq47ccPqvH6Cle2JujDT/FYLgu5JeujilvuvlFJyvjkk1oAruVagpxW3xcLUR6UQ0nfglflMH2yYTfk0hbHmMQ5SHvTHRAJ9p0FpHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743644996; c=relaxed/simple;
	bh=wUhj/2tSkpDD4rAYZXDpkRPpDvS2Q2TfFbc4h/UdOtQ=;
	h=To:Subject:From:Message-Id:Date; b=Jp3uFxB34wk+05rsfUHautEDR2E7iqf7ibQAxyWYjeGbN+7kmBmaeWKhqq3iY9IfD/LHFaM4KQFkQmt8tki5/pC9JWTbXQ9qBfoq+X/7g42UWbHLWV6TqokECz5e4lzwL4azryWN72EhJlyMnW7o3sKU8SQLF8A8IbDzAuyhpKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5xXeKyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5xXeKyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B058DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743644993;
	bh=wUhj/2tSkpDD4rAYZXDpkRPpDvS2Q2TfFbc4h/UdOtQ=;
	h=To:Subject:From:Date:From;
	b=Y5xXeKyz89BVz2sXvoxHJwrKmNUqDnXrovtXFTEG9vXD2p3hMNcYycSPOjPdrMFgB
	 IBLl8h9qeXykn5wiSlWXxjdGsj3WXjOFXTPUEjuoqsWnX9uuhOOX/7EH6UVvQjSHY8
	 uMXk33tlF06ybYcfZyn2jhzhLrRtzlIiZFw7c5MlNajlp52ZlHs6lNBDlW/0FbDdr3
	 Iz/f8xK4q8lQk4ajSa8WXUmYXqLkm3Fk2ErADK1KpjV3d5f+NBBJzh/NZn0qi3Ic3I
	 +IbL2fwtg1Y38FI2J8zZ0RsUeo3Mc3F4nybrTqzrybNicvqA/JcXTLLk2WIzAbgi2r
	 na1hhQOTv3GDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C4C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364499359.31104.854025628958991572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffecc22ccd59ee9f1deaa306f32f4f66720965430a3aa8f9497f5df43d2c30e6
Date: Thu, 03 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743644993
