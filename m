Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F023A83BF
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787957434; cv=none; b=g7jOvybXDe7FtZnSoFT0Dg9kCwPQnMUmwOhVhZeUxGDDWodKFVdPtqwZTOGVfVEcIX0lOOrVhx0TmwiOIG0S1Ns5UsHsuqZsC4YXg7fmPW6idtIUEwKYNe6lnjwxlBHhwxAxQQ9vDdTlgbfuayNx5zayy47mWoi0ExyYzkzAMRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787957434; c=relaxed/simple;
	bh=mBL61xsyC41bI960OiLD3hzIpwdNyKH5nACM6FN1I5o=;
	h=To:Subject:From:Message-Id:Date; b=Ug9g14oZgb8WdLGubzNp82dVw6Up5xXmgflkEJLXZJkDyV5u48LuACcUpDhYduODJXNnhuxkZXGWnFq+XATiTuFdO+3krCpW3rWVHKYdaN22JyPlqTq39ng9lyV3YcZQb2zVQ/qQKzp5uR1kSG8yN1KR4J37eau/3XtlOsopMHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OC6dcqYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OC6dcqYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7118C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787957433;
	bh=mBL61xsyC41bI960OiLD3hzIpwdNyKH5nACM6FN1I5o=;
	h=To:Subject:From:Date:From;
	b=OC6dcqYvhcq8SRs+1wKaSiScUXJtiY/D6Rcz2VbKCahTQqzRjKOGNBDB++4hbEN7n
	 agoBa1W3QO5ovdHQPKWLf8xJFWPheDUS/XavCOW+Teohm+qnXvfiJ9280dewqelsuo
	 441bgPJvpf1rddOghtOx2qvCwYo+ANoycYM5/e0rxPaFSQtDVeIbiajfnXYQcxdKAN
	 sGsbL58kd2FtRPUj8U0UA4BcHfbYV+vcCyWutYNuEFkazqQtma8vUzdHQcVD5pXpbK
	 2kLrS6dMklwLDUlPoEQmrVeefGfZKB4aNo/2/EfknIORjLdnRpWedB/Ny58daIrYhw
	 xLjT3PEa/W77g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B025EC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795743368.20696.17276694971479990543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a415253a9f66ef6330c93ac829ad3e2e35312b53dbb15dc0e57b6638d893a0
Date: Fri, 28 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787957433
