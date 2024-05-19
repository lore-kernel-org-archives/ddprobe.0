Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C31F4F207
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716140543; cv=none; b=kZY23nyJBXpN6DlKsE6hNrcF6UeGrbzWH5WEvaRt7zv5D5uMNs3+vKr+r5YGJdJ5IUZnsdddM0Y4gyDOCC6jZIGNPKVNK4aRnWj2RhRLRKLJ1kSh52jcad59uvwj3v+fdc5aHrEgKGrrUNV1+tRKgo/vkbP8lDSDG++Cnr3w6/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716140543; c=relaxed/simple;
	bh=PthBWOaruoBwXUkif6jeu7+bDW1M1DMIE5KkApqHB6U=;
	h=To:Subject:From:Message-Id:Date; b=a0ShXTXp2ZEfxlH6zxp9plxFpB5dA5t2heS0Z0DHEBp/oEMLM5Sxu6dAUxb52DL64Eee8Z6yaaSbfBqE7bWJvscW1jvZVIuzoQ1aC/BSi75dBcfRLCIVAPkn38Ae6P9nsxSphHPMapTekdSIlVh6QzwsxuRM82y9IUr28r1XY38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4bjs/Wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4bjs/Wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BC6C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716140542;
	bh=PthBWOaruoBwXUkif6jeu7+bDW1M1DMIE5KkApqHB6U=;
	h=To:Subject:From:Date:From;
	b=V4bjs/WdYM3ODu9PZ47QBChwpOemroGRuWagoWRN+ehR3LeLFr1mv/4PGkTUycwyK
	 7aaTsuNkJzH2o2VcLR87CNw9Y6BKNg/jbBnmFCrrU4PAQLVTKzpr38i+Xxi6u9vMYT
	 CQNTJXULqmlsmc2XpuRlTu25f8iiaKafjT4xCSgifiOgDF31eOK4bxzNtDfWmQBHY2
	 NfC9y/HZuKkuJfqRLM227jTwQ9APuLIcM1Lrj8/3WuIBbpu5Tu+gCRoWtsRNVjLykq
	 Yk35O1MvoMtMkBT7Nf1y4tSFx0rFfECoJJHiJ+JX+bvyu1lcJBsqXjr5bxndZkxGyY
	 PQDooKfWeduFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C335AC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614054277.19378.7699357779666487543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff9f7d3f915f8036c3a57cba72836cfa2c8e625783681f93459760941163247
Date: Sun, 19 May 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716140542
