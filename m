Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF1A1A3AB0
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725306354; cv=none; b=jIH7oVTwSRJOiYTS7N9QnDiXO6mvKVWO4f7X/gVDylenltcoCuYNs7gwQRB0W29908EjFaNL8D2Bt2zNLtT0wkMZMGgkrQK8LQKEsbyv2jhrWQ16iXdhIG+q37hZPEiKx7C81+hGP6H5XwM++JMzo3Qa7hDWyTVhqt4bGBVUw8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725306354; c=relaxed/simple;
	bh=IvRtym1kiOTX4cJhZtL/Mxmg5CqewupyqqZ026egC+8=;
	h=To:Subject:From:Message-Id:Date; b=oIL5+lPuQFbqAXC/qkIe+I7OVVl1D/3cuQp2nMJCx5dqSFOOBJp+aZFYS2UGvJxceGxOTw7iWSuKBIlZ6q8AOGEsMu3vkEsfr/YtMnvDpSAE/XDz9+6wPXo8Gj2C3aysLttLhySfR77yyJZkeAzTVSslmD9bRb2LQRX563jMZaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXHS2Tds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXHS2Tds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E5BC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725306353;
	bh=IvRtym1kiOTX4cJhZtL/Mxmg5CqewupyqqZ026egC+8=;
	h=To:Subject:From:Date:From;
	b=aXHS2TdskIjby/CRlLYqCgJcUpxD/jBjrBezzGsh9dhyDpJBA5Oop9Dh0lw3B0QDm
	 /hP2XZMfk72VUOr7F1F3XzxfH3ntnc+kVbUZSnbvufEie5H0MvWJtl7FAmePkBBbmN
	 INI38rcvVnr9KofCd9+p5rIHtf+pbmGJKr2VnaCBaCqrRdG2ZmKuobOeDcGIjj/cxy
	 QGYIFEyPzEtPZGhi5xjE/oq2u4dMr0i80Wvpu94NF4UNgdyg6tHg0tFw40yglDDeVr
	 X4Yt+zs5BnbTnNtn7wqaAXsYnmZ1/OmJHJ/klBLnvRYI+UXcbB1qqax+tR0vkQMG2O
	 S6P185o38ERDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A2CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172530635358.2770.1375090976640015600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d435a0f0be271d561e6fbacf398591fdaeb30810bf47f50c5e48baccf80ed26
Date: Mon, 02 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725306353
