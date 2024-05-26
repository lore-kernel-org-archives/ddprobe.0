Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F978F4E
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716717863; cv=none; b=II9egKZEtQ0O6iO8xsuifGjWS1KS3jWqZuMAICg5UvlUb2yfud84P1OPNJfVYn0cqF2FoprzFVVWT//UjB1R8jeovREdUglWaQ1VH+KPY/prSsuaLWPz3ZVsqbRXhXlLvzVnsdk/zI5tD1sXIsnn/pnVI5eIOWNzu4QtH3K8p4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716717863; c=relaxed/simple;
	bh=nwoKf5526HtEuYvqOw8wfxPDUID47lwZBExbIMcvMWg=;
	h=To:Subject:From:Message-Id:Date; b=pSFuK2iqEK8g2PsAu9GbtqM0bgpFcyS5dueKfGz3O0JnsfWAbYhsaSGJxYc1Wm9ZWA0QTpFUe41kxdg+MExn1VzrFHHPEk+6kPjwviP5v3ld9Ctin4Krt7Awvs6putrlO1DYBBYo3B3brxb01LCSHEgpiMottoQBbsZKeFj93Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGSnzz6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGSnzz6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04462C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716717863;
	bh=nwoKf5526HtEuYvqOw8wfxPDUID47lwZBExbIMcvMWg=;
	h=To:Subject:From:Date:From;
	b=MGSnzz6nYWfTrz8/qhiAxMyGiokqqucg8uahDyAOWItOBgakox10wF+ABGl71qdFB
	 b9ApxAbwaSZe8AQPtleMSrNDdoHd7I8eFfPyWgELYvOAu2h/r1U6NVcZ3bFdQOoSJx
	 Rtf/Zb4U2IQKv8vg4yWvp1xE3Q+pBOvmovRakXccmqGcE2d7JfD36eVUmsh/CRQq48
	 h0yHWsQEa7CUe8hxQY6criY2YS0GliR0M8s/hEAQN0mcyr5Oy2973R7cI7+SS4sv4T
	 8tiRbfFyYPrG/2azw4xSlsYDKQgrcawXApWr4orgRJSaN4VwHiACVLC5ev0X7ZRodg
	 tXOkiF3irESfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D28A4C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671786281.22166.2801846817089165555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2c90675ffa3e1545d8d0efc636819cca8efafb03160c009998430720347b80
Date: Sun, 26 May 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716717862
