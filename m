Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B131C05
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705459097; cv=none; b=OQjcbHdOo2DnSawkJlqjUFLJAPatbRcmltb5yghPjvJDjqaa69S0fiiuf0kifk02TrUa70zmJOBUR2kTcEV3/tTOcYx5fro6CZ1ChzM/vfDUDWf0atkUehUS5mKor95CPAd46xFtA+Uny7ctNPQAYEBvGnFZto1rzDpzS/bo96o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705459097; c=relaxed/simple;
	bh=hslhY0/+ALzyMRUZAMDa5w77zIltkq7KrAEI2cEXpMk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=krUIw0tRrxtVmsjuhMjegOC/oR4j3/fwl+TUcdYx5WOM7LgxXnjv8jbCFw3Ii10lwYD9SOoMsUpvF0Sq0PiEscZ5gWqk52PTj8uTTw1ESRo5hyYXYEJxyE6LwPO/fBYUgdALp2D9fAy8PSC0fCgZUiWdiZ+D2+iYJHMuJzWRTGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYumMS+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYumMS+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B54C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705459096;
	bh=hslhY0/+ALzyMRUZAMDa5w77zIltkq7KrAEI2cEXpMk=;
	h=To:Subject:From:Date:From;
	b=VYumMS+Goj383i0gmjx6RXHAP7FsgA2sDzsTXxoEzzzR51N6gsMKQjYPtPaiM2K8F
	 HTv0rKxiasCvjQt8OvazTrF//kjN13lAVAAdnmD5CpqyrJL+SZ+slFuRS+YYi1c0RB
	 Ueu5SN+7agOEBDoEAVj8SH9uYs+zqa7rF4mIMQqLSVc7aK3pBSWXrmRtmZaqD2CdZv
	 TXKeDWLxHLpouLsyg6YtzjjnNb/8FP+imXeWFixZNnSdscsibsB+nDQYHW3zz1Arrv
	 iahOycizUk0OF/5IYx+YsECSoA2tGrcb8t7/4oxFlW+/+E+XczOCF5oNYJm4rESh1y
	 5XYhA5GJDDorA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A3FC47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545909637.22870.8885788351330619774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1e643748865b25011dbb49e86690d4b5c1ffc6562edb3c9ed131983185f83d
Date: Wed, 17 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705459096
