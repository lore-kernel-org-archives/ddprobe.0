Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0404A2D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733278554; cv=none; b=EXoxAe63ZeKpxAufl5ne2KVJJYHxCXxgc42/wr+KvCKFys8WRn1HFLm7KNZF/2eiFWA0h9x9NBvUZG+w3POIruOVNDD1I7Nxmi7k7NxJuQ1afzAeCpKTvo4nMpiskv2Zdcfu9mhZwTUqiVQe9KxU3tGiYBQ6b/W9abSJkITdSfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733278554; c=relaxed/simple;
	bh=hnQJeLG2k6rMqyrYDhCFrYfSj7xVDdVKmJdDz7/gl6o=;
	h=To:Subject:From:Message-Id:Date; b=n6ar5PbF3HZC4xqZzvOxLpXRDKn8DKed6C8aMMt5gsx+9ZKj/Sk2zHvMh1M+WlpYVJ6cUtMgZLtmb6EZif0c2nLXa1Pf14uN/vp1nQxOQZ2l7nEd4AWHzo1jcxJPALZY4/jzI+bDcsXJ8l/pNIrNhi2JSZ2McambnuIB+7FGgO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfGayC1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfGayC1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28C9C4CEDC
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733278553;
	bh=hnQJeLG2k6rMqyrYDhCFrYfSj7xVDdVKmJdDz7/gl6o=;
	h=To:Subject:From:Date:From;
	b=XfGayC1Ba+4jGNWJ5j5tY8k/sgg7mTL96xXeTCWnE9NOPLT2CWA9gHYFyYjFyVwGF
	 ge4Tu1Zjdspqh8AUjYuoEmc0N98C7JNContQK2QpZOOSPMjA3kRpLhlWTXhWa8GeSO
	 bvk5/v98eYxVqvrA4na2ymQx/bvBqeE4fmzgwH/tpji2CazCriQdNRjYO0x+Ib6MXk
	 iGdJnWYHPFyuJ54Ul0klBSTZ9z9Re7mxPDxTYIP2tLa4XSHDTMt6b/s0FZbViA4QdG
	 VEO0HiLAG/F2+Hx6mgXVBL7jJRAtLYPscDcgjN/rXeDHIonni4Re0oAaLIyk7BhCom
	 uYhDy0Bb6DY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0C8E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173327855360.6993.14745300896719531082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d52fd7e8101c10c2017dfbce1c1634828ed2c558dfb327991918465959bbed2
Date: Wed, 04 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733278553
