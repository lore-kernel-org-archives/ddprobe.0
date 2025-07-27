Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332BB80BEC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753581594; cv=none; b=hb489qWYGWDclRJsE501sNBD3r6V14Ge+rba9K9C2aZJVtg/lYNg2D61nzQhFh0MIP+KXMTSlkTTYluw2I8Qy7ABAwVj50vrex46wONQJ/iDvgpSYbZs8Xx1ZVO+WlkmvCiWutkx8k3ySum2SFat4WwXzogbU8knrQn64krWzLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753581594; c=relaxed/simple;
	bh=td4ffYp4JNNYO+mQsdW2LCpGP4YsU1QVc7aCt3Qjbzg=;
	h=To:Subject:From:Message-Id:Date; b=NMLoyr2DB4J3uqPom35l8ZrlySOzLoPqCL6CP1NUhzSBhxYDWnWuZ6mS9VFzmZWVKh1rx7ntOPqOfYOTodnJ+vJXJ2QyYdS2CNndHHz9GmMniTk9Hs9sIjnSU5u5g6SnqjwjmR/nvfKEbP+XspsnSUuiGD/yQPzQJqC2yq8GrNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nneef9C9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nneef9C9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CFC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753581593;
	bh=td4ffYp4JNNYO+mQsdW2LCpGP4YsU1QVc7aCt3Qjbzg=;
	h=To:Subject:From:Date:From;
	b=nneef9C9MdUg3JUFRRXv7ytich5uNqfrrGu1c9s1I/TZisn2GH4YAFvgOIK23pyZt
	 a+kfcEkYHmEhDUOIchFeuCuRT1icAFoEHzWBK34CZNwkwRcfb1jMEjV7RDgpAFjYhs
	 40vlv4VNcpCbaX+SlnMHeUq549l5jVozseRvF2bgHqiDTtbTXNb5zswmIPwoJSmp36
	 XU4ju8awlXLp90HXXAs8G6WDg7riPKphyJUi8zr697rRvCI3iT2c2P8+GCbMA39Syv
	 XUgJStbTG9qxGHx4jIxj5iSVNfSC9MY+fzAmZ9CZdRaKtkqFpHpAP0u+gVH8ztyYaJ
	 h+xefmaCgHDYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA6C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358159357.24630.9557283002108314916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b945c1e1d27bfd099922e55f6f0253f4e6e90d3a35e01dbad724151714d6bd67
Date: Sun, 27 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753581593
