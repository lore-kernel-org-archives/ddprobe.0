Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8712C21DC
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768370634; cv=none; b=F6z4ozrPceyVypsfkeMvtoJ2wdm5EsaJ3upTDyuRkO27kbsMtUhDwHqHVrBJH9eldZaO3v5QjQmI56aj0mz/LzKcC71JmZ4t0XjB3bqm6XThOcRqCx3/RrNULbgawWgKqvYzKU3SKqCRz0numGX9ypRwQ7pKM0ORyiTh3J7MgFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768370634; c=relaxed/simple;
	bh=Qx4JHctuQInrkhuhm8+ea2xbgOZjvaI8dwN5ZiGhXtM=;
	h=To:Subject:From:Message-Id:Date; b=n+/oeGrJTMxte/DL5uKcyjXENKLRE1Mwa37ZLzrjICxBpLzqvd7pcGExQUn5R7ah1AhnThEZmQvSJ2zNO2BCpJo4OL/ITB+Q5DXmR5FrZaRd2wYqvAwWPv348t/X8+XPflqfpugkFBVdS7k8Z4z/9TwZcEe8aRhGrEDWt6TQ1MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcRziBTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcRziBTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01C5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768370633;
	bh=Qx4JHctuQInrkhuhm8+ea2xbgOZjvaI8dwN5ZiGhXtM=;
	h=To:Subject:From:Date:From;
	b=XcRziBTrahTw/oeXgzWpIkHa1XTQIqTGH85QyWKSBSjPDuzoH/uPI5ZGP6jMNz634
	 cgVX5Mgv5vYE1vl7lfd5X2/F2Sl2Az3jDheoeyWGCz6Jp7MGVTOV6914oG2yVQBWai
	 +FNMjHCSEm7mC4atec/mifuImQ866B8XkewHRIAV0/D40NpJYKaBIcTQ395Hv2p5AC
	 PzjzFtz63FASqUk8l2BFOhtwCDFnvoGBHQv4SlvUT2v6hohnPCSZ+aWRmQ/p8XYb8A
	 ySwhj2VtkHYBc8GhosEDmbZwWiJwgh5CeZtBmOpE0kCn0e98awti3zBbFypu+L7VMz
	 chBKdRBZqyQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F493D31A0F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837063357.21146.11119211752988933372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60feef3483403ff1527ffd787ed1d78b88fa09e45d47028497fc22f63a5fe8ee
Date: Wed, 14 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768370633
