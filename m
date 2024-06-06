Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CCC4F615
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717699643; cv=none; b=j+jMTJBrOfunT39Eje/b8ps5Ax0EH2CYKBQ2/dJVnCl+LSo0y4E8qFbD0mAvilDp94ETG44JO/XWVajkYddFfWYsj2mysnJgFVEW6B79PP55R/PKa+2J2RV+hpa/3BaTQaqmw9/8UTQk9pbKyoCgy9Kr9vGQFaCZR5eljRDLqHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717699643; c=relaxed/simple;
	bh=h9/K9Yu1o7UBIE3Y3jVwuC9BPUnoaECliBhr4NeWyu8=;
	h=To:Subject:From:Message-Id:Date; b=dktmTeLbcZvNj/BNWqNjOHE6mGB81mCmY/O3xD6pLxSucVgYbbbP7Mdej5unsrJWhW/saN28S220Q941kZBUwKCvKrYBeOGDL5qN4+fZSwOpe0pCHOO0znKHIdI43jPUD5umhpa3Pal3UqsqHlztiuZJ5ykLi88YdebnIbB0Wns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXElgOHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXElgOHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3DEC32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717699642;
	bh=h9/K9Yu1o7UBIE3Y3jVwuC9BPUnoaECliBhr4NeWyu8=;
	h=To:Subject:From:Date:From;
	b=DXElgOHUKDcugUZgFb9AxaAGQSzK/MgSBcJhdjwfMQBSPw8Yr2SG3xfa/2nGxVOgE
	 B5At5rTDzFuZ55rwegA7pGdFKT5TRIlwgu9aBSusMipDdVFMvoCEHPURiSKmNOfWPP
	 bkNF/vZtMyzLunQSC0IE4J5uoRh3ZpPnW2YrsEE24yem1Mow2vV1v1Lsl3diyZ8K0k
	 IiOkHXYUzHpKhEnmd+yExaBsZj0Eow+wrSNwY4wQCUnmiQw4Uwi+dLNT+vIqpkyf8N
	 MBrvgqU30RTcF7zgYdyLSBq3Rsvp/7685EUckh6U8yrVKxoFD3DbtRFVOzqUG8E5H2
	 6Yyj61AGmUPyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C283DC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769964278.6607.11899359696390451864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8bd19a6c62b7687513cf8da3bce9f60e1f2a4854cb04dbc9eedf82ca51b814
Date: Thu, 06 Jun 2024 18:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717699642
