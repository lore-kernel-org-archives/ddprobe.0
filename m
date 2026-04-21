Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB603845AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776775654; cv=none; b=fmB32Fu58vsTWJ98g90hi9hS5VErXuM47NKOIhr2DnGMXUh5ecLqBkVXp64lRLr2iIEFXyoxkDyKgz38J5vTk1ISvJ/Lj7DM+Z2JGGg3JK0C9i5Du7o9R8v4MSiiz01CLHnXfW3yMjvY/AGuXIZaHKm8/joC7Vm5iYyOjGZuOok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776775654; c=relaxed/simple;
	bh=MODlxW4bve26tKf72+eIXpuQ356I5YME68McP+HvUW4=;
	h=To:Subject:From:Message-Id:Date; b=G5dZCtQIKXQUi77riciIz1e133eycPkh+iOwUQsnWAjo6DqzG7S+/QOdhs8SMExY5AiM67MEvwKkmDpFRIBD+jdaAPg2elQHaudhVssBhB67QG9deQKQVLfexO0laHPGr4aL17Bn6/qR7A7CHsH8fRysJkVy3fwETB6bI2D3NKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGlG2Ikv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGlG2Ikv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC40C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776775653;
	bh=MODlxW4bve26tKf72+eIXpuQ356I5YME68McP+HvUW4=;
	h=To:Subject:From:Date:From;
	b=LGlG2Ikv1QJ/zv6E9DzYZlOLA9W27lcyDWflJp/XFwOEwXF2hFe4qZC2AukaZirBF
	 EHqu5QsAZbm+T++bRqzeeqsU0D5tklCquG/LSrbTyTVORtkdvjnCQbiGDDNAOvdMHm
	 58PKI7Fo82CAjKt9M/xQoT6h/qwhCuYYYFnzEpX4EfpqhFc+FraEArlcAThsT7IbdG
	 wp+ZMcAhs8OPeIqu1gCN8P10FnfOl+qXyHTTbqeAyA19ECNOdb96biK8QIjDV93Img
	 H33jjyxMUrwQHBbq7ffDcVHqUcYphLx0NNHrCcOS6L5zqpmYtBmB5eCn2wNTTwJYgU
	 lklxiN7C2cZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D29F8FA70
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677565368.16740.1200080795274550919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a337c13e82c325f48f1be19b2d2d6f38bfd655b20d760cd094ef34215992dd
Date: Tue, 21 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776775653
