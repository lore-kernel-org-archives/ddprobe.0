Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D969182D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760961594; cv=none; b=e1dbMtl0caGs3JO/1fO3NUi6NBi/fF5jMj8vEzethrVF3ENagbB2ZSsZS+eNO7kvnKlrQKbCmWA2gS08BpxAp0kwS71d86fU15gnzRY422NUitzluBw7TCSAk/5QJvoPgzbqkrRNXbdO2Cl/XRrn7jynVbiDmOo6YfLMU2mwZLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760961594; c=relaxed/simple;
	bh=o0Ew+HkKHIhi5HY2URmYLKj0jLhhIRgGJejrFFw2C80=;
	h=To:Subject:From:Message-Id:Date; b=Z3UAD8mijwzEPui8Zej3Lto2fm/q+cSVmsXuKc34IzenXkVWr+fU5yIkzOpf2nmc3lVV6j+UvuRMTp7nL31/ow3pgQwhQX7SQ29WsZmPS3I1L/3J79doTD+wMw/cJYquMAYjJ3bokFbOvztXwJj4m0w9ydoF6YUrnVQelZMiqfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGwhr6cB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGwhr6cB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFDEC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760961593;
	bh=o0Ew+HkKHIhi5HY2URmYLKj0jLhhIRgGJejrFFw2C80=;
	h=To:Subject:From:Date:From;
	b=AGwhr6cBgEpTWgF/Mc59MCTkq8WhNBJZptqjyVsJIcpdMB+taD7ABurPb0LuzwyOt
	 lIBIrthfHm6sAz3FFkggmSZDfIxukBfnUBPlQfXO99I+tnjh+6Ay1ZLq/fXdIjRkmz
	 uyUllJmqBsz71mpiBdRaqUtcvqH56xlHTBfxz9Wnm19qBLZm3mN2BkQGCAy1uod7BD
	 7zM4kefxZYNpfIbUYXm5CEbBna+oEmcZKdSHAMCWqTDB9planSyihwXc5NWfS90bw4
	 bLW2eJ3lQyK/nS/9lqzO+YshVIrQNsNOmAbWUl2cI4y6rP2/evUf90p9aKwHVECULK
	 DQ6cAgLV4uagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2B0CCD1A7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096159363.18916.3767004560714447762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 801f7f74168e7c6a10bfd51653da6f2af5ff1c03494d84f6cbb68b4f480b9b65
Date: Mon, 20 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760961593
