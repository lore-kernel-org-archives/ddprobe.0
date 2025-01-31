Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5881E1F3D3A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738353954; cv=none; b=IZPICNPJ/CSWNjjxIBgjA2QbOQ2kTckZKBHLEU3nZ/FAeu+iNA0oZ0Dw2nzt18AJko9f9JHYVhkt0/6mCLImrWDRy3quET3F80C9V/81tGNhf/W1aJIV6wA8SeuWmyvXv5l9DPaHYMhPyA8yDw08ceGDv03IszebDrdJzYzuHik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738353954; c=relaxed/simple;
	bh=g39g8ogY086LBfVkuPUxfD2n47tqwSmy02LKuTVdQZg=;
	h=To:Subject:From:Message-Id:Date; b=QGVwvxC0WMbeXvAnc7hF4nPb5R0c0iwwXqfvxOfJlV16CX2dj3lWnJYje7jcSIHEepbbLCe+HxaqeJGD6UXGHluBA8eGP+PTEz7mSs3aDg5rhWunS0+rpVak1UdyC55P2QhYdsUL4PnVnpjRx+fHvMuiZBz78iq3TJz/QVW8aS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXglmAq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXglmAq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E44C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738353953;
	bh=g39g8ogY086LBfVkuPUxfD2n47tqwSmy02LKuTVdQZg=;
	h=To:Subject:From:Date:From;
	b=OXglmAq8NCzIqcTt8nZ0wqAdfatZopZ4UGDJ0XzB3nQMaewWs6wRPSbTP20kudJeu
	 VyApXP9EtSikfFKxwEkUoT8hNKWiDMUScWPQFEcYu+n+JL9v7MGm9U25AynpPiGYjq
	 GQ8N5531IX7OtHNEjZ2HrSjSoZbJk5mJJnI6DO5oX3Lazqi3QUhGU1dYuQeL7iRV4j
	 IyhHp079SIzH3EnX0tqiHlaaSZ+KcuVpE+lwCBS2E9WTbHBapSwUddQo85YEOwZFya
	 zxXKCyn3DC/wr4GYCgDP/Zfy4gYF3XUd9SjWe+ahGZi8XaGl4GMzjI9FZqz8ILqwqi
	 RorvoQxN++otA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B40BC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835395362.28307.17846400621444151866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5612f99512c00ba6f139a2ba228a0c8004cd54a0651378886410ed4f781655
Date: Fri, 31 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738353953
