Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105F11E230E
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751907595; cv=none; b=lp5Nj48bH3IfzdNbQRwRU2FEe0gr7hEiFworZOZXqB0fXgu2ASglsizOyL39Cg/nWnXjH2I/89UuQeqc89aQDT+vJAkjSClXuDgDcnD104Ee4/YDRMGB5zwcMjAmVH12/qLTuRMEAeFZkpvFYnTY97QByfqV1k1tldNVAk9SoNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751907595; c=relaxed/simple;
	bh=aQT0dpeNgPKnW12JrvZdFdaWxfKyiytR7+igzJgz2p4=;
	h=To:Subject:From:Message-Id:Date; b=J3xbgkgnZZmBKnxXajFHc3weM5VH7eVEvRsc8axXnB5gZL90XA+n5MHxB/9tn+r/WfkLMikku01AQrE2JSduRjFMW9VFCj83jeRlTGhZzUKAH9owj2M2W5ViHgcUimj5pCtNUY+n0IjVEIM9a5G9BJ9DKO+lGZZ16WT05oHo16k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwgeJ7ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwgeJ7ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E42BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751907593;
	bh=aQT0dpeNgPKnW12JrvZdFdaWxfKyiytR7+igzJgz2p4=;
	h=To:Subject:From:Date:From;
	b=qwgeJ7ezDL7LYB+/8NZtHWEvDwY5/zbGmS2FsDfHQTj6O0Z49nnhPJHfse9DW2bLr
	 xtmEl6LRjlu+IzWdj84lAQFvDxWRf7bu16hSdaukVtGh9DuJCvEWT7884eUesxp2H9
	 IMbNXkwO0uIjqRSJP72Fo4pcp5cqC7uM2JcuaiP7Lkzu26PZVei+3oW8F6eJzjRtHz
	 4cO7A/ly37UZ8S5uotrANWm4EYPZO6llLZY29jhZdyIMBsTeUEduEzBOtvcgt4GUGy
	 332I5lXC0nQtgHmTMayLgfg3Enb4rnayP7xutt+B+keVh/3AKzBQ8OYZnbF57xfKGL
	 tsR37rQTiJPgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F936C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190759357.28834.14360754372216916711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65741532c872001ce61a738effea9eb208376b4fc5348bc8828cd7890a6b792d
Date: Mon, 07 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751907593
