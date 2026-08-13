Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CAD3C416A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786601434; cv=none; b=Nq9Vvjrn7h+vmjexaxjd9UtFcvStABTj4w4whiALoaQ0Xy/kntl+YPOHb6l7KJNuyaU1winA1mCKlsbN9Hzx7/lDyub+lgKSrnWWwkDyCWL6XLEbbFJhpdPf09LPivJV6WnWWL5B+p2eYo6G6D3t65b5tNrbry0m0weMNbs2cJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786601434; c=relaxed/simple;
	bh=qV3UAugjFRHMWDsaqagyC9VTZKMwzeenBWcwZ46JKR8=;
	h=To:Subject:From:Message-Id:Date; b=LWrsQIOZqJvx5swlSbfCKaVQlWkIrN4IwLYaN5RX7EDzj6CoQKUdBzIkmBtO1dVzi0dCFn0LlXc5ySjPn1dCZsYxdl1xD9FsuVBnru2K0n9H9KqQiGHbQ7QXRh0WCqgSm2fy5xhb8lmAqFhMaAwq9vxWXyBh+5FMmjezmxdhh2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2TSz7TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2TSz7TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2816C2BCFA
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786601433;
	bh=qV3UAugjFRHMWDsaqagyC9VTZKMwzeenBWcwZ46JKR8=;
	h=To:Subject:From:Date:From;
	b=f2TSz7TQugmjS8i7+zGD0pySdNJjQ93afKmoTPHJxqpzo+qSiKbLlpTp6uy7Ed88d
	 Ps5I6K7sukW7gdZ5ZW2Vxs5rPAEM/9UDohXQZjJ+hksR9GCyYKSeL+s4iliKVu6pb1
	 I8Gpgsz3Tus/eGv1HHu0PW9sj5x+hg9qCqMLDnEc703/Q2ngOy3yVX6xpldBGrMKet
	 G5iAlfu8riCGYApHoOTct94fzLEhVMLlbedOxJVH8GvJDEzZG84GgjmdKnErthMHcQ
	 Py3kfY1LTB/ADMDXgpE75Zng1yGY4XngPFyiPqTzjDDnzZ1mNrmQTROtJLBHjeVgJd
	 nAr/vCenB0JIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F26C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660143368.21173.11265385353594729377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f9dccc79240008f34de200f3dce214e1834f5da351659ddd9cb9fd9cd60e11
Date: Thu, 13 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786601433
