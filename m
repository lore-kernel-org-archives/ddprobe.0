Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3245B1C84D6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746603594; cv=none; b=tP1XcuwrgPShO9zUxmR+1z10WEMVBVW+ibz7iVnwSyaTiD0Wy/cGPRBgQb250T5KspYjYp8bvKevrVzzPzdYxggwJFPKPkgJ0Tl6kifpCFTCBXRB546p3FONEp5wczWjGLjulx2K264MiYZirHpJNPgqucpd8jFokO0XygKJx7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746603594; c=relaxed/simple;
	bh=zQLUFXfwUFdo7V7VyaKYqmNBwUYuvRDvXHWcgLQ8nVo=;
	h=To:Subject:From:Message-Id:Date; b=ZSNhs3xbXTWB7ew+MnBlydkz2TiXRPDirA16nTpXiHBh2hznLtY9kyQ0asVp7Aoe8+2nvwm4/4Z2E0KIsYuii99rSe0PTF2fIfmGe2Z+hGwiV1BE4BkIdAHFDePmrl9ujUJH/fdP8QBM5m82Qltc0GP8Dm9pyJxnZVHx4k32t2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6DqU2YX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6DqU2YX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746603593;
	bh=zQLUFXfwUFdo7V7VyaKYqmNBwUYuvRDvXHWcgLQ8nVo=;
	h=To:Subject:From:Date:From;
	b=n6DqU2YX5JQfEtAebMAku8JgRcepUHQ5yszbhuFSkZ9Ts1iZ2RvN/jtf2ITD0kR2b
	 9Zi85GPOa+9KxPXrVE5fXOqho6URZsN/1eDf9FX+xX8mNT/Hua4PBZ9YHi2l9LzSAz
	 sK/W9xNViHA039y2U9CeWRVbR3ppaERDCK8KKQxWoQ0836TZoouOp6yxGpbjogX/9/
	 514r6QB68JF3Mw/I602LpHLyIbOiQ7Zhk3SkNDo7VHF654vKkpI2ea3XhEydNKv7bh
	 hDqjpLAQRQ8aFG7wnX2rOWJKkiuESt1AzZa7r7j+EwBuHaeIda7clzcNnw+KIrN2Fz
	 EOohSCySl84wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E366C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660359357.9170.3459585811053143792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c0f594194b61123ddded7db01ae5d1f380b54ac74a1d1042758ffb8cfedb79
Date: Wed, 07 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746603593
