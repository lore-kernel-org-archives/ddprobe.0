Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D04288D0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774851294; cv=none; b=c/89LCTBTjRYyjK9+Vc+awZJdunfWcyF5AKz7DG6h1ttrDwP90W2Q/SuzCtG137OWxrUXMXo4FfXTDF27qM2HBDoijY0G+zR0pAHthuSUr5E6U/8M9tvE2w+lcje6vujv3cun2hydELvnEZjIF7K8Zrbd83U9lGODvcRFWYwvxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774851294; c=relaxed/simple;
	bh=UJS8XLS7n333aBt+W9OK+RggG9Tsc3dBz4Z75UR2KsM=;
	h=To:Subject:From:Message-Id:Date; b=mcYjvTLHvFvEMt8SvU0Jmpkfk/LLQ3VCqBYAzTz4xqry4M58DkLw41WF8yBBk5HIOlomVLuTZtzL3yoznf4ZkV6E4OsUtyBwHB14iDyrD7rn6hn2lRUcHoYWOGcS3qcgeUAogIkTKZki620uZRkKvkvUA1wNgvgSaN0EmtjRXzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxJNWzAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxJNWzAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA35DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774851293;
	bh=UJS8XLS7n333aBt+W9OK+RggG9Tsc3dBz4Z75UR2KsM=;
	h=To:Subject:From:Date:From;
	b=pxJNWzAwxhm/jsIoxo/pZhmoZcGrCs+6THGcqKso4w47+stf3Vh1nGC+T4DB0xJzC
	 tk3E0MQ/B4xLOrQq8lZldR0hmI1smv/uAEjhEebjeOq7rkhaI54EO7sfmAYW03pxts
	 HSeuskWV8qEEgymVPR9vow2+wPTf6PMD1zv6dxx7EAdLKX9EJK5AuLRkFKCi3sX1ov
	 Od9Lzqm7UeA06OOJ311civoG4N7cyin7bXdXBWG+cUxt8+N8L96wTjEu/Nh8guGWRi
	 r0kG8GQMst+LaktgRH3g1K4YqMudExh7gZlKZh2w8u0/EJL9KuyVId10yApgfO0j5/
	 P2utJgomJdahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9703BFF494D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485129358.31617.14321939191255861568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2953efc6e9db782eb64602548fa45e0c7d93edabcba39b40d211dda205744447
Date: Mon, 30 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774851293
