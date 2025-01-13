Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64869240225
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736783755; cv=none; b=T5Fr04cn1RuiA8ZZb3gGN21VLt0+5RSsG7ndbpBSJzRDegSNR16nn0DOqCkMRDIyYJZ5mhN5IorNL9+wUhWuqPetjeNdRJ1WcEqD2Y0pXexDhKUE10qj0p+ysnxePJUye76rWO1gG43Vq/0pdkdq/DBCZXlH4W1RrTeRxxDFU7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736783755; c=relaxed/simple;
	bh=GiWGXqk55HQ+QZ/nsie/3aXE9AdLIGxwIfcJXbgghMM=;
	h=To:Subject:From:Message-Id:Date; b=e0+axpapJm8lLGDy423fj6ETwY+GpDwXe7l2DY+utTzYHEhO7TgAsNw6Tz+LyQtt9BhAaeV0qkQ4fs+R8RVN4Q2OR7IQuZH3cOb+v+Qa9zJbYBmLIlHMV+WPgsz/M5poViWqlKE5gO4EKPsXVHsyHHjkEwhqJWuqpkO+iLchuKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRSwZrog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRSwZrog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD57C4CEE6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736783753;
	bh=GiWGXqk55HQ+QZ/nsie/3aXE9AdLIGxwIfcJXbgghMM=;
	h=To:Subject:From:Date:From;
	b=PRSwZrog6SLulu2ATWpnFBJ+WXaUbXmKSN4og/hSDPipQfQpngxdqe/ySK+uKiw8c
	 uDAoNYpZAPRB3UdNmd8YjB8WLm3HWrNrVQy+cailLADTcCixmOokfp17uLUoE19HJS
	 3821iChs77WVoxSVNFMy9pptsvhTJNdJsKHTz0ZXaWyUPJVmTicgbk4F1qbkpcuTce
	 E/1wYHeHKO0VPLD4DcB7qK0A8747SGvm6z+UPVdBt+vZM7EcEJzRSJ9MOEdkez2pvc
	 Ivy8Dg8hu9UiORdQ0WGnGwTMuG2rj3H04NUDg1F9PpJLmW4IGjeRLxU94FsWJJbpLa
	 kbw4ZICQxdxUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1009C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678375364.23845.16899058528263546626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb0e9deb42c8d008e3e07d212672562836fdc65ae0d7beb6294e116cb0e7eeb
Date: Mon, 13 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736783753
