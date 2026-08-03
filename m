Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FD433EB1A
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785799234; cv=none; b=r6oyHdCtmcW8tPy5URTOit+8RuItpW7VbpFcPxOiv5WJAw4hAHjb+qO97gHZNsNkkkyyJc6BSzyqdJcrm48csiZBoWvMRVVYqDnd/jgvG5Clhjr/02ldIYlP4ukVxX3UAH5ej4msID2e7TSWIs76k5yNwKWlYRAHRBIEZ3z+i1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785799234; c=relaxed/simple;
	bh=ciUro1p6zAbiY5ihsgI1MwZ6yIrJ7SqQgVJf6vmu9Io=;
	h=To:Subject:From:Message-Id:Date; b=JlGhjhjWM/kXw446AY2w2xZrtqP9BnxlDi6cCGIpRT3ZG+lx2NkHbzNj8DBM9TkT+89UuWMlq6S7G2xMnfyQ464u59P5KQN2Wqb7ysOFDWkF2B3CljSHUJiCTlhvbgV1/tvYttC4dSBc3dv7f9aYthNmxMA9UxC858XhCk3HAVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkGkzrPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkGkzrPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4581C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785799233;
	bh=ciUro1p6zAbiY5ihsgI1MwZ6yIrJ7SqQgVJf6vmu9Io=;
	h=To:Subject:From:Date:From;
	b=NkGkzrPFHk89zm1f56GNoTo3yssHer6fm0X8WrLRW67vPGZ7aTnsZknfC/EBJMocc
	 ZFr3K2rp7w8oj1NFHCWMZMaVpPRwENy1B5061nHR1KDnMeiLTsg0ig5ACxGtDMsUd0
	 PSdLnvN9JzqzqT81pAGW6sRY7au06VI++SvjS6GxS9lMabWCKzWYSJ1bzoP0gR4OZ8
	 0O6LsOjnKyi6bROsz+/FzRWCOFFtJ1eDY4uLpQmPi8Lv7lLtK4eYffAtl9QZzbzqV1
	 lowRPA/r4xXK+yuhTcD/AJk96oDYePTfLKNY1vmvwnuqLsoLU2hYpRw3hWvb1JX0Ot
	 HY0548bzVLEAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA24C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579923368.3564.16218408011991670318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2831a6c362b6fe32621b98117657b862e9f341f9ee8e1b7c347f62e5c111595
Date: Mon, 03 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785799233
