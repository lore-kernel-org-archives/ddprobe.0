Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326651CBEAA
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751354994; cv=none; b=dbCRKM4PcwcnLkvmJsiZLcK8nLz4DjIYuiqcBCbrVk+IslMS4phY7KIlytNTXKXJ/77Cq93rikFCMFpAe3NacQFW3l2K/PZheAH2tqRa58JsGQ6FmKpkYshPAulPbiNgWsPiiC620WoPP4YrU+AnwrV5aVxWayYx5Xsb3QAC1RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751354994; c=relaxed/simple;
	bh=CSuJeGnBNYfgDvVCEXiFxWtWaDKTYnfEXiM2t3JQXp4=;
	h=To:Subject:From:Message-Id:Date; b=USL0XvOfcG1jtuQGfCuXDTkE3zZQ7bDF15jXFIVd6TNebL19yVkv3czv7Vupdbc3/cWA4fVrg4Gk0O7FeYRErPRM9xbOjwWvX63B1P9DHGUgAqhoTYugomnaETq420HISFmSF3Y4MGeqsRpS3ZMO6fGJj1nlmvQ3fsTM64mfnms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDXIT5mW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDXIT5mW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751354993;
	bh=CSuJeGnBNYfgDvVCEXiFxWtWaDKTYnfEXiM2t3JQXp4=;
	h=To:Subject:From:Date:From;
	b=VDXIT5mWIPUhaAPSg1j3jV3ChsvMXXeFSkLp/thFKOFXb/C0B+pk+N4myZ+j1eB3o
	 vCiLZh75GJGSvD/2FhoJMxKtXwTWHgie7VzhQzATSy/QtlAprbYTxu+nUoMFSRV0M4
	 9tHzh3Yo6OKWMgsom7JiUFvk3n/11D3DQax1+G2bbvOss7MbSTKxuTTDsSf3TK39ZP
	 C21KHigx0Ujiim9gN1kzx1a83tjFaOzvJSHkSMLW7+kaR+hSFsv/EOyfe/EtaKPOUz
	 gN2u0HY4E3bxQ3NbqHSoAyNqmXi7Cij3GkkURitJtB16LmW4G3RAqwcf1geE5Jq6su
	 rh4ahS1WmJPmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEDC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135499358.24237.17032345246199177382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b16d0f29bd8a6b09e7de7957ea2408b448ffd1700bed6b37c05cb39ff865e9a
Date: Tue, 01 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751354993
