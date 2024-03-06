Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5881426B
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709714297; cv=none; b=Ry+lRoptCeqRKmJ8RzhCyOra1T6jzlSnQTyp4xACOIrDlIzyyaM+hJNj3MicwfK9B5cG5HYFRDcuFjA53WPbwSiilUUbUtYroWwEiv3dozZGc42gOjUXVzD3nOsRypX15Kg8Xp9CIB0mqAdU9H7liFFLLYRRlSj/PeXdVM9F8DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709714297; c=relaxed/simple;
	bh=zqTwThhAMkY1aV4JkZ01CARlqj/QJOJoke+9GEBy8AI=;
	h=To:Subject:From:Message-Id:Date; b=Df5GvA3g3w36MNM/N3uuIo/hOHzSww/T0bWEV3du89RiTWM5XnNv4kNmXcsu0d/G6TLsuo+RtgDcXa1DXf65uCvZG/1VAXV3XzrFEgCcQl4NIWxjj9ot6p9ebRYFnIsZH50rO04AiQ35pcoviN0rTr0sM5lMLSpm0E4Q1RhJr3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwPUlB0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwPUlB0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DD67C433F1
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709714296;
	bh=zqTwThhAMkY1aV4JkZ01CARlqj/QJOJoke+9GEBy8AI=;
	h=To:Subject:From:Date:From;
	b=PwPUlB0OmfXxWOaWrp3FXi8GgNIMjJ34VDG9zyKFszvCMoCY16iBte7/iliJCbX7n
	 q/7XuHv6NEXf9xnRWBf2/OIwesVdXn8fYq2PUuSYNf0lFuYK1kZ2lUZ+kUbEZsCjqm
	 MIsX+OmjMw8RR9Tt4R5C6qBEaP7969efaCJt5QDnic1UXLpUvlhw+5nXEJgeZitCyG
	 xipqt0aUeiVZ3FxeVSJ4Z4MDrPJ0aJ7Xr3A0SOGGfVeWhM5TonDp6qhT9cwUb2PgtY
	 sXuGwnkCah4e0s/8JC3CJ2YncF3AFarAhNHtZ9/MWusvI4MpDyxLoRd7byJ2ofaFAM
	 eLUgKaSVBaDBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FCE7C5475B
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170971429643.26664.9800341052932925645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836fa180ce4002b47083a8a55aaebab70d0e8465f80ceee2cd0c237a0c95dae6
Date: Wed, 06 Mar 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709714296
