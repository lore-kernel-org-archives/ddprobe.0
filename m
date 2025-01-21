Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D32A19342F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737462954; cv=none; b=i2xdf642oHStkzZZeUbMvYGBATknzD6eiYcqu7a97ZgyhIpXm+yHrmesUhB0m6AUX8YnfSGKR+9D4scnsNq0//OBSrPF1g6WdGFnP7vugxiAhSDxsioMp27BRb6xuB1V5IrAJ69vAXVe+Z8ilAOIuw+0rlV8dugmXON2a4zQc2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737462954; c=relaxed/simple;
	bh=dABytABCdCnPqcAieestV6bkqJyL7XQHGqe5BaRTen4=;
	h=To:Subject:From:Message-Id:Date; b=kW2pliXAK1cHdmcoB4HapKF4qBgoHxJ9k5bf38fLtdp9d4tleSALF9/QdjWeKDWe9iltJ9tyOsIZF/xVi2Rv0A4wioGX0MXnK1z4UEATboZkm9Nh1BtLNxVDhhiNYYok6ZEpavmo+u5fgOt/6xlGmPz8xRk1tZonmf56ROixdLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1HYix0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1HYix0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8A1C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737462953;
	bh=dABytABCdCnPqcAieestV6bkqJyL7XQHGqe5BaRTen4=;
	h=To:Subject:From:Date:From;
	b=i1HYix0V6L6kdNBaShjr/xzqKRiBqbA3SKtDzcrZGaFLTtmzT7gceyxhhSNRmFoIS
	 DBF+Ky3JlNbw4S9xQRvJ8o+QVQjnCi/64VOsCYOUC2RG5OK/WxMRw+iedD3Fh+mbJf
	 v4LKUXzWPgJkxf/2RtFOLxPRibkFHf6JdDHCLbxMnLmeli70aEaSsEsfkQH4c5NMOY
	 uUAxEpiLjINKsbaPEu89p13+ndXkGhZNriNvz9giVTfcac3NjOHzr1TxPzjusI/qkO
	 pf14EsU6NgQOa+HfM940hFJALnVDyA3J43fCjvPiuFR7lJMIwozewufX1WZWPfoUGw
	 DLO0LeQ4Zg7Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9609FC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746295360.1914.5057752759006605042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb407277280675b99defdac84a0026312b5bbf84cb00546f3448e791ed44b725
Date: Tue, 21 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737462953
