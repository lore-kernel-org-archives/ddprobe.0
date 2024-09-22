Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1FE1448ED
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726968954; cv=none; b=afHSEjsFvyRI6BoLuSINmXIleZyPD941Hj4KDHR334ySddbfWLZrTOCqNNd7lexwWyYGefHPVRsJ2J1JWWR/FchCfAN2XNAdAPmW5dkGQRfKX5IL+Kijp8579cEk+fttlatI7YCE/SZdHBxfk/X5Tb4z3c2/mgQptzN90Asrvgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726968954; c=relaxed/simple;
	bh=3EYUJb6HdFUV40+dSzI2whxqTJ3Qi7wCiaQzzyC8hRM=;
	h=To:Subject:From:Message-Id:Date; b=mrgffdv1hxQqfGNDbZT7Yp9ECmeW+kMQBWbMsk3YeRof0GIBBxCXSpLVdth9jE0yK2wmQL3Dg/txjUNzJECVV9FTlfsWj6JWlP8r5mwZh1x/5EUl97wB6aXCmQjxpeSBMrIZAr5N9CWlfkiuQngp0agzc8njMYgQdDessozIDZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAfXFMa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAfXFMa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6F8C4CEC2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726968953;
	bh=3EYUJb6HdFUV40+dSzI2whxqTJ3Qi7wCiaQzzyC8hRM=;
	h=To:Subject:From:Date:From;
	b=OAfXFMa6k+GBEwAZ+g32SbR/dWDvjJfOLPaGY5F2rI6jg7YcsuPxbxgALGoT5qkcQ
	 5/pnNk8Oaj4R8Trg3hTis/EF0La0N5OOB61nFajcmaFx5aw1hUkU53Ot1QD8bBJjY/
	 bt7IKSoYIE6n09K26cjC+Eh1at9RNKAloFY72vqAY0pI4cwjm44AOElSWCSEX60/RO
	 ET1Bn8umIp8HNP3fNX/AtnQ4GFRZnyJW2BFnj8/Z6DPJwuZgUURRBEOh9ZrbVNoZC/
	 ZGz70EM2E+Xg+Ncp7sd3W5QFnTjQI3VLMGO5cjMKhVfhVb7qEesgCWUWpN6QMkQJfv
	 3IAdllWbfAc+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D3DCF9C6B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696895357.1774.10725068789237907713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4fcb39981aa36d30cf3505a4255ce6e64770f556aec8e4f3199d24a70b69e1
Date: Sun, 22 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726968953
