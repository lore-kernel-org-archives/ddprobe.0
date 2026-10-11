Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F43D3B775A
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791718834; cv=none; b=cofz1NaEZkEPcDKMPzi/xN4FEdcQf/M2CoY6Uv/sUrHXYPij0WJs6loBNjCHnZuqpBuRSeOYfO/RLb5jOmXAll1TWZcolk6h09BEzAgX91NlaCzAb2hkbTQVXSlqa9zmmNzZpJYmSglUpYmmmLcrgI6oGU7+kAZDdSfAzyK6YTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791718834; c=relaxed/simple;
	bh=eOdoMFEaDMP4qObhtwTd955PCkEMdNaMlstoPoJgJLE=;
	h=To:Subject:From:Message-Id:Date; b=qN5SHSO1s2PenyI1UWBUXhEZpJRYKvFSttCh9TQ7R8leSLGBI72a3qeRcRO8eLPhNVQrZF1YjQ9M78VryZ/9g8yxQKxeCmpClmPJbLdevYNonQEkmTUPOckl+92Dy0twNAw1AAomdoit5JF6/1C7o5vpLKoOncv6kLJ25stSyqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slhQTyiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slhQTyiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDC7C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791718833;
	bh=eOdoMFEaDMP4qObhtwTd955PCkEMdNaMlstoPoJgJLE=;
	h=To:Subject:From:Date:From;
	b=slhQTyiCBtIgbQLzQ1T88trwRbEQvcSVrq+zDe8iSqQ9xWjxhlA5c0clZVVrweKoV
	 tBwMb2DGscmxJ7SSCtgPDC9iCwsOPfYU1fPfYL1CGsKSDWBs8Yp8z4sRU2KCmgOdmS
	 qAyDpoYTT9ugh456kj9yjkK0vQrSdSQC/s4zwzH7jrpfqJyiUYzuU3BHz9BJQ9DlLz
	 UDZb2J1efaVGCDyFCYwfNMLHNDqYDBExfF5xeAYFdMNJYWW9dWq5qmaWQ4+AHDGcCP
	 CCjWokdDDfY7OdCHyhY/BdP7aNOBUwzZMdA8z+QgnIutxbwYfHLnuxF8IsyXRmraVb
	 vTcmlgX6puPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC53FCA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171883368.2528.15137831520803484662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a7fea6b623c304162897a4c6552403d8debc2076f4dd0f1f15449c02e57bd3
Date: Sun, 11 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791718833
