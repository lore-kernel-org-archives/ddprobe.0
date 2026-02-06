Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB9C2E62C3
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770353634; cv=none; b=HbeQ+PbS/9+6BuLa3uPMtkeUh6y5+hVwJJTCeZWkWTkArmjyszktKJ3mgpsg7y5E+EYXiaC6YPO++AnGU4A/H6d4sTrLALGHy1SdzPwcKj5UnR+drW/b0+p0JRmDwre85tIYUA1PmvGwsp7p1cNW/ox/WO+sOiCa/M2MCFdLBXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770353634; c=relaxed/simple;
	bh=25J8WKzJoI5zlr90rDXxiIG8HV91LeTM69uc0q8Jn00=;
	h=To:Subject:From:Message-Id:Date; b=tLkZc/TpKPIqUUVjiqsBR1SXrNp55dRsyw3z3TAD3LSbUo9YYTYSiYB24UGn3y+MsSj4tDIcgpMjhnm2r17nc9TobmCj9UuabNp59zKr1hm6VlXpgS3kktiE2sQ+mBcWc0hVd96mKKiUgnjFnXsUjNc99k+iZsLhSeZHicxEqZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMxBQwHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMxBQwHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB5C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770353633;
	bh=25J8WKzJoI5zlr90rDXxiIG8HV91LeTM69uc0q8Jn00=;
	h=To:Subject:From:Date:From;
	b=jMxBQwHWm89m8b3hsYxbsdwdsDu13FhIUdX/S8BZ5zSyT6V8CxGeaBZxljT8mqAdN
	 5Z3HyJkaQWqdyY4tLl2VdBEty7hLKSvC+WhTzpvyHy6if3f4BgQKGiY2DyUCVXACfT
	 Zv8pjnFWolSvyF+vDytyVF7/pkyIwKAGVgDPnQ4p35elcrOJQd0g+TJ/f4roeht/06
	 CVyK4J806s7AUkk+NZyOtYsV+r0cY4+2/wOh9yEHkMOikTUzYbd/7ZeG2Zrv8Y5Ann
	 5PxbQJStA2bhU30ovNJQcX0loab4juGJzJJ+IRFgU102ebs88Wf9t71UalTdbp/pwf
	 rOg2HIeScqc2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B34EA795C
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035363358.28706.4577588080623931841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0777b95fa75cccae986b1b5766d1b4663ec95b326dd68a2ecb85283c805fab
Date: Fri, 06 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770353633
