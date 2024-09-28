Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3862770D
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727522154; cv=none; b=nDitQKflh5owY5570EGmabAUtA18pnhuxZIwC1CWcDQu2ffj7IukF0rwvzdr7oMWlqgjMeR4R9JEX9WsQGvcm9Zxb3CL6uwIyoxa0qTyaDEuuCuzrMOesYTWnxVgCeH/icUyzpwfp4MtNGUEeKscNzqgj6m6Rq8wT/UrZcS3f+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727522154; c=relaxed/simple;
	bh=tUlgnb6mJwJQvUAnfVhVUyTIcT/6pZB9vDZDspptaMw=;
	h=To:Subject:From:Message-Id:Date; b=RYPD3cQLf6IIeVTnk4HMWlHC/q93kHOWZSXJxr1Hmk4SBEJp3I6ICPxez4tLG2rOLY+Bkvb5Y6shE/vjDjn+wSaGQdTX2AydEdyXT3fmM3AcALKQLZKpm3RyN0yzZ0Qp0+1Z16fVb5F/j3+6nAA9DKNA7jLzS93d6oYTBi7/gXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv62+3QQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv62+3QQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A728CC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727522153;
	bh=tUlgnb6mJwJQvUAnfVhVUyTIcT/6pZB9vDZDspptaMw=;
	h=To:Subject:From:Date:From;
	b=Zv62+3QQYKIVhOTyTzMg72S4zVlE7NISGrrc/gqos69Xd/uA80BTza1zJcvtOABmc
	 7Y1qIFGzk6F9Nbxi7N8Rmm2Kd7DpJZMwYTvIwPcwoBHoack6Ku8AB8cIZdrxHKX5BB
	 jv2owyZyMWyaj1negZxHOurTKzxNy2viXYwK+C1PsgarCBL2z2u35geGbCey7a6Tx+
	 mcoGCAqqWA5zU1ITrq2n5thv7jxQCe7JvaNVxFH8sWFap4a6wsfanQChedsICH1jYL
	 9N1TG9s8omiIDZs1tu9T3X2jYvrcjvijq8lxoM37ZeGLB3wQOSJLXtzy5ecdUG32GN
	 iL9HboTcxskKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95717CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752215359.12114.8239174641839281308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560e385ccb452619afb2b9d47fbbd3f6aa5ffb00f2dd2f490fb83c4c1bad7e2a
Date: Sat, 28 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727522153
