Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AF0271A9A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777432054; cv=none; b=Jw/O/VV1CtoA6YuS/J+j5Ypxc8xtNQIqfPuWke5Pty79AfzSkStfBK8UipTkJQsFlae02uN16+TkarwBpt1lIgeAequDLMvS14CcekFrdiHE6y5K97zD4T+MZJp3qdqx40fGoZpejuOalPTSD1uoqk2tokomnm+JeEV4EWs+2EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777432054; c=relaxed/simple;
	bh=XsJbtB/7wU74ZG/OiQjq4/qYf5Sl0lNGj2n4ZD/TJqc=;
	h=To:Subject:From:Message-Id:Date; b=dNbVx910cs5K7pvh9cGrc4TE5XjOaZORpGPyxalOmUmg41KwDIYKC+TMI3kwHEKW78aJ+zH5T5DyhE7LZ5n8gH4091xwCygJznUdBQMJi4F+3R7H1sM26UIrB9cGSzBsrnUy/QJZal7ZT6YRNpt+C7zk7y1Z6CRF6m21MXufH0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD+Ic5F2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD+Ic5F2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9EAC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777432053;
	bh=XsJbtB/7wU74ZG/OiQjq4/qYf5Sl0lNGj2n4ZD/TJqc=;
	h=To:Subject:From:Date:From;
	b=GD+Ic5F2y8lsVzZuqcT4MtBvhhKAhh2ya6MoRbnotXvgsG1NJM/2SOsvo5dG2x2NL
	 cXC4v3V7IQLjeFb3paYmB6tslVucRR0bxljwUwzRH3z19vfwUVixd7JIKSlYcqOyfL
	 DxwiYmJprjRtTje34305IBa6I1s0QWNUWA7MI5mhBcpDEVa5aKzDiOCn4apufMPe7q
	 YQrk+bDNzkvW1wUE2c0Fe+iiH/A5WMpR1rRCQatMVGB7FsalTR/JiyE66IH1Ch6gGd
	 FpWHT4qqtDuodjq1mR2MWc1MoVjMHo94TcT7LVfIgF1siE0RY6Xz8bQxcLGjNKGqIu
	 yvaKKCAJQncqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CFBFF886F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743205368.7187.15772645263987398673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac66ee8a5d559a4fd6f8a9dbdbcbfaa18d0d364d8e92886a153e0b820144add
Date: Wed, 29 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777432053
