Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2B919D8A2
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718399303; cv=none; b=qYlXQwRN4/8pnfwVGth0kF62+DCmzus3F6h4MXKLcsp7RRsCmF1Q0nwKtmQqaivWk/5fYKmrQQfJ4iLW5YjyLZjXXheplwiwVpM6XrXDEdO4fHos0N1v4SngcA4T/6thXwi7iGTHkj/oakIFts56/8by9TNxViIPvgxhK9SmFCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718399303; c=relaxed/simple;
	bh=3kzcz7JRre9REnW097jbniULUNWjSsagdV8HAR1xh5g=;
	h=To:Subject:From:Message-Id:Date; b=V8KE6y87hXvAhffQmXSeN6znCSL1oKrGV171mAOIEpIH6wFuYFPSNKheEN58BT7xo+zCDVbR8fl7821nCqEE/9XFkdo8r1rDhTYZ9RT7tMTNZ8RKHzgQ/yAzatuzpNgZxoJwNkO504EnLktNaWwl/XLZsxbvU60fqLtPArzEd6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dK7lbR7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dK7lbR7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1262C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718399302;
	bh=3kzcz7JRre9REnW097jbniULUNWjSsagdV8HAR1xh5g=;
	h=To:Subject:From:Date:From;
	b=dK7lbR7Uugue5VC1wS4i04EHjp0nW4E9/Xra+33KEz7p/RDw3rTgaphZxTdTV+O/F
	 kxnqwERLXDZTj5+k4Xfb/s3nFryA0iQ+PNlnxPGzZwywEz/mejLmfL/lZ/NxXSStZ6
	 RKsIPcW8tmTt1zCA/bC2yYs5JkxGrAaFi+nBulOKn9Z6CakqEQWRZ1fa4lr47ycXh/
	 dCLOzeXSh/pTkheBkOIBkRkBQML4QN1ZyfbZQLI985BH4G6CA6IAUPVr20Vm13ODPw
	 24zjVQ+oj5RD0RFp/PG4HPZ9Ey6TVC5cZks8nXpapoO0tNUxWyIlRbn3TfqDYyu19l
	 s74cpv5UrWtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5C8C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839930282.9928.7441385753306610806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d75fdcfc7bc4de1a58026f202afd84fc706fdb3e141a2c7eecc5f1954db55f5
Date: Fri, 14 Jun 2024 21:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718399302
