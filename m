Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00446EEAC
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708881497; cv=none; b=j3Ca7NIDOGOskuakVZcqLXh/GXEE21p02bcQzsf6T9awQdmiqDpAOq0sOl3k9tWaywgYtc1aAZjQU1Wm1YafiwYoalZT+dv3IS7ZPvq5D7ILeGzXcsDjUwzWZaWgGF56HulTwr1ik0lRuZRs3C1xhxtQixQ/PU+N2r491AksPiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708881497; c=relaxed/simple;
	bh=zfZtF/iIfPv/GiJVwQ05FyvPZ2oQ/Oz//BpDyPkI8sU=;
	h=To:Subject:From:Message-Id:Date; b=ooBeMQ49gLwza4sPDFKehMGD91sQPaO99JXbfCRTHUXdZUzQ4+Y1NAtwJZKCFkEKtfnpBEIUt0DnDWE1zHoQtdUPPfyZBPmqngoUwZ/peI/QkHm7XNQOLQ9uv9Y4BDZtXsWZsk+qK1AFMyf7+cd3nkREQWNNhayH0epHa6Axmws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANfBXYmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANfBXYmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89761C433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708881496;
	bh=zfZtF/iIfPv/GiJVwQ05FyvPZ2oQ/Oz//BpDyPkI8sU=;
	h=To:Subject:From:Date:From;
	b=ANfBXYmm8kfDOPkIoiz8sBKSVRseNISM/rmNHNF2p7Gx5RpVdfqmkidHgVGIp1/9K
	 nAO1qyD4smLdyc9jHp21uKaDCDTdNkif8vEE08n5qKiddfU5nuVcnY75RVsm/a7NvM
	 pV0ng1Ta+LpIap+MzeYj0H3ixrGFBJUh/3ab9tW2ZFZFIO1++Tg3pwt3DSlUgpmErx
	 Ds4Tbo8LS/d1Vd4q/US4ipNFNAygq9MSudFtX/hG+3IovA9aHcTZK0+/pMWQ0m8hbt
	 1X4X4rJUQEZYnw3zeIuxTGLqxu7yRVoLSHs7yYRsu3iMwxOpdLAHNAsfGI/JeXbmYq
	 635eqgjSkOPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6B3C54798
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170888149642.32257.3106460854034798400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c165b0afef94177101155c43e0abd56357aeb5c67e93d383b59f0fc951a1e6
Date: Sun, 25 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708881496
