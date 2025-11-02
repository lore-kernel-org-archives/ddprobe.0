Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FFD26561D
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762074594; cv=none; b=PEy+xvOh6BEmzde+r71THH2iD1DS4Gy3DjDnTSn0BuE4Vsxq7lzOrAvvEmK5MecZZHQN6IZ/zFoYk4fBo9QQhAsftK0EbZTDcE4Z49fCaVd6Zu4WvawkpyC9XvsiX1GjWqqiGh049nnu7MhIjKxpwCxorJ33tPByvpAEBSvaopU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762074594; c=relaxed/simple;
	bh=rzY30WZ0qsx4greYCUx4qVBujCWYu+aFUeFL279Bumc=;
	h=To:Subject:From:Message-Id:Date; b=MxlBvyoNrY9yIl1XsSbE7W5SKDami4ipxsLTJnFcl1lSuL/CNubUSjASWtQ0IUbwrPRH/dYSkOzl34nSle871SS7g0hbsSiOuEbdvEVjs/6KyZLTos09BCFT7Kg/2kO1FAqhkxDWe+bthmIEDJKuYqB25OE6SMCDSm0zBvkUnS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnNZat1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnNZat1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F40C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762074593;
	bh=rzY30WZ0qsx4greYCUx4qVBujCWYu+aFUeFL279Bumc=;
	h=To:Subject:From:Date:From;
	b=RnNZat1GB+MXK1ICeYUO9rOsaiXe1wRAcUdZ8Fj+CaORqH/00Drg+8J7JTQphNFkq
	 clPUV+kHkvofXhjHyOjYBqlTVvrsC5gaUS/wK/zXlM6dyQQ8RCOn560UAXwICOGgYS
	 CeCmhCsFwX9+qXoyFc6s30UA7MJAVfnCcuWLiaQbcn0WmZ4l7cBQ6lQ8iczzy6lPv0
	 2E9dUqoh0lKWrqqz2TGinYraFKfDT4cTCai/yZKEdzGgJkmVB7V/pfQsEV0FEGADiT
	 ehvaq2P7lYcBev09QmFLyK8PDB4YDNi5lzXQfQ3dEo+rmCPCTZbCVJkvqb2Rg2jAsU
	 wBGCdR0sEqDBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C697CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207459360.9864.3133763813418667262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb8c60a785a09f1c988323d2dc984387d75228faa3dfc111e8d0cc5b07df847
Date: Sun, 02 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762074593
