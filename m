Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D361F0991
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765991034; cv=none; b=LTIyEWOn78Bh5h3dOx5+LmOBj/K/j+S51p/vg6WdYjyKZ02CASNiKMKPZ23Hv1i3oIGUgYJ76VGbN5nN4BR1F3Mo5xsmnd+nv+0sGfHGwLSde/aSdc09hsXRu41f88b+5uL0f3ON/Bz2R7BbJrIpn7BUhT5ubLTVIs3ijhIi30s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765991034; c=relaxed/simple;
	bh=XD2TsPreMkmCvFaKy8jJcquu0U0NO60JMS1PP85KceU=;
	h=To:Subject:From:Message-Id:Date; b=JjE4pDLPCx2OEErmILkLZkRWNGS/7LOtMZVh0DBl7M3bAiBT81iqzmmvZyw0okaJ0VixYYm6ub9zKYWHkMd/hPKwvkniLWJAl8Jxvpo0zWYT/Zv9pqjSJ3QmEn7RWUEhQ+wCRR6XKJAfEYvPoJzrilWL99FuBMsEUf7xNbKLZQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrruPaHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrruPaHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B3CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765991033;
	bh=XD2TsPreMkmCvFaKy8jJcquu0U0NO60JMS1PP85KceU=;
	h=To:Subject:From:Date:From;
	b=MrruPaHdQqYllpo07aHqQlSKqBQ4MQraQwTshXkPdKn89TCaHhOw3F3nrGzzKttgE
	 UJYy4Y3FnCi+Mwjjt0KHTqXaQZDhQKG0lDK6jJLIDNTqlBCPA6239TsRsr07N8I6CD
	 xqJqqZsocsUUsKMKgmneRfdOfoISX62Egjxu0oqaXs7LVO7eHAJIrOd8erW4NTPNkU
	 WONy6DBy8bVh1GcnMOZiQnzMWD5126yiCHl+46bLfdYKxINloI8EqUeWgY3Iq3klYg
	 jJyGrn1cSYuKjrq47PeQPl9b7I+xugMGQeFc+e3ZxKP9lp/V3GO9xAkOP8iNbWUns2
	 6Q1urYC82r92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB08D65C7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599103363.19102.7066213988521985143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0fa3055d5b1dd7b716333b64d9f897e31098e891a3019bfb586d57276c4132
Date: Wed, 17 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765991033
