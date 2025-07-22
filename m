Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BDE1ACED9
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753151994; cv=none; b=VOICZF+aRREnAQoAS1Ii6eqMMt1f6A2EnLhOgt91YFjNwoQpC97Hjq4GDXoJZRmMZBS2rYuCopttbXzcJx28zW3PI9z+O5TcoD7MPoAntrUDNTv9duB5BIUMHg6pSrr9KDpK8UjM3XnPaUf31a1ECN0q4a+eHfq79rsZape2TiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753151994; c=relaxed/simple;
	bh=xKQ7nuLewZoX4QIq3M6gWeVxeEoChKz0HH0BwqqE3WM=;
	h=To:Subject:From:Message-Id:Date; b=qvu7txeITzYplOlW1YzxiCKYJpCXqEPoEeqqS22VjeoMjqIoPpkQeXiXcwM3PsfvdF7T+sbYZjOmFgF0cRXY3AvLdg2TvXqpIlxGWlmdUynupE/5Kcp4ZnVrXlEhV+3HTZGwb6CyMLcB0JCOxg/1hEPgFKkvzcEWBAKmojAFc3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzKlbgU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzKlbgU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9F0C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753151993;
	bh=xKQ7nuLewZoX4QIq3M6gWeVxeEoChKz0HH0BwqqE3WM=;
	h=To:Subject:From:Date:From;
	b=rzKlbgU9VdAlkFovDCGtS+W/DzZXmkBnrzvywMY1KCAOCbD2kAuJeFzzHqWSZSz6Z
	 VvL51Jinn4Irsmu4ZnD9z/mgLxW+O/9h05Euwjo45E3Q2gJ2RuldHQG4ds5DkDeNck
	 pR2poq6Iwg3RegsuTmKtYBPmjNZA1sxbFGuWbAMK4/5mAh72n40AqKo4JTrTkZY/rs
	 XXjQsWGun2HAvqVThJxGJ+35ORn9vKzSVho5fc43l1KavTXMJrXvIEfaTL2nPLB37F
	 9M2ZzihdDODYmlUeMOeX5Ls8PIfVMUY+sogNfoppO68S+MatZk8xqAjyBHNjGj6P1Z
	 bONBstwExqMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F059C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315199357.27565.12777221604170482915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ff3ce5b56421e468309cf0c5d62bb6525cf0988311d227dbe580fb9e776ea0
Date: Tue, 22 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753151993
