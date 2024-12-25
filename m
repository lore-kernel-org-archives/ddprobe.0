Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5186636C
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735087554; cv=none; b=qiNZOJ3he0EyJueNPbkAPCaZe9cr1/hf3+8lBPPX3oIEhhWW3XH3mFcZM4I0ysw3k6zboCMslgG6c5R5xGIH/6Q99i2BsDO1AhjWueAB873mPHJpPOVWQXjBIr/cf+B62yjI89bA1GvpB5Iax78rdIPgdRWnk5pDhnYbdaaX4nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735087554; c=relaxed/simple;
	bh=4ECrk8Q3OKu2oOZIiiho9KENIGWI3zvEYJUfgyDlGEs=;
	h=To:Subject:From:Message-Id:Date; b=JTSgfbVY/VLETqPZYx0+Z1+6PvAJkxkvTcP/nBARPx3L4i8v9IvHk2p4Zk2WOnrspk44rtYWWNtl6ukDOm7ddjiWdscA6aqhmE5Q3JyPfMneFTbZ/LDfjZ5W9J8/hE0LZk9DNVRob/J20/XXvMZu6yh/BmQ7Ubu9rfizbA/Kvy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AD4kQGs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AD4kQGs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DA5C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735087553;
	bh=4ECrk8Q3OKu2oOZIiiho9KENIGWI3zvEYJUfgyDlGEs=;
	h=To:Subject:From:Date:From;
	b=AD4kQGs6CNy0MiCRu+r7M1fKdOeCPYMHNFAL+5qqp2McHNgUKA8eDP9cZQhGYZaU2
	 /LCMHK/1SCk8oP+RR6n7nQe4NK+Evk3YuO6qPvNAKbw0pgGJpHPqSxmLD+ZViRTq0/
	 nHc+PjKz8UsQ55lnmW80bkMHPn96XjauSW00EEqfc0j1xZfX78T0KS+bz30mTPW6gU
	 pkLIyV9aH5Oc3VZOhz6LgsBpulFq/USkPGl1Gxf8c+4nGJl9nrtHvXVvENDQzuWTdP
	 9NuehZggke7O8c+9ANOsLwUa2aK/Z9aZJaGnNZxpWboXJg/JptFjJs2Goi0d2Zfww+
	 8UiNlhT+mWiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4072E77188
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173508755361.9303.16603852197978616543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1cc7db7a55088611fe014814a92cc42c88034a3166043a023293a90dd0f6b7
Date: Wed, 25 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735087553
