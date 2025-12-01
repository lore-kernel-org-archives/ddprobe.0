Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F5D333733
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764610974; cv=none; b=C0XzjdDYvJ9kW5tSw5jrSp9AiQDGghWT8UqQpD8sy2wSaza6RkeMeXcyda0tmHflIGZge99UJ0w4bvku9H34r652m++oeuJ1gLoXVUEFOqAZ+CS3/hOjfzy4GE2yAvXXJ9N22S4poGfNN4kaqgdRp7Z1b+duaolPhC/konpEzAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764610974; c=relaxed/simple;
	bh=+U8OfaejtVwnMZoOeitCsVEqkp7TnTFmwjGMmKBJa4c=;
	h=To:Subject:From:Message-Id:Date; b=GQyhz1HalL7wzIU4USTALeh1HVXAsYHF/s8yokVjCwkV7fJlEK7IDM1IYeGW3uLpw4FgWbwk3txlRXjDnfVY5a7WOhM9Fx4BIggRiNLVf3foePypMsZ8Yz0IP8Tx/fjvuzU9RO1ORJtk92150rjFxIzSvdkzToogxGxS7BIYgx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIzNX02O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIzNX02O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5521C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764610973;
	bh=+U8OfaejtVwnMZoOeitCsVEqkp7TnTFmwjGMmKBJa4c=;
	h=To:Subject:From:Date:From;
	b=XIzNX02OBdhYLmY82LkLBouUwSApNnMBUMy6rRpJjw12r0GgRZuXeVMH4Bsn4EzKs
	 ULBx4an9qngEOTYs8nvFv7S67kOmmbjwSi/D5dBvRv8GCf16H5NUqJ2zlwWK3jk3Kz
	 9/1lC7K8txhAcTEP6jrI7vFgax00fsyzON0bnX5l8a/WTqYT6OXtEMA3BFAgd6O77I
	 KHL7Bn9P+1jcEzL8VAhnNEWLL40Q5oYwaprl5ZhHfXiMk9S+bSSdcqc2I51dyDR1jk
	 qzbzmfeZTKT1pCqdwru8eEGdwT2lXCzAOf9VnpFqQrfnwr5NSi6KV8yGOG/wzV12L0
	 +0ohWKyzCJrDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9435BD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461097359.12224.4437938029662936576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cf7e5efffa8067e47bf82c431d1ae17e2348af593e3881d20816f2de59cc3d
Date: Mon, 01 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764610973
