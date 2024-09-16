Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA6B360
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726451154; cv=none; b=fYcVEyIe+jjV9AjKsMc+FOLa3Bg1B9ktPmByMyh8guKoWsZxOd430RIILEybydPt1YKeXPAOLPBycBVeL6ZGo7yiOL3VprO7VzCPzT1A/O9PwjcZfjV4kFnbhu3+I3XSEyMfRw/OzfBc7GGbkIGAv/IkTPlg4ZJ8PfJpAmA632M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726451154; c=relaxed/simple;
	bh=NBd+3BLer3dYK7BQ9BxSfcsNUufxha5gn5h+3V8yGPo=;
	h=To:Subject:From:Message-Id:Date; b=fieE4pw7STXXq6r79PZHGIq3LfUIwSOtY7z+9ioJxD6bzqavCt+ddEt4g00rmxpnnXvlvQTUp6ocfzt6LCn+PKOAR8aWPk5EBrR0yIk5uoK1+TbWTWe3s3zzmtezuciHpXKQglULsFLAcQBCKLcv0KKSZm+MoxRVg/IiePdwDBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwuL5iwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwuL5iwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BD3C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726451153;
	bh=NBd+3BLer3dYK7BQ9BxSfcsNUufxha5gn5h+3V8yGPo=;
	h=To:Subject:From:Date:From;
	b=pwuL5iwfEACxJ4M5tLFz4yE6hMAcbBIobwBxrvEe4Ppvhx7CMZBSZ3jWKvoCcwmG8
	 Pz58wTsp5XvrnX0cl27gs/GGy+wlLCiZ9PpYm/GaqFPBr5KdVSQNVXPi2AQRhLNNuZ
	 Wxv/3olaVXSIFIRmSK8x4zvXMS407gToVpBG9bI9TJu8SceleYAhNsADiK2kCZXq0r
	 bm3Ub+xBLvJEnxAvVToFDNrIFs3oB9LYx5Bkoj6G/wQ19WhlDNGYzecaZ6dXVFrrVY
	 2c3FOpN0bMmPqKFpt5WYkwPBR1FGQ93/QHVdNJCDml+vd/4GZDetQ7t0zHPMMbThKe
	 wN4BpyXSVADCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A5C3ABBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172645115358.10877.636499948904707343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c5cb0758a5f0c0840a54ac03c43ad5c7997617318a1444e2e88e18d720ca06
Date: Mon, 16 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726451153
