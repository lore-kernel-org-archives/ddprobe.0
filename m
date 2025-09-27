Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306E718FDBE
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758944394; cv=none; b=AM9JfDqHHhLRqwMOSbTCSL9PJxVX4a3UhSJ3nEKtGPkkthlyY2A6jY7VHmIQ3B5Q9NwFemZJbN44jBV8dwJ7X2wHkQOHUd6qzlxKsSjyOREyNio3CuOouMLEVeXzGewNLqoNh8nAWm5j8G/tYUKGx+V1kFbolPYaOhXk8c/iOrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758944394; c=relaxed/simple;
	bh=lV5V5eTt/BjNeB3LTB4TuhS+6o34U+aJU8kmrVf2xvo=;
	h=To:Subject:From:Message-Id:Date; b=H8IcWdMTf3KsouJJVzcp+oxBYPPT7if485hYmMsV8EJlSJKzzSavJrv+3zk7e9u6vCe0DGAe3iz8CDjvKMn3YsXl0gYhA1ysWLHrZ8YL/64sOMrQeIZikO3FasvDIt7wLik5Tw/5NMTWMkFy8BnDszVY6U5YOE/K4pixVv7MVTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2UHAMQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2UHAMQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B63C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758944393;
	bh=lV5V5eTt/BjNeB3LTB4TuhS+6o34U+aJU8kmrVf2xvo=;
	h=To:Subject:From:Date:From;
	b=n2UHAMQLe6uCGFw5bDj4Lv2teE306GoXQr/wyk2khaHP2ELDP4RdqJYDYSvyly76v
	 GnS2dtTEk8oNUWznKi1o4B0FRpIjDW+BeNxF2x3crXxZ9r/96UszhNW1+Zj5o6ElVZ
	 2XnURjsTvr1uVBSxoa10/2Yir349Q2mXzg0XQL37cY3zwJ2a2pnjauaeZagKIXtXkQ
	 up7p1i46KhZTc8uH8Lxf0yL5w4J4hxoLw0iWClxm1VqtLPIp5NGuAT6VzCjhiS6hMv
	 5tX3R/lJYoIcQ0UsmHlQqmiojBL7UWfUvPx5MxbokPawhMGZwcSICt2A4CMu2KGivV
	 8Esc5hB8B994A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C9CAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894439359.18678.13246308156898504386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1248449f384c6b1a496b3c88f9eed67572cc5cb331e21edd705b918be97ba95c
Date: Sat, 27 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758944393
