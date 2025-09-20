Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5FD3D6F
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758352194; cv=none; b=IPS9eOA3nlCNM0i2/eVFJoEJmllHcwHIOSUwxMU1sIiIwgzjNybQzFHkOAX++TM9D6tVMKWUVz0YDrk4QLxah2s04L/OPZimkTY3qMJv99KP1nFfu8C5sJ3VMpWMXltwE8DK8actudIDVz1MnN2Qb741UcjnaTYdtI+NVlTg5mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758352194; c=relaxed/simple;
	bh=0OuU4y8BlJK5KyTzqnZSrMcnxKqL68FCvh4KgMyY0A8=;
	h=To:Subject:From:Message-Id:Date; b=EgL8GRiuw1A0YO+obTN337JPUSJt1v7m+/T37YhjZ4O5+QHXfC3WxD3hljy5r7PUpbFCMjp2l1wzlm1hLNEET8p3L2r8P9FCMDs4tt++VW0KqcVUx+9T79tEZvJSTuEvGV4LRuGc6KOOnD17Aa/GQR+irrjDg3UNfh7AlCXSqGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p78B+JIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p78B+JIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8279C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758352193;
	bh=0OuU4y8BlJK5KyTzqnZSrMcnxKqL68FCvh4KgMyY0A8=;
	h=To:Subject:From:Date:From;
	b=p78B+JIs4WemxE1h9JKc5r4x5oFM7DVz1+I+QJ+iQr3aETOdva1w26BrmmIrYAQfN
	 AqXzVzr/K/fN8nV5txn3Y1BSNSX5I+z6TbFvi8Eq+ifROrFA0ioiLWc97sgY6ScR8J
	 rJ7pOjwTO8y1C5YjJYSQ63WANOgOXS+cbXdN4ily/WlKM/cZQ9v9QqynqRcTa+qB6r
	 0S4qAcIYp/jT0b0DvKZpcUsGe4G6//WN1agL5yzwTMZYeOg+2dGQHvQoGKR7K9Vldr
	 FWbTuK4O/W1QWnca4QykKfwd8UzbrVsd8oxEVtSUjmfO5CsNsp+tDr1EA0BWD/M9j1
	 PDU6k5tnuufjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DFECAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835219360.30857.13816726031808352479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c863c621f4b3b1b6f09cfec8c1d950caf99b710ad741d2d89eedaf3a0304a60c
Date: Sat, 20 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758352193
