Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666B4340409
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785159034; cv=none; b=ige4BIAieM8G2Hy3nOp71Pb1BLkU6+J4t5VMj2+q9GkUjgg7BOwvBWXd1+QebQNWqrMlz8feYFNrv9xGy5TKkf98VCu1JoPtRGZh8YbdLHtnwzVHyoRHS3eEK/iPy0hL4cJ8bPlHDV1MyWIcEQKcbI6sluCm7UJ2uxJvDuZhqFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785159034; c=relaxed/simple;
	bh=ZWRYgot4JuVlSDO4lyPVUsgWYfwReRbUxpDpQ0WseQU=;
	h=To:Subject:From:Message-Id:Date; b=MPLT1wQNt5ouA50YNQeFA2mJwRRGpwsFf1I++d/1v5YDj2XwBJZlrdd59HwIPC7a197i9HMRAtYfvMD8ua4ZjajQyaFoi6AwN8XhbibP40VXA+Wc7jH+9a24dYFtjioqqN3f3+ve4gyMu5zwvlAI6sltXARn/5BH1MVXcCmfB0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsX9wEAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsX9wEAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF96CC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785159033;
	bh=ZWRYgot4JuVlSDO4lyPVUsgWYfwReRbUxpDpQ0WseQU=;
	h=To:Subject:From:Date:From;
	b=SsX9wEAddB5n+giEw0IhG1VkbyqJBS8Bo8f7+24OREHHIyual3U29GDTqIr9O28hV
	 XEHX6YEu5vrCByXZTv3Qi2ZOJUvfkfP5HY21sZw7RbTOx++Iwb/TrVvoz9fce8HcHZ
	 DU2nA7kRa3JeSgEh1jciBb9EJ8G3Yv29mHxVaAzcwcPaBegLCh+rzSrrggsFGCaNPD
	 O9Zgnf2hIjbtljVgrdXeIu29MO8Zr59R/2ObkAercX4ilnRCcPRYVUm3uchV45yfBa
	 8DzUQfsM2M1TGkG7z5CBuGsZ+iMmWF1IJkVRwmwP6kOESTwMC3Nx7mCekRQf51CXZi
	 co5HIff1LfK6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3C2C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515903368.15007.6811781720245172905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4aa2b5b4d913f43abb3d6ab57f0916aad1c5192ddb2e91633fadb696b987d6
Date: Mon, 27 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785159033
