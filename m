Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292781B81A1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768206234; cv=none; b=KnG1P+MVK5C6i0BfxgZDPU4z6ArFvgQnqj5E2UY4ymiGPIDPNwvE+HtWkuFQNrVf/lNL+C8u8f+RsqeX0wkHgEiPqdtbBTp6MkjliJ7DEChtA3WJjctyWGuSURZnjSpHLyijLGBrwIi1UKbhnNCJHtQKwTH/cQzQknWhkcoNbPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768206234; c=relaxed/simple;
	bh=NgoJtkXbUwMz74U6DxANUf9Y8gaRJhHo+81UDWE/8/c=;
	h=To:Subject:From:Message-Id:Date; b=tCwxkace3BlzkRNXgTyRQo74x0ELavxaKyEyzzJ+xWJjEgYL25rcW6JYBeUCC0i+MR3ZZBkDfTF6pexxlRU81KeikSBo2FargIFDobAp5PdN3qDzfzPKawKiO2yeXhRnlD0+nIVBfe0y1bYT0eEJg7MHJELXAZDbRN83W4Cwtr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEvRJ6lC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEvRJ6lC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2B3C19423
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768206233;
	bh=NgoJtkXbUwMz74U6DxANUf9Y8gaRJhHo+81UDWE/8/c=;
	h=To:Subject:From:Date:From;
	b=TEvRJ6lC3q/ph2zLeHIiZ8l+UXE3/4p87SJGeH1KgG043fDMLr3WOf3Yth9OMBYLs
	 9271qPQ3LahwfM8/GRPciNmi/gKj5kPWOo72EguM//Err67SdxYHXSwPGl6CHEGDsX
	 sgpu6q4DZcMfwcV/VzxJZpEUIQnApqCKt6BlLH6yvC2Mtj7ffQgdH2DRMP833gxA8v
	 s4MeDeGV+DCoWS5clon8Z0OIE0dOE5lXo9Uzlncxpdds1r7EiN/srapWnBj0zFFjEH
	 lMXoOIUyhxPmabuaorZgGBZadW2mIHB9uaSbTI0d7Wz+Yj0kqw5nUDMMejayZkmQaW
	 NAjhMtXeQ1Sjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98668D2504F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820623361.19234.6771302338434877734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92c53faaa7e9c8f3fde6ace119c4e0b630d2acb68bda4ff6e0921dceaece5df
Date: Mon, 12 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768206233
