Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EB1185E63
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721034204; cv=none; b=lY15eXukzXk0rr/n8MuV3JdQ3KucGOA4TbTMpbvtbMrEq3brcmYj7KJBysc90UVJdFssNhxnrboOX0bWt2Af3U/EmHIW+IJ/J3qiz4BDM/fqvP+a9jNXzMLrvfEGIR4GYFJb0hHLjS/LboQ8ZfGayz+0Zmy0EVOZm70WCiHAtd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721034204; c=relaxed/simple;
	bh=BueVIS4M8LjYVJEkt+xmPRhhxI5tdulSbKzoUVJXeuo=;
	h=To:Subject:From:Message-Id:Date; b=P4ATPTtJNS1lPokX0KOnTjX+1wRq29jX91nGiIns0++93oFhhXB/U+hxq1x8PLpXuQf/JHOOsB4HJt20KabX8ahYM+msDTlX9CD3cw4xF9nBL9fgoiIYf+V6hT9vKatAr1MnSlo5VabiWojadC8F1jogaG1NJdRW/wBNv55r76c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQrxWbPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQrxWbPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B566C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721034203;
	bh=BueVIS4M8LjYVJEkt+xmPRhhxI5tdulSbKzoUVJXeuo=;
	h=To:Subject:From:Date:From;
	b=sQrxWbPgXi1BJHmabuPuTgsRFvpOCg8bSB3w3MiyYr6X6LbQIiZZoH2/KVFJBT9EH
	 Q1UZylFkeZX3Oe9k2wsXMjME77K125NGmdo7xE9H/l11lnZO+ZeXVJHA7oEaIQ/qgh
	 852PLJgPygMORP3oM7dAoEsIHh4Lj8mL8Dav+51+bU/R6EsH9QrAaCMEkq7yr4Udxp
	 kXe8iDUhvRjAVEC62TC/flvY8SI8gYv9TCAva8GhH+Tg6nmHHGYqsuXLqFhgZxJ3z0
	 to+e6y44amR0a02Pki4uJ1cGd9Jkt0PSCLAYxUfbuCWzk1Bv4gQQsCqe50m3iA7sK2
	 Igh1GMd5m9k0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AC1C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:03:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103420317.10294.15359387531978326685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d32eef15a98648300457c94614f50ed05eb2ae0ebe264abd6cbd09399ab83f
Date: Mon, 15 Jul 2024 09:03:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721034203
