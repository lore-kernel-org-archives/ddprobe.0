Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AA628DB4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705532297; cv=none; b=GYXvyNXYo/uBeXq83ztif8Saw0SraeC+GkImYPNPD7PERvq1kAgsdVDTTsaMuLCC//uMBYAedPc5U8Jj9upLNBgKzSCm2JgcYOQl0vRsckGaOeMrZNn0pTWTVPoVLCtAHAi375TtCRnsZZwyqY5OPnLTdwopqX+QhByXKCAWAP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705532297; c=relaxed/simple;
	bh=C6p0vpUObg84/tMkK/0XKO/cHsL0bEF7y9vQ0tYQn7Q=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=SoLRIIjZeBP9VFcCWnA5Wdc45wJP5tMwLS91bQabR9hsBcus+aJj5IISJxX9tf1e6z4BZL/fFfIZNFHt50QZdCMAPeAfClHBbBdIB/fZG1Xylfr/yBYafcO/VItw0opymYQOjGpOZS4ibAfxXQArezgbL6J2ZWzNNfiBverznog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0Vb2OFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0Vb2OFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A833C4166B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705532296;
	bh=C6p0vpUObg84/tMkK/0XKO/cHsL0bEF7y9vQ0tYQn7Q=;
	h=To:Subject:From:Date:From;
	b=L0Vb2OFHD116hq7PWjKI/dJJJhw9tA9LWwokNP0HDKb6pRmmO22HrA6HMxJ8/IdG2
	 z4i0etrdsakWpbj/EdGSO4fTMsw+HH+3/CP9hbnbU9W55aig+Myg8XRMsgFGY6wGYO
	 6GNkOMQMfu+AYxJnqjC29ZdsHlIkCWRMnxXGoAywF/Wp0uU3+5Ykfc7TUH889vj60/
	 rBB2ALmISAhigzwnnR2LP/8tTT93wQPpqNeEWZRYJLE/I5zFywQ1fOumkJeI+rncnl
	 iNkEYzJzkEYSpyf97dyI+Ky4oHU28ZlK4ObLIWoaO6kTJesZzqARmCoSgw2XyVgMQ+
	 gAoOSEKvWuXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614ADC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553229637.8265.470600527210978031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ae67717651dc12a4dda39f12deefbb4ea3d1f4d7525195a26412471ef9ddc4
Date: Wed, 17 Jan 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705532296
