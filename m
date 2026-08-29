Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B782E06EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788039034; cv=none; b=lPLY70M2yYeZZhlLIiYnRhsIwDLX6lj4C9tG9lrj+rmkE9Hx8pVZyh65lSCtSCcyKMG2tVkHVrIVVye1rSR+UVVdOEgRm+K2pMHxUvYW5yuMuWh5tC9bmMMjpihCKZPuTE6e7RhVztKlnNJ8m02LatZc4stmkGmCjXQ/Zfc40Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788039034; c=relaxed/simple;
	bh=u+FEvBniazapixdFzqJQs+l0bjoyr1v1yHjWJkSlB9I=;
	h=To:Subject:From:Message-Id:Date; b=g3KE94TYsUoDyCs31SCDS/dJPYKIEP/Ijh6zh54sXfL59YUz2QKfD+1P0iNHKG9DDu7+ukeY3Ri52K63wCFQ5Y4aw3BtFTEu+szN86+ku0SI03NHmksXRNejRYQY+vb23CXMq/P6JFkMXnVmhpG4Rsy8Icp9WxW9omzPUZkWkaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+Npl5iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+Npl5iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4110C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788039033;
	bh=u+FEvBniazapixdFzqJQs+l0bjoyr1v1yHjWJkSlB9I=;
	h=To:Subject:From:Date:From;
	b=P+Npl5iuKMYMjMLGZ75+Jc5tPZrGVPtivZziTU7pwWg+xUc5rq7kgjQ35v2IQTQGn
	 FdkzF9CNSIMFIM6tZ0pXefUlEQpiGNn80qXYuZzUk0i4Cyh20JesD38AVMIqXxj2V0
	 4yvlSISsO4moImxYwwWhs0pjW/db/grDjLl27E0NbTngXZjz2MtQqtO+GdPDLsZySY
	 fv5SyH2DoBNIpV+NjoFv0IdAYPkoi4NW0wfK6cZokyOFYzGoHF8T/EYp1ZnoiKFTd5
	 RjZJpZBc+0gMvG01ZJ8n7PvDLeMoc0hccExOmlEJ0yKk2N+gXRzB5WEbI4s9aGYQat
	 4hFJ9jvlnCNTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD80CC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803903368.18918.13526223415808281369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182e66a7e3aa715bae23535bc0c95a1a28d7568afc3ab478be471e19bb532cd3
Date: Sat, 29 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788039033
