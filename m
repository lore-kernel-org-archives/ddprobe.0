Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D522DCF71
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768970034; cv=none; b=jBF6e2z9z/zaY7e2GCWcQLpAqedVgxA+Dbr0I+Nbm8tK9hFENi4/GO0iqybV0gpSkTqKdY5MpsR6AxggZuqAKRZeVSNho2efLJB1i31/QyWcUMzbbxkYwNW9OmnshoX8hXYnO6DiU2qt6MV8ZBtCmAP4vVBsU1q0FR/kbZATeuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768970034; c=relaxed/simple;
	bh=2h31TcH+Jqz55GJW+knzrvGcO+UTC36uSx+VwZgS64Y=;
	h=To:Subject:From:Message-Id:Date; b=DO82j5zxJfVyUwJPE04zo3eOAgRlAqB4v7gSRqVKPwFVEjcNtTeMsZlnL+ef4jm04bXetUIFxi5U0GsxBWJQVI/IiEfPdemEYlAaKiqOoLwAoI62kAMsLV5Ides2wjpU1ee/6Y4Gd66ORmiS7SY47KpAxFZ+GsinTfkZm4xvKM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoB9H5zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoB9H5zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA077C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768970033;
	bh=2h31TcH+Jqz55GJW+knzrvGcO+UTC36uSx+VwZgS64Y=;
	h=To:Subject:From:Date:From;
	b=KoB9H5zkjDDAVjlbmXaXK2BQOaUa2jN1ju+bkUWa8X5Be2y2fvbWP+/o4PR7O9kpd
	 6XDzHmlPbPgzaGKpSiQ+eF7UXvzZfuLEUjIEJ51quD0qhpYYDnFDo1VA+EfXsHC1HA
	 SXT+Ye0/8h49p5bQ9ua50DaPZOa5li3ESCFebgLxwiccVCieJ4cuJtcQIa0ag1wSic
	 Wa2oU8DnRPjPs7o7mQsDbzGNwgvuWwjl08SJq39sJ864vJdRU7crtW1Atrr0W0GT1n
	 cbVeoPqUueEBdWGZY5qg2fQ2NAmzGfCwaScLqJgyEYJn0tJiKlANgBlEIoM1DPFXcM
	 +qsuzLQuQPYaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94474D262B7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897003358.2372.8749354534432559704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe495f83df799561215a4895033336a591ab412a47cae886d2d0b42980ef8be
Date: Wed, 21 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768970033
