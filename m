Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339E71FE473
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736358954; cv=none; b=JzG7GskiF6cFlySM8hf4tTdyCHAwR5/j69+QsJkbVOWM1roH43d4ZlaIEi3lp1WlhBnKlFTXSOVSueDGaN0CjZJ1sr0kzVos3HKJTr04DzkSyuC+JCwUtRLmnyLniv9Ynjx205E7zCYWTyqerb9KClCEjq0zWo9jMK7APP3QmPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736358954; c=relaxed/simple;
	bh=YuQ96XDPne9jX7mnHlUq1n6NwJR6+kKvMGyuA8nKJsg=;
	h=To:Subject:From:Message-Id:Date; b=pTvaQwq0IYyoSEr2dBii98OxfFS5p0GcLFKQrvPR/QESGu0WE1eMHs9cS5b0+y+35ZyKBEUrWF3gJiZk7EI/V1mGxMrQBhdaVkPU9Iia0GZ8pykHJ1rfxFNwZEYafy9PHf4jolJZDZOJZ5fUBPmc0wh78+4dkNmqGrd8wECpaZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfoU3GKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfoU3GKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C231FC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736358953;
	bh=YuQ96XDPne9jX7mnHlUq1n6NwJR6+kKvMGyuA8nKJsg=;
	h=To:Subject:From:Date:From;
	b=cfoU3GKTfygivG1Y4hd/hCk2FMOFIbGXdByjLUEbTev6BlLXXUDPoQtxZtfqeh7mS
	 AxNVApcOG/knMcm+e12y1Cf6jcjQjhO/o5/I0RbxW03IapdmlQDZDdojbz6RavQhGk
	 CPZL/WyVzFEN4+53p0xOc5lwf5eHVykZRv6wmMGJeH8pBopFcosBKynX4prFHy7mN3
	 350rMjRN5pQdmSQB+xlb2v4q732Tw0rIsycEEqdIy4C9cX9W03VIuzTlTrjOmkfz78
	 5Ijc5kAq0fcai/7r3Zk4eNvBmQZ9i0gjRs5hM3xB5BBeRs0xnIwQh3MaiyOnS687Zs
	 cJdr/W3HTTwqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF04E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635895370.25467.6424947955734791869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640b12cb5a0311583be90d302c506fe8d843aa540560fff099cd9bcbd80245e2
Date: Wed, 08 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736358953
