Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EE839FDD
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712496497; cv=none; b=kcxxUouJq9W80BOqcT0mUNnWvmwUZLsbTAoU7xEg0wh/yE+mfyNJnpUZ4uLoJNFTRU0rzNP2HPl/IG61re7MiO6jiyFGfDGblbVPqTojYxg3XFr/Yv6oHi6zLmX3jWvRakQWQ2zQ3mSZBrrQBQj+FbCfkMvpgYuHCMsA0wwEClU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712496497; c=relaxed/simple;
	bh=7PZTs3yDjNmwZun+W8Le2tj4xZTarh6otrvrSn+rAnY=;
	h=To:Subject:From:Message-Id:Date; b=iwf107zrz4sPuTBUkHqnZUz/II78ByDwfgheuWrXrg+EKww7dBrDwD3GEnwsQ7E2NdphUMMayO8aFTOV8DxmNmW3dPM8dCa5xc9bapXPdRc1go3RAS4x0b7ImVylz9139h4fhP7Cj1WFr6f7wpcLeYD/WVOj4p4As1wrsshGQ0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdhxLZ/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdhxLZ/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CADC43394
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712496496;
	bh=7PZTs3yDjNmwZun+W8Le2tj4xZTarh6otrvrSn+rAnY=;
	h=To:Subject:From:Date:From;
	b=fdhxLZ/wBPRTfStYsnAH+18XaOB5vMSlGQbuaxkUvXFrQXG22cQ+0QvVmZmPsX2uG
	 m31gWxg42U3DJ/R0bXhAGxPUwr4cdkPj64vs10+et3DxlIIJzD98s2IuDpTqW01Vxm
	 wi7vy2R78nFSY1fERlxeDapfvuxcK+ZI08/9K+c26jt8PO8eTmIQHHAh+9oSDefmqI
	 3718b75TtkkLtmH+srHe0l/bkYsDoyDWyTYsblzTJ9FfWMCnlvxVFCTvmWyz4stYvm
	 SZmIi1h20aTRHsCuNMEZ6IfcmmkPCK3TiB0y/FQxvSUT0gLuTHiFKFj06Gh2A7aL7e
	 fRBJWOQJ2yB2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8AFCD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171249649636.23403.12016248213723023583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11bae34b18ff07bfc01e2ba53606cd6a30746993a8114ddbdba450c2079491a6
Date: Sun, 07 Apr 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712496496
