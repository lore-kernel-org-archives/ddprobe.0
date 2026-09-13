Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488302D8370
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789269034; cv=none; b=YWoD3hlVYNtS1BnpUeZP0UuwsZuDikYM221srE56gKW2mpTxckdxuyu4NDYp20dHqulO6eW+MYaPcqpGM4AvE+9sKC9WWBLTewAycQT3wfx8Sj0dKUw1mrCAhh2bs/7mmsKC9V9FPUaJBWh6dxs084/BMsjpxzTh/ROoI3TLVlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789269034; c=relaxed/simple;
	bh=MssrhUrPixcmh5afxKWVNB+FmsgJMtRX771PcXlSefA=;
	h=To:Subject:From:Message-Id:Date; b=WBlh3K0zaMExbtIfLzj2ph8E8wXlKH1kT8t7rw5qc0Yx1JsUC5vMkA5BvYPwGHcQTnAUrTDbjXG09bFZO8Od7fcjlOSDUG3LiaSK8g/6CisfcslAWUkObpm4Rqkmakbr6Xgg9DuWDQ0KvyhtEaGXMp3o7CtgDpKsyIFg9KJALzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYW6h+2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYW6h+2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D870EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789269033;
	bh=MssrhUrPixcmh5afxKWVNB+FmsgJMtRX771PcXlSefA=;
	h=To:Subject:From:Date:From;
	b=uYW6h+2H5+3F6vbhe46MIbdz2gB9Eb9KXA/EsxjqRiRyjUlgtCE6nwNBAOb1uExcN
	 Zp2UzpyBGPgS1N8qlTnfwhEqs91k/QVJ4SaiDMh8rBzNUYw7z8IE+UH2yw8dVNlDmJ
	 h7kMDeCjoq5AlvuxR9JhmFmpmZkI0myRPQSr7o9i3noB7yhqURITkQZdgqaX16vLNl
	 NcX4+0csHTijBS4b/JhzS2hKNqYn1ovvOrvoQXO9DO7R5MrvSH9RNkkUmiirm1wLOH
	 MujdiIsF0rLL8KuA6ambY0m3j9e6r1EXwlOFM8mqAr4Nc1KAnBexOWExClYDUEwfW4
	 vr8KawWqgi/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09A6C88E53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926903370.9063.17462889229845356558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4fb1e961536f9ea68656d1a403b58107aebf8e700aac69434b3085ec0461b6
Date: Sun, 13 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789269033
