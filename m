Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD00274B2B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775893654; cv=none; b=e/0PJkHdbfSDSRuntqbdAlE4FnQGP1q5uMJb1ibUGGR9BRkwhBoG0jQz9WIP1yzmEBlOV8mNFj6uyXT5B6XzRi532REtPsLuUvXjmQxCyY7IQJXA/Hw6BdsCCSRmpGy4syEZJNB+vj64B4J7iiF0eMA3Mig6y5BLPCKcd5t8tAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775893654; c=relaxed/simple;
	bh=y6ZOyn/x/zgXx9cLotrgBi23VEl8mZz7Osl4sVvJqP8=;
	h=To:Subject:From:Message-Id:Date; b=pjux114d/3KvIXDBknUA5rCa9NM4DndYt8VoT7g6I4/32CYm+oeA23WEl7wo0GHRPF5teVOIklHfadLUny0DwrO/37zeGO784wCkSUy0AZ1vy0j1d9W5eVqdPWmaWyYVjED22hTgeJmAmB0p3cHz+L9cxBDAhZZI4a4Yl53Qh8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXaSgkce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXaSgkce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0381C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775893653;
	bh=y6ZOyn/x/zgXx9cLotrgBi23VEl8mZz7Osl4sVvJqP8=;
	h=To:Subject:From:Date:From;
	b=DXaSgkceknTTqEfASpLhok/eizU/dS35x9flOQ7tyVwwhJhBA0Y3h+vG6G23exOnv
	 wYdqpi5JeQUKMcLF88Of0fK0UnRuoJjZ8CYuyJ5f9APoa6o/PKwxC/vt2WsUL+tXsg
	 VBv1xI5Py1dSTvlHgsdWGjzhWMqTSI9y1ZhlJXkRia0zz3/c4KisJapIuXqiMfpqhY
	 MSbPtHN3TENfqytmQbZCD9pTeRYiJF1iqvadm61jzF1rSzlxzgs9COJ+JEou4mSEai
	 EC/32byEt5T4IxMnsAhGSD5ljbUNkXXvogPSxqTVsnlmxhKCVk57CKPjC35AqWJHvY
	 5FxYYupG/ShOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC33AF45A19
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589365368.30299.4157848830808449400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899880f3d47983aca7f3a7fbf185e0a859b660987ae443c5ae064fdbd97a89ee
Date: Sat, 11 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775893653
