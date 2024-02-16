Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05207134A0
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708055897; cv=none; b=QRi0omvrGw1Euodqb2JK+dKLUWudan4LY7uCJ+dK7A7MYeueEM5Q23XqSLvNQWSbnF0NStCjb28z13/lPvrKuUqtXfpxoe3FE1qYcgb00r20ZkuvhCoNLrP6PV3RxgIF9VUO2BLgSjMzIrHZecXjGWAylISN7j3rtv11TqZKpBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708055897; c=relaxed/simple;
	bh=iVDZjsxr/l/n9CSS50fDJ5rdSv4fgQgGSH3OH0Cnsm4=;
	h=To:Subject:From:Message-Id:Date; b=sNe+pn02joS7Xp6oEfEJc9neL9532CEpUID2GDrClf5En87xSNybwlmY4wPOMamK4PrCxSK4JHWN5ROeR5RM4GBrgdTJXLYjX+xdSaWNn/u7aKFFXtFykwXK4gflzMRQFGZeLFxkP4uDM1Xnq3m+Z5/Pomsgzq0SHHHW9dK79I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjhZh5aW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjhZh5aW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F73C433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708055896;
	bh=iVDZjsxr/l/n9CSS50fDJ5rdSv4fgQgGSH3OH0Cnsm4=;
	h=To:Subject:From:Date:From;
	b=GjhZh5aWOyuyGhXeptMA9sgj0M174qsS7UTLEeVQGp2yUN2s4GwiWUN5PGYCn3xA9
	 NHs7XawIpE0aiZdUOPOX/m1WYkbBYYUmvA+02N214z31Wv/MQa+ma7detv8/7k/wEB
	 UyNTXvoCSnMiYHP03F6hdJ7Yzy/EzG4cFGbOo+YOcHtcI9e1c8ABVW7cS+z9oP7Fsd
	 sEo8wLoacA3ER7WF7fIFl4qyCl90RSbNbYRFX4D1qCj0BFHhoF+AUFn7B6+/RTSXsl
	 7sQkfX0gh9Xy823CDRhkACNl5GyeKVtQ3nu00u9kwKd62Mx52C3rLh0rKH4zBBGg9l
	 Ek68ZfZdYQnlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651CEC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170805589638.20037.7896257528093581422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58e76c1a50f67e27d203ddf22e250855ddeebbf31d2e1304f1bbd75e3f99f97
Date: Fri, 16 Feb 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708055896
