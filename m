Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CA8330666
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780089814; cv=none; b=RusIgNvxjKsnf3FOGIGV44axICi1AA6pR34BFJN7nQIBXb5OFiy2GDvna1mV2gwUPHP5/jK5wMq6oMFlxuaKGgQ2PO6CnhrU/kS/KkIXXuVt4NLOpdz1r3VDhmihjueV5a2c7ergljie71b1HAYOtLLGt8MMUpjJMF9aw8a2lQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780089814; c=relaxed/simple;
	bh=LjOi0QlkZMvEJi8wVdArex4rgLuNoftMl1/Har44qoI=;
	h=To:Subject:From:Message-Id:Date; b=EmIp0Z0bnAtrmgn17TpzRQ6QOucOM12F+lBA0kKxkdstXk0rA+G67TZw/ruwbbR3n4saOvO13qFKKkJq8g6MYX4l4GmGY5LatEC2om/NIumoBhVng6gAcTMeg7xWVvNgQnmUzBCkRkGhdYCae3UvMKB9emGVoifxO98fSjmp+iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqcb9qdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vqcb9qdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B57C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780089813;
	bh=LjOi0QlkZMvEJi8wVdArex4rgLuNoftMl1/Har44qoI=;
	h=To:Subject:From:Date:From;
	b=Vqcb9qdffpxYMPx/E9YiRvEReHpIoiCLp4mYe9JGBlonUfiH9BEE+1JlC+ciLO+Np
	 gr9FxKw/K4N24gYtQsG6JUcuEOu63NI8Mhq/9sBhx5TOnwbyA0LLhKf3MNS0DY3alb
	 1M+YZ0V4I0BeiDY+HvIbqiivixPuHZlkswefjdNMIvju1ODWre6kiI8cqwyQFJjcF3
	 q9vEUHbnjwzzWMyNK6KU+Zv/Ex9UPTvwbbQiuO/h6wDGwFZhtQrWGoEjFEBronaujq
	 CRnKvKfIE6GyM2VZe5SV5lHHUOeOZJZ6eDwryOIHbCtu7/KenSadPK5Xxjp3tviq/l
	 az9NtqlplAfmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB59CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008981370.7491.9826426170678307268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e924bc9496b54d9f873dacfbe62f1f17eec45335992d645eacfe5b59b8ee31
Date: Fri, 29 May 2026 21:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780089813
