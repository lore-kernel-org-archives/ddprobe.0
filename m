Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC5842AB0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750193994; cv=none; b=Y319wwOUNjR0lElyJHwfb/zcOPI5p/h1R3yglzQrWu0UaxeLs5zevENAvSPbmfGttGDwNUQVMxi93Ie9UloKuOwnv3wgjbfN2cTRETpvd3D4mjBoNEwJiYlgyendnls7ZMJXsgx4oMUwFGJz9byLMw35KN0jTTmJBaSsS/l6NvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750193994; c=relaxed/simple;
	bh=9IHgmZO9pUP12bbBX8nGFQ+PtJceK910kePAUMcj+aQ=;
	h=To:Subject:From:Message-Id:Date; b=QDIT9pSi43wSvIMeAbfthxsYXbwMAZSNHqKhMoj/eZqdrVv5DpW/De9lPNyMYSQZfFjd8PO/7XTOMzWBXy3ywn1sBeo3DwVWa5ZJmrWcJKaeGY0Ug7qupWzU2ZmNiOkiDeuOJDZ42rtKTClw7Tg0/LJwe1YwEIyhZek6cFjioSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1lYujUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1lYujUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE0C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750193993;
	bh=9IHgmZO9pUP12bbBX8nGFQ+PtJceK910kePAUMcj+aQ=;
	h=To:Subject:From:Date:From;
	b=K1lYujUSfsHjxmWt9w66WqkYum5CiuEy9RHc4XFAoxHYXmHh64UgHj23BUfcPsSRn
	 DZGJzKWjn2ox3IMDnJrWDs/tqyQF6LCF7Qfj2be/ri74tegsOcRzN67cntoABGCIhn
	 9QSYICI5blycBBu3KzFULz71fG9GqKDUzk0Sxp9bMFJHaMsvPFoMRc0ahXlzvmWHnC
	 Lt+jN+2x8jSoYLsl8IdprP2IvtJSIrymBTNFzUKWFbEfk+Y4JyzYkAqvbLomzmSO54
	 SRDUVvRAaZ8oZb/QBmxA12MSBfjzJxEKj3r6/F4awzZHpyA4QKpNdNpVX8QcF7zSoV
	 ALUDpdV+XCnYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A3C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019399357.1553.18122462334593186501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803b709aa21591683e7b6c3ddc602ba88a8ab99dc17f6348899cdbe0821efc9d
Date: Tue, 17 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750193993
