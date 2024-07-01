Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F3539FD0
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719834323; cv=none; b=hZZ0PRlMp8v3nEzDG2NxemXcBuR80qQxceeHwpQt15WzEiXn21Qzm2hJd4T2pfwxgQva3pDntxcoxRzDEP6AMhttQiHTSc8nKjJnUGcns0R7XNUALY6uS2jhgalPJL0rj/MSrqQr+YCzAAnyQZHSMl+B0fhTArIEjDpaJtyyKek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719834323; c=relaxed/simple;
	bh=1hLYXUxK5emOQ6Iz3R0yMsSZFOa3XGzFiM9d0ONaO3E=;
	h=To:Subject:From:Message-Id:Date; b=uTz0+2oD+sINbbkrHB9UOHkEoVI7GwbBqH8BqMP5TR+KnT5b70ImDM5/UCSZHOzLAkCqp8uyFheqcj/H4WgYlJgMwE8dz8TaYjKfrQHwecS1RbQEe2+S5CJxK/R7nH4Ifnk0zawpn1UVTwv7VSSi8+jgueIAoSu7aoOY90NBBec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVVcQJMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVVcQJMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8942C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719834322;
	bh=1hLYXUxK5emOQ6Iz3R0yMsSZFOa3XGzFiM9d0ONaO3E=;
	h=To:Subject:From:Date:From;
	b=nVVcQJMQxcwL9TXfl8L8s5oznb3PoMF1jt61ogoRs8mLZudFjGrCklI1AJNqHLnIy
	 qwzENPYgkXDP3r5OttGkgF2zdoV71Cz/dLqEACmh82URrVPjv3HF4C/3A1shprj4Ss
	 kgGuXQlVKbanVd6RfSS1RbGwPq7C9bqvHtOOOjHBTKQMB1T8DqDlPR/0b3oI9UiPlv
	 ZLx5l8ty+PDyvYWNxMhYYUZqPUiqRwdApVmi64JptBJ4o/ATooxT377UHKngMA7150
	 v94pXVfFSpJ1pUAYqiInmitoqK8T1BuSONjVX+LQC88AaAtWaAQW5PGumblw7w7s9i
	 bcuLhYftrfCCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1588C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983432278.7109.10481777946945787253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2ceeba6ca0ca21026e9ba662ffdc38de89542778f0a20839fe668a93fe156d
Date: Mon, 01 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719834322
