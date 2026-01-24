Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A58E1C84DC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769293434; cv=none; b=TsXkEBbFPKUmRu6tMcND4JOHO+PKES7i0YhuPFYvvX02AiOg0VESfk2AiG4V4zlAG4I1kGdxKAkG7ZiCUwSc/Wp9cB/O4bgxSZB9VjR90ZkcJ5BUhIHtDKX5NngKkCeGlvOmAOOWODIM52qWxGKvjL/Ww1Vol1OReMULEK8hNfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769293434; c=relaxed/simple;
	bh=HuK8uAXjJOxUiGDypj4TE9d5lxSXKe+XY7orN4jQmb8=;
	h=To:Subject:From:Message-Id:Date; b=E5MkS4GDhdY5Gc2UhGxZ/Cj6Tc336hHwmr8/hlkP8HlDx5MKH4Ws8K0fzs4sfA73ILZl8bfNX/5+z0GFINSPodnC61MfDM2VyjgRI+Rr3/2z73QTq7RhuPOSvwp+KytfURftz0P6ibJTf9BvOoDFT9t5698viSd9K+aoY4+oixI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfdaU/qO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfdaU/qO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A5C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769293433;
	bh=HuK8uAXjJOxUiGDypj4TE9d5lxSXKe+XY7orN4jQmb8=;
	h=To:Subject:From:Date:From;
	b=gfdaU/qOQH3J8sz6b9XzG+p3r1hubbHRL+hRJZOWFmqqSx3vWgjCHgNG1IZz7ZfQb
	 aZEUXEYRTEkPi1cWHBqv6d+oRLgK/y+S1w6SC6x8VLrlN/TK3kzSY8H+Qs5GB+ECUR
	 1Vx1LRQ+pkMhdSCrRvOuCn1m+zasosHhLph0TxVYQVG/LIDUzgyVWKxTEX9TNj0BM/
	 zDVpkImAqW47I4xL6ip6NhDoCANWQssPFgK0frK+bq+U6absphQrpaUfiiQ7Ih5BsF
	 S8uqo5HI9T2hQ45fgmZLANkA6K6MnQ9r6RMZl14o2R7LXvfcqlDIdRZUii19+d4p6g
	 cFLu6alHeoETQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E2D715FD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929343358.3894.6975952596020477477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd2a16384676ca9f6971c8a8b14faa763e7e81c4577d0e87ff06b50f624b126
Date: Sat, 24 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769293433
