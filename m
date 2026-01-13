Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1AC221DB1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768264433; cv=none; b=kN8keH9G/mu+06fbdtnB3fgN+n/mVUK4+MCwkymMcYODNc+nPMvgejp4SS4Ba0rGS8BaALsfJw3apBRGvdO/e1LadtG7vSfKqeay5oVm/mlJpEnzghzY2H/jInJygqYoNidiW4wQz3CZalny1vA8EpRltGXrRa7fOS5WgGyib2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768264433; c=relaxed/simple;
	bh=QseOHoD3YAPoC00Bq+GU9f2yrmfM4M91gZd7HCy9IZg=;
	h=To:Subject:From:Message-Id:Date; b=T7xod3LfM58/5KX4gREOPwYkesdhzJo9uv4OJ4HDdFMEJKh502pPCbEzxo80Hibef0fpJ/aisLfXfMNQFQM0YzHEiFCnFfm8aXmZ1YPjfnMtTfphOlyZ09+sG2F85oVbbDzTHJHTYXldX2avR5kX8bgHq1trxZLmQsdYqJClKJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEbM6+Zi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEbM6+Zi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A329BC19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768264433;
	bh=QseOHoD3YAPoC00Bq+GU9f2yrmfM4M91gZd7HCy9IZg=;
	h=To:Subject:From:Date:From;
	b=vEbM6+Zi+HlSP0CZHcrkbIPk6IhX0/xJrH0YzyEP8sRjaKUYBF+gN5OL9+ESkFvJt
	 1/6FWD2I54x8HGI89h3HZAN0tiBVlOkoOfaY6tT2u92Qdp2SA5kET+8QY6IdYgLzH6
	 Q6yObnvKPEzIZ0JjZycEVLB93tuWPgcKj9uhOhVZpku5gUdrHd0ST3n4Mp6VH9UI2S
	 yOQ4qZI7QvHI+H52KYbMl/Qizf+bgQfo11q7r9eAAFT+Tg2BoA2V9L+i93C11EuBHb
	 i9c2rUIzShN3/HZAR/tvbv6wQMnH5KV19ZrMR59wUGbNACjeMELBj7UJJyGgBxwKsQ
	 5r9evYDj4521w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950AFCF45D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826443357.8276.10174991009680556257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee048c014905e5c65ae2657fd6ee3c2dfce6b6cb15937fcdafd74aac3fa6bc43
Date: Tue, 13 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768264433
