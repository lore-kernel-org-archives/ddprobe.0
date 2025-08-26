Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092AE1514E4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756189794; cv=none; b=e8kNIJRulnA1ZSF4PhncnvWOI0vNyswyj9HQuiuuUybqeS3buTI57PX+VEpNnzgjZcuy31Bons59Q/zEH3oTYWSck3F62KdCTGPpF9E/m3dfgcUdArJrn8/h4fRLUJ8y07MN501pdTKoJOy++yJv6Df8P6OcIo9dmEkTmZBHERM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756189794; c=relaxed/simple;
	bh=EvEky1nujuUkZZGuvD+7d3/aK4yKoMllYupty7lJ5Xk=;
	h=To:Subject:From:Message-Id:Date; b=eQVJYVIGw4UBwol+Iks1a6sJycYTBUkxTpInPGTlYl286L4AJfT15gmw2AalcnevST9POYZKUteEGxY3/rQSjVZHWIkI/QV2HJtrx5tqIE/qrLGE7Opw7GpdPaW+y7hzVnYCquMLJf4rtI3LH/4oaym2iq0vt+gAaOvA7ljcsnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kS8mGb5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kS8mGb5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0293C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756189793;
	bh=EvEky1nujuUkZZGuvD+7d3/aK4yKoMllYupty7lJ5Xk=;
	h=To:Subject:From:Date:From;
	b=kS8mGb5wcxats6w7DbuhEZL4+OSHXYIiTrKtXO/KsGxPnXw88fUgy0yr8CFoIoGeb
	 hJp/eZueeMH2+iGbBPgg9NRh0K0ytUasEqFZhnDzpI8agv4n5aFTNvZCvusNDeWMT8
	 TO7qQhq+qkhWwvuku3zJDqNWv2+9/aL9TRT5Mu/sjw57Z10RGJdXQyQP/uLTo1dJtn
	 NpEmY2aCx6+HUTkgmqcaz2O9W4ZUagZiJrvj4F1DJybpw4rlYiDErj1Xz317DLXYJP
	 T69qlYH5PYd5MQGFsz+E1ZkdKL8n0F3JfkVLDBn6BdqcczKlOM5TQ6XHZPgTrGkLcG
	 DWkfZjiwWsybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF58CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618979357.15865.15128650307632235808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79e12b9ea4edf0e226001f7c5e5af015be8b87c1e833ed364a7216005156087
Date: Tue, 26 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756189793
