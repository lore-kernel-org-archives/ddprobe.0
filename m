Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F52F3C2F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728273954; cv=none; b=eo4smn9z1jpbgb5jjJr4HpdCJvM6doaV///6+VfZTA4HlaQYH0ikuaQIvi9fCLfJYtnmRA6AuEzQLOfm8yfRpT3XFM1PZga7H9AX+EerhAEVn5e0wv6pL64+uXGA4Et0SesIaO1CD1+HRPJ6gm6w3/YUgDxOuIyyKy6+27l/XVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728273954; c=relaxed/simple;
	bh=RVolKJKcpwN8xGTq/dYsFiP7xStdJ/IBMYYt8/l+YuQ=;
	h=To:Subject:From:Message-Id:Date; b=UBIXNPcN2ErDZmZGMVTiXlaixVMmLciTN59oxcp8St3DrPckV73LDtlvP7kBq0Co7L4KzWuIlDCyw89Obk8/mxfRALYoOBOimJdmRE0mJbXx/qyau5bspgKUU/LUw3ZNNcuOC9g40aPkNOxRw5A76I2r1pcrfxJZLS1St4Tg/Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIyoXph+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIyoXph+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94A0C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728273953;
	bh=RVolKJKcpwN8xGTq/dYsFiP7xStdJ/IBMYYt8/l+YuQ=;
	h=To:Subject:From:Date:From;
	b=CIyoXph+hvtS3NYWTvHU2U8zCwQyArh/9kIBy20T8nZRqZQH/0kLj2NSuVnlBVQWJ
	 /H8gFceSPiubk7KNaMKar7ety8phrtMzmDCcgLbSWb94Gw2lCMQm/4K9fUULjJiLXc
	 YiACn56WBg/rVqibAoY5fiSaot3ItBLX85SSz73H33SwxSNBrLhPXScT6KtdpdIv8/
	 FD/rAuCMSnaT/+PKh6db+Tv0GvtadgnDI4AjkZIzx3rY+dfHhSoz90dryjcdN1iGUo
	 AmUAWKXF8uidVeQd4IAVY93ZPPI5lk6PZAgUTYMnG2Vuw5DmwXfosYxO7wzEf/wCjT
	 cm7V4QReeoK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A216ACFB43C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827395362.30768.7016350201868184620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dedfb28f7ffd2137e1565ab1fe43d2936bc56558107d606fc9131b90054a144
Date: Mon, 07 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728273953
