Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B5E2F25F3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785622234; cv=none; b=TnVSyAlNcQwC7QFRlmrwDNGIw5aKrHgwHGA23/cJ5pG/fnflNr14q/4Xgp4KeBtwngK/+iANKmXLN9I2ogZeYUw4feSE9oZkkA5wpGW6giQUWvhv4WEHxbZz35f8VzLD2NlpP1MXjN/WhhL8iKyAp4GDevbMaHQxKEmbsHa55Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785622234; c=relaxed/simple;
	bh=B7D2tJ8GhVeE5OtRvpZ6C2JVZDLRU7aIp0zv7Ye4yA8=;
	h=To:Subject:From:Message-Id:Date; b=Ln8uLhQ0zV5oRx7TYFloaA9U/nKvtG650Sr4tMOchQu60yhmDYdLdcG0g2Ok6lcqeIk6mQ919tYatMCqsv7r5rACi/6Lm6y4N2Vz16zJ3Oegkg7F/mbTEn8HKakqKNPITxo4ibog1FHBaKQcb7gVU7HVH9CX+QO/v1vZ3CUKmHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hv12CP62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hv12CP62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A40C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785622233;
	bh=B7D2tJ8GhVeE5OtRvpZ6C2JVZDLRU7aIp0zv7Ye4yA8=;
	h=To:Subject:From:Date:From;
	b=Hv12CP62549Dxd3WNVIbb1vOaqs0KiYok408pEONewE4NMPGaSKD1AGV3bbAwIczN
	 4BDBKbcfswY4nT8P5kDNo1pWHOXkjAbmXccERH2ff5wSlCU3HavqqauBr8XJDasbze
	 ER3NThMHnt7fpwpsmKglzJThXKIMX5edI3KEM4p5kIT94LID9Fiux51Mw+G6Z+CvD1
	 AsOuLKea+Idf21UuvVF+tnF5LsLdw3wZeeRfe0H48KW18I+fAL8xep6DGWGlW+yzcE
	 gK5qmeYPN2KadJI4oIdb3iQ9cuhS+jwLfC+ReOIiOrHBLZjRkyVcUn5EuHgiYr5UTw
	 hrXHvmELW1dzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5ECC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562223369.15240.9704500098412037344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3794206d26a926c8e97ab08e0d07361e1a9a587182096c91780f3cecb4e89f17
Date: Sat, 01 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785622233
