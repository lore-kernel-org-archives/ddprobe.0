Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250DA3D9026
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791327034; cv=none; b=Jv99pUemJFphR4PIj7MLSbrPr/ZOYOBlCZwt4gwfJhBvdosd23l5zIEugfBlSkH+FR2KONNm8qnWm/3LWIz09Q/I2yNWDpnf93/sIr7/G8OmAevw3wKjSVQVhJfUyNOg4pQdLKi+O1j5Wd5y3e1kXXHnJDiS0h1XwMStyR9Pfvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791327034; c=relaxed/simple;
	bh=Gf+Orq0MOdeA2XKVYu8lf1RekbMgPQdVuYlrvMbvN24=;
	h=To:Subject:From:Message-Id:Date; b=g4KDfmnYlbQiJo3Gj+yAd069IdGxSXDIwbpCwZkGPssghmQ59zhOUPQMr2/WreZ1c94lSnw4soEmKIGoQ/1KOBWP0+PvLU4wlteYuOkL7yDpqcHm/8Z9zivrHzcGc+kL+XGWQcYwY/SC376uHWqNYr0EUNRSzXEF+ez1vDwDvn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=er4TDOqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="er4TDOqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4521C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791327033;
	bh=Gf+Orq0MOdeA2XKVYu8lf1RekbMgPQdVuYlrvMbvN24=;
	h=To:Subject:From:Date:From;
	b=er4TDOqiPAVXTWLSaljW3OcrqEiVHigFJ/932D27bugLl9Wox3vcGer/16lL9PEVK
	 dhuV5gOSrYG5lP68jXbOQ8K2MvTwpYTpZV9FyysYmri/R1+zAJE3MPoN5Weczh/5R/
	 fCYOsocLYkhAZp/G1eZzfcpVh0XBb+53QSjlC/1m3tG6cLp5W8VF+DuTtMhNYaxQ26
	 QA/igsoR3SsuR6nJFhfUTGeqiUyueMB22rEvWH+qp3+6d+oA0TrwR/v8X5OOnCygEM
	 0Gsvyboom1XLFNFgwRyjcOxktxmcg2oyOnGJ7+pudLdSdr+FqieYqsQS98H3Pf+rkq
	 qNWDVSpQgo3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EAECA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132703368.24172.7310342428508031290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62dcb5b267017d5c635d7410a95cea7f07d085669716a5745da46cf07f68f5ee
Date: Tue, 06 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791327033
