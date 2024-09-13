Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3406A84D2C
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726218354; cv=none; b=Yl5+fBlHAyRnppNbyhg3WQitxqFCyK62TiI/Jp3tdeAaI9AC9mxX0B41KIB8oQQ7CTNo87mjaO9j4cJqJgC/Xk/uXAUnRPIp7IBRefWLqpJWw2Kj4v9gcjjCURywGQ50XZPx4u01ENl1yb2FnqAEvshOelk+w63ngwutPPbELPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726218354; c=relaxed/simple;
	bh=RsntoAKqwbgr3JV86gf4cQ9rzKnbsDyI/EwuF+Gxc28=;
	h=To:Subject:From:Message-Id:Date; b=D/9TLF/aevyQXm9mXxNZX2koVWNS5MgwR1SSU/zyhzq+uvjv7ZsXTFRgOfI8rQAAfmGftD7Ad6qFQxdxuI56TK4qTcN3B18kouTK9Aqp/1+geRu8m9OHxjNURHiidcOhuhfqQvCQ7BB4LMEDwiDQ85DSd4YV77ByRoJWDS09hMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK8okBsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK8okBsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E6FC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726218353;
	bh=RsntoAKqwbgr3JV86gf4cQ9rzKnbsDyI/EwuF+Gxc28=;
	h=To:Subject:From:Date:From;
	b=LK8okBsLLcbLBrcmJNVlJcduI0GJunmy0Gg29qydgjMWEz4slGuATXhmkLFzYbV73
	 Q0GGIiHxdSN1w9b28SncwszL2lYvQsie10IsiTB1vvbzNBmIPhNwALoxYlPV34xNXv
	 BUof9L3z4ZgOFkekI2DpXFleSnmccWwBkKAffkToS3mbs8x4AQA/QLZXM0uOfGaGOz
	 2cRa4/bh30TIih/skofvJ+Xj0VbDPRHSrho/x78ffjsgbePOph5jHlXnR0JVcT8xDq
	 n86LxPZeIi3c9h2VmZTn40hppq+ndqOOQJxOKSwjIHdMKvpqdV07NO64xXNNmYtboD
	 Sr6zwp5ggiaRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A8EFA3734
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172621835361.318.11432659192106076686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9002883b4fbe86027b2c7de7aef8c4d25c3f09776756c23b79f033abee08f1f9
Date: Fri, 13 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726218353
