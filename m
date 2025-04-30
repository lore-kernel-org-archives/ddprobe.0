Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3525019F12D
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746036594; cv=none; b=eAAxe59UXB8emHv6U0j8riXF6iRS8omb+NiMVMbfOgSagQjZD64HoCcJYwe77eYxATlo/eg8WYuy/KIg8WvRBcEUTGuBN2NnZutpXIZRxqZUNH9kII/dovwO55gRsKrqaOAildXLPlP17deSYCUlgT1bH/lqmt9gUrqAq1MHKuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746036594; c=relaxed/simple;
	bh=GBkyZFU6kJS8jJ2f5CVlCs2aMdS7bo8qZpBDdsRLxSA=;
	h=To:Subject:From:Message-Id:Date; b=LRQHEGS0kfzMg+pRQ7zXUDMhPvX57ek52pM6L6g2H9oGOxMwaKusF04FAT9CDGZSkP0FtcyUOoOvtIc9jZeRITx4XFDoKeCbaTlaiCSCHhGwMbk2DnAxCvEWqb00WBJj3XmEP6HGZZ368nLdaRXXkNGusHOgoBtHyhWWjDLLNz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFApVbhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFApVbhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A398AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746036593;
	bh=GBkyZFU6kJS8jJ2f5CVlCs2aMdS7bo8qZpBDdsRLxSA=;
	h=To:Subject:From:Date:From;
	b=TFApVbhvEi5vFXA9GFaZnh3bJ8O/ai1uaW7WYzFPbQ0UtgM+ulR/Y0b62JlMaP0Gc
	 ez+tArNDr3C+7sFZLtxczBbvDiOcQGS84Y3aP/m2BDK7Ko21TXjxTPjUUUWDnfdJTx
	 JTpPJ+v/x/sFqIpadZc5biXczDPM1UJx350i3Bd/pimIw1DFH7aJOwArTpy4NrrhUT
	 2hGcFfPH3yoeSRrjcDa6Y+zvAw4EiX1qo0mpGSNPebYlwJgHNfsHJvzeHBkQVOcHBJ
	 EfXmp0h9dpumAWM/wggW+gq3DQ0hFBzl5DaVZUW9xAERFrV2r9VSLgqzdJKKKHJmBo
	 h8scgM3O3Kvcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A67C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603659357.15576.187424010982736521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981dcd28e5f020c3686c1171850f3cb9eae7e10b05048678cfa3bdc15fa67ebc
Date: Wed, 30 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746036593
