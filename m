Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3811D2E11CB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750004994; cv=none; b=qDMB9aaPep/+divD1AWI2zK+q5eybFAqpISpTKmw8Hzak7xz+cJFg51xwoeak+sjpapwqBs68m6o86lcT0IXkIdE05SqoD9Q2gSFBvkoI7vYJRtUGaCCd4YCCDGcuQj4VhnRhYQMka7zF0NmuZaZM7lQE0iPog0IChB8QjrQUh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750004994; c=relaxed/simple;
	bh=DzqqzpjP6ePFxQaCg2wAYNCxNJMp9so634iuzDfYyrU=;
	h=To:Subject:From:Message-Id:Date; b=RRlvNKfzHQPTK1/HcMZ0gd90OtEOSI4cX3U4qMgBhJwYjnKteBaj4zeHp63gQgWEoCH9OjDfVYOQ4U5l5vDIPgYq8dyYQkZucV10R0dSxeW7FRT51ccE8OPa3+qNON/Qt6uuCmwtkgs7nQLBEO1DuYJgaZJgbPp7LazNc0ABAmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ysfs4vOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ysfs4vOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A6EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750004993;
	bh=DzqqzpjP6ePFxQaCg2wAYNCxNJMp9so634iuzDfYyrU=;
	h=To:Subject:From:Date:From;
	b=Ysfs4vOAo8AkSbPY13bvSNurZE0kawdBWPUUAKLxk/RO6rlTlYrkXLkyDaNm1bjT7
	 uu8/lAIxHsb8/J+X+TIjNrBGqPF7axf6/jR6BhyKSZ+wl04OD29ouhgu4cYFuWWqZ0
	 z3Euv0WACrt8GTZA4dEOufkvrheb28+zB8uFIuYL2xyDaVYRJ534noVXf8WcO9M6SC
	 XED2xKyoIGm3Apf3T9rENzGq+Tj/RZITqm74pyJeR0Y2jqbaog0RkvvwSjYC4kt51s
	 0NofHQqy4eRf6Xt+c4XIYzBQs3LCcaCg1WyNDRoWDwObtvZliqODKH0RlD3HOo4pvz
	 CBfz4hgPzi8vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195DC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000499357.17077.10422960739580783512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7001644f8d5fd078f18ec6e4153077d660d39594d58e0f34df5b489766cafda
Date: Sun, 15 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750004993
