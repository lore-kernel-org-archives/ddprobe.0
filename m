Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E39012E61
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718139503; cv=none; b=Abhj7HmIclKIOrGchCXsbB/TUXF0tNUqI3Es5cki9yy0YqXymFjAiP/xNJwYKB1tbuXU7pNVYlzAsFEF9LEUlemCsfG55/D/UK0Eic0zmXzDixmxMsPb3wBwV+KyQKEtHYp+40DZO65p7ysZZPDw61PVVbE1uNF0GT5NSX8r9cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718139503; c=relaxed/simple;
	bh=ollGU5EeBOaVtbaL2wNIWzTcveLZh0XW/gFDlX14zQg=;
	h=To:Subject:From:Message-Id:Date; b=pNEp0IIkP2W7Sbc7mUbUzYDbALmMHFOXzBNzQRwUdvc9OuHEJ3TzGNXEBLKQrqmGKflcB4uGGZGlnc/+B4SC40JDIEuPKt/ySdn8eq52GX1AEXI2QYviO+UsyYX5O4ufwsKXIwwBxKhd4f7R8ufvz0UYP1GFXaGxqJPL/KFYOTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWCLlwc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWCLlwc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E1EC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718139502;
	bh=ollGU5EeBOaVtbaL2wNIWzTcveLZh0XW/gFDlX14zQg=;
	h=To:Subject:From:Date:From;
	b=MWCLlwc5awo4Fd+rmTX0UGa/r7g2pb0zA2+xE35IRqeV53vSfMFA5/2xm72ZiXMPC
	 jOW3VzrxVLQlIaath0LA8qxfEg2vMmFg5Z/Gj7PVo3Qme4ZTrQPW2FzSR+9ROPqCmR
	 Hs4cTKNaL+XAvhJ3evu9rv32ax7sUpVHT45WxBMviv81HJgLpLotDxaZ4Mbv/Vr+zA
	 kOiu+DVOw3KTcbepM51jh/z+RPfev3yz1EGT7Ymw5BjesiPkUoPSkPqN6d2pPgxFf5
	 Ce34lyFfCtNACy10MkDWlUyhZsyx/1IfTk+3NIa7QwD/LJoTuV0vkAwq/1iyONWwCN
	 Z94MgJKjWZ0HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0761C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813950275.1042.14518309055455775510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ba219c7628445eb75369ecac2a4a1f3efc79b84cde9c6a3a749d3eeb8a86ad
Date: Tue, 11 Jun 2024 20:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718139502
