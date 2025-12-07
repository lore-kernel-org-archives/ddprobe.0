Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E520D27FD6D
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765136574; cv=none; b=piH+3oMRKxbgsdJFyTLfV+31U/r2XE21L/qfcITUY88aMclsY8mHkyPuL98rpov52OkpeSaUDpacs9lpUleWSTo8RFAjhcZ5L+AmkYaVutG+4tWUzwv/IRQRtOD0U36Va517EcGI2n/9Fj8ZJCtce8uWn3weohjFg+KJlWEIkmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765136574; c=relaxed/simple;
	bh=5lQYx+MDiPVlNSqonp904WP7EGu0a4VUpk0J5K8aKAc=;
	h=To:Subject:From:Message-Id:Date; b=bxvCynS7GWVE08EbaSYXwYnMfui4zBq3JJylW9hhxafj5Nih8CiUvv0oAA/wXmJAC9R9ISN72u4I8DeuHxx8fmBfqtRk6wo4zXFvSoDCYJUp7uY1k3elD5+d3BWNmxEad5+poPzrUY2aIweAYnaIzWBOREBJodGo+9BtHC/4Pjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubw816dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubw816dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC089C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765136573;
	bh=5lQYx+MDiPVlNSqonp904WP7EGu0a4VUpk0J5K8aKAc=;
	h=To:Subject:From:Date:From;
	b=ubw816dGmy1Nx4VS7jOAt/tptt22xtEKcUet3k30vDnxbLw7y+F+RoksNTvkQ9P/e
	 JwhParivrCTlShe+ohdKUO6cx/p5y+V4JRVUNtzdLIbt70YJiHNXvs2bElfWZ+pd4l
	 GswlXAREmlgE8Xq+uuGLXQUgF84D9YRN6P6WuCS9Z/qWID5V6I757fx4ITguAfKcbA
	 plrhSV1dKCzp0YWmjodD7410jqJ2/BDYOhs5PcS6B2W7K9T26bCtpjdz3Rhamxm7OY
	 +hlVFnFt2qj/kCNuc0JJsicY2UDMjpUFwmWVnkyZIjgD+YzAS7WvEf0QC34E1G1Mqf
	 gv+J+9kroQEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95767D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513657359.5983.8368785172718806997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b652dba2611955ab08e758735f4777ab2f0e8673fcab490e90539000bf3778c
Date: Sun, 07 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765136573
