Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8989317ADF8
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 11:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739185554; cv=none; b=HsHz0tTies4I/zzNCM+1ZgtQBm7Dgm5h9NT2IyZ9KWcIkfoBYpWDJxZkLSTQAAKsEjQNops5kJmezJ2MXL4Ys93fVc1FOXAJ2/bxjgXTcNYu6GZfhbhl+0tQJx2YAfcXRZzP2P6TgPKcAm4Y/oJa0JgIY+gOu0nSassglW0013M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739185554; c=relaxed/simple;
	bh=sQXqibW6AYAen70l4DqGKGrJWfZ56wOkAPafkbwLhzg=;
	h=To:Subject:From:Message-Id:Date; b=eieYz4WRC1HP3CXG5VIvvagHOT/uedTNZuoHqkVbpalH+dnaqvGl7lHv5ldHLIVkyLdwT4W1G/uokasL59GVHmluF4oYYTJTwTzJgNAStmf9fr4cbFHC7NQQ0KVZvTw0mU+xM7/OReFkblmSdPiFGKajAhz+XcwGhyfItmj7Ojs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqvRiCIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqvRiCIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A12C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739185553;
	bh=sQXqibW6AYAen70l4DqGKGrJWfZ56wOkAPafkbwLhzg=;
	h=To:Subject:From:Date:From;
	b=LqvRiCIiysO25Gi5/4WRHbPu4R8K6FSLEPzj4vcxv0tYOcs/6IDRJahNpET0fU2sr
	 T0nmE01AmXPtG2c2RH5v84ehHwUzM9+yEQmqYzWyEphZ7y3QMVxlxB/ZZBh5i4VNEF
	 JCENyb6E4dEEAYKOxQc+hvpt64zznhmyW7QIZt8TIOlvOmJ/NmW0+jHejLJtB5QFbQ
	 iZgsJlwfQYRbjXs06OW++88tiD3mmuexjC+0Rs8kgaZenK8b3Oqe55qUtyEvQh3Mgk
	 f2PVO3OIqgJLci4DgHTBaLiXOkPj2Rvvg8VFskd7F6PBVk9SGWTQ+D7JV7A7ySNzFR
	 gHSxS02VwWLzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98405C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918555360.19675.9183369491792947110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc700150ab9469738d88d1562a4f860a2d47eadd3b8cefae62bc7c680da8e4d1
Date: Mon, 10 Feb 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739185553
