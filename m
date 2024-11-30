Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B52A19D078
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733008554; cv=none; b=ujd+doIjBGPl2Qpkj9nhypKNUrWf11SfNI6zjZKouk4NPUTqW/FcYK+dRHgrE6N+9KP/MxKpaGIREQcztcsO+faDI1H+9Xudp/cB1l2OSKeX6D3dgBj8etF6uv7uLZVrVQcLJVeF55VxAdAZy+nynimpBtdpRCvgIYZZnR4cWSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733008554; c=relaxed/simple;
	bh=qrtETDVsssCnf6FU1xVbQWlY4/6/KlNxrRXu6AEBE3g=;
	h=To:Subject:From:Message-Id:Date; b=DjK75kVYWAYN8kIx+JGU7zhQgJh0nrZVVh0Z4hJDiCmQliVXxv2zEVSgZqZaQdUqN897gFCHules+uVK4j+dySNoVPnlOjbXpuufa+eHSSsflUmrKKKK8wKNw/LM4/0NzDNBcMAUy3MhRXgbTv/nbWjJ9m5NWMwpPviey+u2U2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTHXD3FV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTHXD3FV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6480C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733008553;
	bh=qrtETDVsssCnf6FU1xVbQWlY4/6/KlNxrRXu6AEBE3g=;
	h=To:Subject:From:Date:From;
	b=GTHXD3FV8yXnEC/A7RhQq26Qx07kugMnyUFNIJ/rqnMpzjVNU3viRHlbOTbKw88OT
	 iHGQHXyi6TVAU9K8rbSQSRz/q9btSwphDpZTk9+uJqjAtRil2IgeI19SZ9jxnbI8q9
	 xXawOSMaEGSRpaCah3///F/1QbBs4l0BfpY5sJttPn3Edv/i4Uw8LP630KOo5KxizR
	 Oiov5Awx8BQWMb01z7Ti6yR2r/E5Ocp1PWE/1r6chgdYnNFaQqTwJ2haaL7AjX4NAm
	 ek9cvQDh0lxIRQe0SX3JUCWYyc4ZDL6cQjdFf3d3hw3ywqhIWhL1Cy7+dOq8jRS5dc
	 qLq4TXYXsIipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22DDD73616
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300855360.17005.676089932704617571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b984493bd3eb0a35b08ef552aefd4b2ae48d2bb6423b5a18d3a2ce6e5d4d60
Date: Sat, 30 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733008553
