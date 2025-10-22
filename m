Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C85C8248C
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761101994; cv=none; b=XK0pR/xYzNbB3cGTffpRc+rjw2ftlL5HiWnIM7wXpZZ9mD7AIib9/zww5lYi7Uy+MuKt0VXKsi9/MUZvbgsUdCkdPfRaVzu8bFVbmy+Up2pYYonMd/9f0ZCAIsStIsrKWMcvDicx5EZgrilevwIW+BSiyTNfpWHZIqYO7pfth9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761101994; c=relaxed/simple;
	bh=WOuilV0k9OvqRDODjV3ha9/tMD6T9OuU79Xi9g7jymU=;
	h=To:Subject:From:Message-Id:Date; b=sw3S8EcDfD6/7XbWpIWRJ5vlCrSo+zM9UIDmpmTK/wJ9KSETAok5DDL+Y2WQYQUf8iClRRflYwS4UybPgjP9ybOcZgumEZVLcAQNtxB0DjxvCrff/djbFen6ySuf+foZIRZZicBHJtOIt5qQnrrthe3w4PhsDJYqYqMKrTyE2CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+cHSzTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+cHSzTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9236C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761101993;
	bh=WOuilV0k9OvqRDODjV3ha9/tMD6T9OuU79Xi9g7jymU=;
	h=To:Subject:From:Date:From;
	b=P+cHSzTwdFkBXPgLfJTFNzU4V47wY6VQih+FosjxTVhzj4BMSKTAyAgzRyFqCMtnT
	 AX7ytIflu1eyGVz2BGzbjXUcbpSDNR5No12K84zQD9OxFCrqupsJGlI6EWwNoZOgwL
	 CeTIC1xCea5lgzl7POw+8h5j3+KyOq38mfxVnQqVdmnvtC4e3MPjyIpkVmarLiNwI/
	 6KqEyjs0vyvTvd+7oWo+1BvbpV2+63wq/FwggAphPjx7svXm5V+o7IMQ6ZVpFPL2LR
	 WX/6hJ3OjuSBOILN5lPasYZEgDTcmlPzZPD79orjXSTHrvJSQdSXKe5eS/m3n7K5jd
	 5RBdYzEO3snlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D8ECCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110199359.26849.3689147678557915709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e5b2eb7a441b5c27ad2f3a471c6a7fef8c9f3df02e551d7ecc8093ad5f306d
Date: Wed, 22 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761101993
