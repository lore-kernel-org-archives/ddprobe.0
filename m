Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3FD199EB2
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717709243; cv=none; b=cap6MwrBk+Vz7t7/PQyNjkL6nz6jCyvS73RIOGWa0rHgor9nA/y4MbABYFq/y42YMxqrS3Jx16nWWt9E2fvjPAN+5Wq8P5oHwL4fHqUsGTR29DH17kD8IsEF6sPWFUiKCxA76RoIvfzgx6nLlK/pyQugp7NYpW65OUhYZb7xXlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717709243; c=relaxed/simple;
	bh=k3Gxm2VV8MqY66GDsdrASBPtJ+0VNTNO3Gxzw0P+PX8=;
	h=To:Subject:From:Message-Id:Date; b=FVd4ydihwr9Fr8yIN5F/b5UcoEM1BwL3qO1Apln4BZgwpangR1mwxoJArPDrZuuUjILQMUPGxi/EqUWodFbdE8UrTro1XfO4Qn5O3NTemaVMVGvSEj1CR3bBs2iMD0ht5lt9QoKWNyXDixkuEOIqR6iktKloUaXNeiG9Rx8syeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jivn1L3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jivn1L3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BAAC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717709242;
	bh=k3Gxm2VV8MqY66GDsdrASBPtJ+0VNTNO3Gxzw0P+PX8=;
	h=To:Subject:From:Date:From;
	b=Jivn1L3fFiOrvN7uJ5OXmWeHeJApJeGq0gIJLooNR/ZRdoPh9+ZoTiijgdo2gIIu5
	 AxjJmZgFk/4GHyQUqKGmgKScDxGyCugCJyAs3rEbc6J6nGDvDEye5GIrK6WopZfhVc
	 eE1ZlNBfhY+tlspVjRTtmRcWyOPcAqrWgSwDDw3srPaYLBj+0Xduip2wdE+vNf8m+u
	 YRZm/NnFerKfNqFjBHyIMBivSpqIMpf2BRhtkxKwRRKjVfhJ2fJyHXeR3R3JATqXun
	 YCGxS5OYNqQsKgRLzpr4SQJVOZ1ypHFzkziOd/ANXDfP/wYQEEooGYaLbfJxd8aqZP
	 NVfJJAJzPmUdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE450C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770924282.13370.5598765861299564496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0f37b7b7b2226a59c9edd9d9defeb30d5fdfdef62be2bb1b62a6e1d2697e43
Date: Thu, 06 Jun 2024 21:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717709242
