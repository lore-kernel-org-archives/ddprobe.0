Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D6F396D36
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777418854; cv=none; b=Lf/TMf5KgLxwT8DrJtnXEmvP2juC9MRlTnR5jBexgD75uql6Y5OaCPZpggfviz1LnrdNxSsTtwAmFHnLfs4PSZdzJRiJ0iV7fxor3O1hebpefG64PFr9fmzv2bP4JSx+kLwkk0Lj1VNQ3pGrMSs1SULJHeEl3qILl///jH4HcnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777418854; c=relaxed/simple;
	bh=KbCZ5SxL7sz5H5geOTBa61AAukYIDnWg0ER5CiWPdls=;
	h=To:Subject:From:Message-Id:Date; b=ab/WfWv5RAgzaP4UQunE27xjLgRS3SeDuKJx33CZ1cS+3kzeqZBdXIcfWCIZtiphGKrY7dbiq4/cHBcPbT0ifV/gf58wixMGMoa1opFmAbNw5QQ2lgLwLkYfJwIi632rYHowt2Ry11f+0HHRmoAXEZ9OBhPX9WSVQNnJrBRgo1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seuba1sE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seuba1sE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46E8C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777418853;
	bh=KbCZ5SxL7sz5H5geOTBa61AAukYIDnWg0ER5CiWPdls=;
	h=To:Subject:From:Date:From;
	b=seuba1sEk7cr0OzA54Xd4EOPY2xCOh5sXSrHdS9MmFX+erWgk7urw37sB2ao3UP+Z
	 rro7EYThp1xZKHxxUvk/wrR/b3dqfmk7qxb4CnqlNskN6vY/nDEMajm7MzL+iREJc7
	 w+DpXK1NseisTBUFF4qIZknhCITDj+GZhGFK936KlOO+xhFBHUfkZk0AvoPZYdB3EJ
	 TkPwEKzjKBnLZ4ldEpZ+CLcIpFK+Ex3/mxUkZtQYXpR57eRductEBi7tANY3vuF4Wo
	 qKWpVEN5UW3+tFULcgtO6fncNBYgg0/CfgwSExIIekFlBdWTkxjAr4qkUAraUEmbh9
	 8QTeMx77BD78g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99BCFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741885368.14772.17622084922717082737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf41dc44e37c130473f6858cbb180dc1b4e7e859013ee39a001ab9a911c14eeb
Date: Tue, 28 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777418853
