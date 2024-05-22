Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6947213D53E
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716380603; cv=none; b=GdzVOSHI+V0DDksqycOeSIVGKM0xoexENx0nq+M4jCzijrKO3gDqc2iWp+PggQ6sOiS7BxzAaInm9WGnR3VNrzqiBCM67ZYSu9pI0xfpTAXVbhVjc5Syskp4/HCqpTV5LkZRhampzYaovOdlZyAZjVXh5nHch0JIX4rLLwcTiC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716380603; c=relaxed/simple;
	bh=9eYRnwJHBbsRwx7DEa4PLRpz4I0g2tHs/b5uvig3Nvc=;
	h=To:Subject:From:Message-Id:Date; b=dpuEkEIwouKwM5ufNDRm3LUkMeGTVFnzQB4zNVsTFvfB6sUVysRnLjliarupEHuFIdwrMPLHqq3QHuIYv5zWNmDV79f0zLh87F3p4ylTmRVab0quiEKt8zSRY2PBA5HwEuK2cSrLZjM/xn+/wcGXFQ+NtaUvZAwzXc0kvvXeqVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeMF/gKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeMF/gKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD361C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716380602;
	bh=9eYRnwJHBbsRwx7DEa4PLRpz4I0g2tHs/b5uvig3Nvc=;
	h=To:Subject:From:Date:From;
	b=CeMF/gKW5ExvRV5xYXeEy+nkNjKC/glnQEpI30JmMIM9M5tQMeGID4dqCyIItYEGj
	 HcF/YgmohhQ9ZBezbPrtnJO7exMA6ssVwthKsHZ3dY54URN7L6IbY0ZagbcyKXY/dk
	 y2YLENI6LxnlCvGtoT7R3w6yhDTdzQ9V/nXUY31rhmQxl3hwycJU3gvJvRWtIyAZ7s
	 x3hQg0xGFWHx8ngzxIuzBhvDyRZVEeobQ1D9sBtmk87Qjk/akejWXykcagCCyT5eXA
	 6xSdhtm1feFGyHSc1/8yugW/kWpIqj09hvJPg+18mGB2EPZWZP/ywH7p70hZ7kI18x
	 Eg8E4OeU8E3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1387C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171638060278.21609.27158460386247758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5c53703f073c8da9b4faaca524911b164f6749ac8f48a8f7acb84e4e86fd18
Date: Wed, 22 May 2024 12:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716380602
