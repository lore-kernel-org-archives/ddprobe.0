Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6BF376
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748995794; cv=none; b=Nf2uNnPve0cfJGUA2PVCxaquIWUAwT7/59S1/O05/cGH5F3dx6E6WItzIWEvRum2L/wJ4QtFJYSnuAsQUkFYJVOgbRVjCjYYVOwaFgMbDyZZTpMINlocejijjKeU/2ykLd5/lZV9qqtqiLklqpb6+0RwQXJnq7CASoKXpP+7j1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748995794; c=relaxed/simple;
	bh=PbWD+q5+PgWuIqmhJu49LQly92pjxtuLlw9XoFQFKB0=;
	h=To:Subject:From:Message-Id:Date; b=p8m844LYcAJV4FC1kFYbOBirXfPmu5FlbsuJfZp3usARt6R7m77IrovtTjiTe2Oh4Ctt5v16ikdtNJF8H5lQgm9BvIElHAucYyiF5XgWqIXZfoSlzhve/baxlom9ozKLY8gEFmS8hMNgDETYbK5x71w9eXbw7qv70LN3V5U3XzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPbiyPVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPbiyPVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A3EC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748995793;
	bh=PbWD+q5+PgWuIqmhJu49LQly92pjxtuLlw9XoFQFKB0=;
	h=To:Subject:From:Date:From;
	b=UPbiyPVbA65PsrvFA+ALPD7tVwEIvLedcAtbtqpMGPkiX1mmFD0XGxB39houed8Mi
	 X8blP8ckt9t0b7vm5f4w9XCgigtV9gX8MdWa6XZPPAUzaZ+YEN9HEhbWR25KW4FlcP
	 el5V93xmYFnft0pgy2L1biXVwV7vMpLSWY267GDzybjVZaATK40Xj/pYu9kNIdtsAe
	 cj+ZxeGvwQIPJeQCV9INWfSPro4HYlO01cbtKTq2D/X9z+ZNiJ0oJYAVuMjEVtR8wp
	 tPIs7ZuCtwdxFR9EGLnWsOPxzBwp7Fr1e0lr0s7wqiRJFBatC8KyWb/3u365+OjqOj
	 yZ+wxx1MIIFew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95BC5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899579357.10499.9408728834458313631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236408ead57e60c000322ce30eacdb7643510309c71a0a8dbfb36b3b65fbbc8a
Date: Wed, 04 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748995793
