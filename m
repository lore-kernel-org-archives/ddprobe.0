Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6DC84A2B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737320154; cv=none; b=Lu/a0eYKaHV/PuaaBY+tPVLmnlL5jzbt2wbecxrWwl2K2UMROUHe9CDoqXZKkhLNA2zOuac7M0SR8bmvM/CNZyl44U8WSEI9o6tEqfatvTa0jJXe/hGVrtSJVoVBZ70ZRTJgZfcykDJxCUz3AefOa2C73Mybv7/JF5oyInOpEDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737320154; c=relaxed/simple;
	bh=pTWV2Laonbgnmhlsu/4MerjNP+rnaJ/lNhdEQ9g2wj4=;
	h=To:Subject:From:Message-Id:Date; b=JQ7U99leIg2GgeeqooS6JIcHK7vA26A3RLPvQ72OtoCAyv7ltQRyVqqQsIg4sITUMPHB8c9xWXwEvXM99TpplFBBIphKvWc55HNOBY613g1mEovKQKhWlWAlSW/Vrcxinbk9aXK37pty8dm24Yo/VEME1pRh9l693wZZhu4gmRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X84ex9px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X84ex9px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49C4C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737320153;
	bh=pTWV2Laonbgnmhlsu/4MerjNP+rnaJ/lNhdEQ9g2wj4=;
	h=To:Subject:From:Date:From;
	b=X84ex9pxbBMqkbhxZbc+eQxOn3jAV0NeizYa/nZ3yEZgnkL+myaN3F4Wqy9V4aB2E
	 19XDalZT3+A6C10hcZ7EyqB7qnGodQ6zuXrZwrsX4m1x/7rePHN+uCg4nQVBY2BPbt
	 M/yqJ0j/k6LPY3U7I/rSjcu8yk2SKcxAbKX6zC/MrtFsArsa5ZrDzsIdPyW4/0VYt+
	 fCVgXz6iG3x8+w1JE9X8aycVrjyZOZsXTY2Ak6tr26cvXW7ZMmC9ZffzUex6lLLL4M
	 W2WZfNYA2a9VpApR4ZM0ofLt2f37Y6gBxtw7yoN3kQtdIsVaJFSSlV+Mrbb90YwL5Y
	 yZExERHVATWNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93810C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732015358.390.16519870875372265363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7882a96ba990d47676f90722e6eec6e2fe45692564e8089bfd66fb53f662c632
Date: Sun, 19 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737320153
