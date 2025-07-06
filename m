Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F98582D98
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751774994; cv=none; b=dMi+klUS9Wo+nGB6vlzpq0n0Dv4zZil4sdS5uCYFuDYD8APpfEWc/XmodoBNphp46nJnrMVdKiRepIcSS4J7LRkyxnAF02+bX4xoDAMWQIg4ltsAYbZeXkZ5MljFe9QNRFuDCbGBR6fgTJbZP1xnO72LkkPPXDmIXWgk/3nEdF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751774994; c=relaxed/simple;
	bh=slEqxz5mFyFnHIhbHmx1Uic70e9YYRAN5YazPbDC3Lo=;
	h=To:Subject:From:Message-Id:Date; b=c7arRS+UOaviLqzJ8AckOI+NYWpI1IMWeRNCxQRdEcMhqbObA3cR1Um5RWOYo7E/qRw20CYoC8BKYbu1fP5+F8ws4o48BODv+r5zg16W8EAuEQHQJMi+/m8fKjMtl6TX/rlruTAgkxKsRzzi8Dh0eu84eErBdjLl87rmraN6tbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYf0y1A4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYf0y1A4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB0DC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751774993;
	bh=slEqxz5mFyFnHIhbHmx1Uic70e9YYRAN5YazPbDC3Lo=;
	h=To:Subject:From:Date:From;
	b=JYf0y1A4Dtz2vwwNIzdXhu3xyHwLAZ9Rt8J8O8OUxJvJ22H/ByYrCFtYx9NtXD5mS
	 5mxPKkIMwxC2FQlXYPa2EllIXWvNG1KH41l4IsJXhsxh0SUdwLEnWsu9kJm5hqyuBj
	 295Iyf7mh6mY1/p/zHMtNvQKukhkoHM3Efxcakr0rIh/QKMDSELk/AxDBSpCEwLlNn
	 eqhmMpGmSKTbaWAnS2o4atISrb69n6ahYV8xNLuL9KP7IiFwc2LLFvGxwFlxi1/bqX
	 HgXCPiNU8QH92Gr8bgNgM4bPvtdELhFoW8IMWT9z9tuLebimZBFLQBicEIk7uPZTI2
	 lxfBg7B+BnP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E74DC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177499357.5131.1679071600013348870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34511a2421932bcda8e04b53f4c35fb066a0cb1baa2b4cfcc362ece083ed2cf8
Date: Sun, 06 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751774993
