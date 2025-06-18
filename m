Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C454821C163
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750279193; cv=none; b=tJXYI41yEyJagmxREmBhWvblFx9wrHIMreNwTTtk0+WsWRpDb9C5Vtn3qno4jyIX8YXX+G0qsFTEuuYlbz5dAHV2AY/n7u0N5XjWyLUSw6aVzov81SzwkguN9twoQOJVSdOQlI5mTxEIURCTFT+kbWv/+v4l0DTj9Cho/LZfyA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750279193; c=relaxed/simple;
	bh=pmvDazShCETQ1a9V2OvxxD6aoy1mfzRJeAKxXSS2Hgs=;
	h=To:Subject:From:Message-Id:Date; b=Ez/UfS44/IR98ivqodbHf1LKsEvOiUWOsAg/VKdLA5NrPUwmdGNfdbUiswMWiw3T0bjdLY5LxrvhXNh6lBOdnij55h0n0so4E5wSAVGLiixyn4EuPL+wKDtaqz8+yP1wFm4Yt+rTiO/Mg664Z0saIyesQrHJ2yTbEoU+OAFwzE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQMDjiaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQMDjiaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E0BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750279193;
	bh=pmvDazShCETQ1a9V2OvxxD6aoy1mfzRJeAKxXSS2Hgs=;
	h=To:Subject:From:Date:From;
	b=tQMDjiaUm7eqacoila/h/yAkph8U9KZedBo6tC11978swW6B4rdC71O1iD2GfnvlX
	 OQqcAvfNycOcyET2cYcAixmbBT8IiH8m8pKlA/JMvFW8PY+oYZRMQNpvqycyWfQ1g9
	 UT/h5IlgdPJAfnXctJ1J59B9r99yd1ZLkP27mj0Z1UCm770FqfcVYZEQ9k/IIL0n8u
	 UJA5rN0BFi6sQe59M7fJYXGt+4qAkpbDA40Ac8Z8c8l65lRUGZZ8/Cmb4kwBt/uw/i
	 Mr84EFt+9oDhoinUs34xqoNqwrf2YAnkA7UjBXPFid0s/ViNT0dDTtRwnmMPxtTMfR
	 6Pqw52hZaMl7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956ADC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027919360.17467.5972496934386093433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66da4b5b8315f406d48b2ea6c7c82df798a8bf1bdb849c429e5af7a6e9eaff85
Date: Wed, 18 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750279193
