Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1112D303CA0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771483494; cv=none; b=g6Y9NmI2Tg08N6FmqucaJISV+YJBTaOCi4mfCtNgRR6LUCCgBNArwFWnxVYd6yYoUdm8pyLbQxZ4TI08ZKdgNGHH4++aYVP3Eip6QvWxW3tuewbULz0q8GP8yLUHB72LluF79twXadEafw+I6RDk4W1B82ae5311mYpxcQC6BX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771483494; c=relaxed/simple;
	bh=3aoY55x3zW2NExUyun7YCfVNSHnchRza45ugK1itVwQ=;
	h=To:Subject:From:Message-Id:Date; b=O72qEypBxQtZ7wNWky6x7dT0Qi+SJzPP8RTXxPwq9mxblG34AvzbFJyE9Zj9Z76U0377XnC46xJjSxxngG6t2dHS71uOeJx3yhnb9m+otmSUrCBLER4dlLGFgbgM6vJYBiKHub22BnXHZibYcSASfv0L/P+359EYiqPV5ApIb7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K17GqApP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K17GqApP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4748C19423
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771483493;
	bh=3aoY55x3zW2NExUyun7YCfVNSHnchRza45ugK1itVwQ=;
	h=To:Subject:From:Date:From;
	b=K17GqApPu29hBJD4SOjteFWa6oL83W9qDJVJoKHGEw9bugYdQUbRji3zIc4k9D65/
	 9GwHdB/c+Bj5dFHhk9Waiv5t45Y4kssYLBLMooKkJGsAsRfCwXaqL1gdadAS3fes2v
	 Zchqjl442TOsWxxtJA/4Fwj6o+irdC1nN2yCkLqJlb5H2LzHMHQFicil2NIkf0LIT2
	 J1PlJ/+R9+Uq46rCNPo2sQCWkYVbacv+tKnxiq+K8RVnvlKbZONjjlW7QbPS37XKFC
	 yzC1P59qz7MPBG5pW/QDRC54jvSWIRdDn4FZQIIGdZK1XajuQ4cRwk37UnCb5ikhvI
	 nKaXtUwoIC57Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BBDE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148349359.26369.8039751171959052646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090cca7bab1de6392cb4aa14bafb93d7e9585b7ede25c9f8beac70f1e4ab7d28
Date: Thu, 19 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771483493
