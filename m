Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1080E2FF665
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762340394; cv=none; b=Os/zZihFMgWB8TNEeB1EUNJLnBucDzo83WCbwkvTS3qmVNII99tA7/h0SoHRUBdBiQblJpfuYgzyqvAcXr3u68xwRrayqDgZERd1jSaitPPBE6Xs0hpILoRu1YDrfykDBUE8RhIgrCBfgzJlSevbA4mLCK6t4tHWevWWFvDXkLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762340394; c=relaxed/simple;
	bh=LRzvne9MYJURYIbQoZzfUEWLFQPxXbsxXlVb7cwEM/Y=;
	h=To:Subject:From:Message-Id:Date; b=d1sCKzdSHBwxBUYUZy0aUtvIXZayu89zUvJzQS7qWDU/htjOy/JFWDtrpEIuJB99d4WW+zJOYyathYGifiZQ3tPcDXmpVG9G0OXCV0xApcgvpTA2u2K1vduZkUyFuLOjiJqAJvvgPDP/ni+bg4Oemf58FpySFFgO/EniibB3v7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1myyqLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1myyqLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE1DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762340393;
	bh=LRzvne9MYJURYIbQoZzfUEWLFQPxXbsxXlVb7cwEM/Y=;
	h=To:Subject:From:Date:From;
	b=i1myyqLFCwyHs+wcfkpfiSKIWFsu9KhZK2eLorh35+MHvPKtTkf+9ZhCPtmFS5xS2
	 PiF2qRPI1ZQKcgrTaQ3lE9g9B0JMEQaz8rcA99xx6XO4Liui2fXl0wtrjpRDSyg4SF
	 8mKcoNK6iOnq3N7mQ8Qm4FxzhdKxCrecUFlp4faKXFKQiq3B/EjAZIxomy+gZZmYka
	 XxbCo8xFjWhw1trMfpyA3MnVhumy3QOqUv8ngPzJNqw+T2Mh877kIJUevK1z/3ZZk9
	 sjxKPD0FvAdHB3Wm7AhlP9HLbR/7XDobfGkFbXNkK9n8dwe+pOZvKwzoq28T1rZmli
	 QBUUn2ITOFROA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F899CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234039357.13354.11337747970958199530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8431cc69457ef1bd3ef68cb73decda354b80cdcac50bb5893cc6de1415582aca
Date: Wed, 05 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762340393
