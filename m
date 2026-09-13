Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344AB3939C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789294834; cv=none; b=uiyxogYXfX1tYl0Kvb2JWSqP20IyVYAnIoaOv6cfGRcNJwfzqmvU7AgLwU6/FG+8wSMAVfXQzFGRBEkpqoBfbB4fLYMkGXlT+a2XF25s1Xle/6cMbZFDqarWkzxDfWBFvyBiq4fKyKjNkHolXUFmV9fe8sknIoQ0wwPVyVvR1dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789294834; c=relaxed/simple;
	bh=Q18vmDuackD3ORgBNqQYALz7QjQhqMwxbjC0zn6h/C4=;
	h=To:Subject:From:Message-Id:Date; b=kzJduu3eESzSF7tikt7A8SjDIR7jxOaGFoStVMP5O/t250mf43H7tv93aUNz3lOVqNmOuWP9U/NqLW4w0TbhagwiGt83xyLBu8FH0lW7vbE0xYgIKLNPyucQIBhLq1PnaNOIwTKzRM10FBUYALVRbDu84v78jHUSwNSpZgd0Qcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBjDftIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBjDftIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E72C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789294833;
	bh=Q18vmDuackD3ORgBNqQYALz7QjQhqMwxbjC0zn6h/C4=;
	h=To:Subject:From:Date:From;
	b=GBjDftIhzUMDmWoMHhC+y1bI0EwVtq1DxyAnafJ9tMS/i5NU/ym213jGKkPAx8meO
	 dW65Hk61TP12rcYs8rEiWAF0hdlZgZ0qUpUqcFN9ONsZYH/+poc1VvZUR+ZSAnIA4P
	 CPGZeVZB33F1tIdf7ABpziId3auJ90ImVdTmlwrGzKYkSiF1ZNtzrgvHDoFeJkR5lX
	 zn9BYhoblIptcP/69NlfLQcrP+GX049nmora5/C8D4o2JHyEs+WKpLAFjZkGkb/LXZ
	 EBedtIXgL4ru7OVvBVzC1fQhXbs08iEQHmUdH60Foozrt67K8+u0619LlhgFaWFbs7
	 gxsqJUauEe1Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ADDC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929483368.3612.2277757504558065329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c180cb72f96d29057c01dc99f456e9707043d09c9d88de442d3c1c30a95cf8ed
Date: Sun, 13 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789294833
