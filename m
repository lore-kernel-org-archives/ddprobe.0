Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023FE37C0E9
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773614694; cv=none; b=EyoLya/hDnLQOAZKdGe/6bJ7VZZgn7sMeb3R6C5nt3FpoU7sjq1ddT/fQua3mkZIn1X+T7VpkhZttcgq5weiv87JUvu3JQn6JSKRoLfcynpypkn6wkgGNxE/xaGBakBIyUKuu3OMLM4Sb/Dm02sI2G/ZMbyBXDeMF19KXpdHTGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773614694; c=relaxed/simple;
	bh=O78RQte9o/PRUyTv/YXMwWGo5YUJljNShYUVIcK1rEs=;
	h=To:Subject:From:Message-Id:Date; b=rG+k3nXHFWPheZEfxuUw5hGy5m8OnU+trLa43oQ4GB5GQJCysG8gj4szIjS5/RHYtwAkG7jGZYaYonfQJ8D63FWaUdbCCRJbdvdwBZxecqBV/dWnLjGYdxGiBVe6VGffsV9BBF+F457tTnMcr0JCebNCLnbqdWkv/vc4SGo+hC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXRnigN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXRnigN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A113DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773614693;
	bh=O78RQte9o/PRUyTv/YXMwWGo5YUJljNShYUVIcK1rEs=;
	h=To:Subject:From:Date:From;
	b=JXRnigN8ijuchybLegncu8kwz3TUHJP4I50p7/6rrNoftjDA7QWLRpVPj/b+rPbpx
	 GVobVH7nguF5Fjeopu4SJ1kyGoPn0fksQiivOJztgFNNXOA9ee/QQViBnS39Giqvuv
	 UdJp6Dg65UQwmHznQmdI0sGbSTSp8kAL07TQd+/rzs091MwU0D4q5869I1DRC3HNQ/
	 KiJtaVh5CqRSxjIYZRQG6d3RRNRNkI2SPS7neCqi5STUJ+Eblrzoiw59Fvb6em34uW
	 kyLxHya0YNO9EJiizwLy4BbkjmlVqpFDw9M7UzHhcGMcPrv5VJ5SzsAK9Qf5AdI6G9
	 QeOdLSMADdCYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B4F30283
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361469357.6679.1846271129024143228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76790e2719a0c8d6e69d2700005b535b505a957124cfd0d76b4e0a9d42438aa4
Date: Sun, 15 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773614693
