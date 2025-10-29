Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461E3253F39
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761712794; cv=none; b=Qj752Pyerd2ZLyIR4B78mFGudISsbga2zioBBYsy9YQPoibp96ostpHLkARQ5xK9/jpey0pbNATDHEfYotyhc/P7zjr99dGvBk1GGkbf3Lg30cLwi7n13fiki4/LU43gxC3P/I+VtapEvDr0kYEP8Yf0aCttonfhCEFE95IDIbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761712794; c=relaxed/simple;
	bh=cXBKIdjnp+EAjxPN7hR1mBnSmx5tYhqmlEOmET+JiuE=;
	h=To:Subject:From:Message-Id:Date; b=RcXP34Gksd6jGDzv9YNtiIaBGJ58lYGMsq8d60mM/ek5QmNvSdjyJVcihwm2lv15crL6tSDT1b5rIZo2v3/K1xtVMf/o7+39isolGcPZzBr3Gh2SSfrL98JDlvClD+IoIvA+K/221a6WBvYnWehNS1Qo5q5N0YW2epzmL/ZNkEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDrpEDen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDrpEDen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3F1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761712793;
	bh=cXBKIdjnp+EAjxPN7hR1mBnSmx5tYhqmlEOmET+JiuE=;
	h=To:Subject:From:Date:From;
	b=QDrpEDen3aZ7qD4VN3HoOwApDwW6zOEgNccL3CBARIWYhOEYaVyuvyebXBf7X0Xg/
	 vo9z8FmgenkApz8R00YbKdPb0w3wMaNki6DvM2YNLSEyWp3UAear1xltd9evU4a8Y3
	 Y1lt1YdJ8cM+VDnrGicQbvvZTpfwG0PoVObQ4fylM1Wzxy0s953mcHlGIfRkxC5zbn
	 lOmok7vQrylmItknLWtl9mH0OYrxyVf/yMbeHzqz1O7emDuYzNjKHwyaMBosWKpLkD
	 9Z7a5UBZhKv+ohP58puKqjru/YHUZAyLIhiydNR4kB5Tcpd+bCCxZIaxQo+XkOTYn0
	 pZ+c8MHgQa99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A90CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171279366.31540.17312102882977886518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a23e600b2885289a8409d29d3620065a980718c622caca812c8c221da29fec
Date: Wed, 29 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761712793
