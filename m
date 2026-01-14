Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A97F378D86
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768382034; cv=none; b=ughS8rVL9+g7RfNQmWHA+LftyebawWJzl9tmSbqX0dT2x9F7bStuwFAohOmth0TBG3waCnrmTgvaPBcQfRW3HzSOHXaoH+XEN/MQrO4h0U1qUUubK2uQlikBXvuQmmncJ3D+0yBdTcgHKcUcZOGHWe//kW+YtNmHUK/dQX0/dWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768382034; c=relaxed/simple;
	bh=bE2ObjwUav+YE8qbxjCVp0IAScJihuj7RefiCHDl4qY=;
	h=To:Subject:From:Message-Id:Date; b=s+cGvxBxv02mwd4vbHzlQRpWgJOq+1Yx0Jcm/wvrKYu5WvLGQ+/V/Y4dIMcvnmr1HDcbLlyPmPt6iKGBpEdo6zHFNtO7yEqViNs6G5f3bdVvox3wPhXSJccnm3ckLd7emfJYph1vmTENLfQmylJtM+Tvxhu1FWt3gNB05o5Li50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqGWyqRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqGWyqRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C932C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768382033;
	bh=bE2ObjwUav+YE8qbxjCVp0IAScJihuj7RefiCHDl4qY=;
	h=To:Subject:From:Date:From;
	b=JqGWyqRAvDxMPEZiKZYXYXzjrao8E6Betl1TztZiIJzMTYALXvS9OGJnyOqs2CVyI
	 d61WX3fTOpRoLFzl9qvkeo2X5srAUVZRfO9beht3d+X1NH6MxL8+N/SqzdDG9zry2q
	 X0fPZASic/r9YMy6jQP+6pWb+9Fi5NP0o4yen2eoHLwE40yROAMh2Fwvk9ygi7QlcH
	 y0l0Z5c/pNDWTGQax7Ket6qZmVB2A86dWeETJ2HlK8BvQCX+yED/hj+6Wnm6HeYLgj
	 qZz0q6EFdRjfYTehq5mcdnyCvHv/w5O3KWkTyFddGVRn0liIgrzQIezCba0J2Y1hu3
	 Y2bgSLMWDYCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB6D31A2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838203357.19761.1407087420088633381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31526570b0015e0772aecee4a32f3cf7db0c4935a35a412be9879083dbfe8e2c
Date: Wed, 14 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768382033
