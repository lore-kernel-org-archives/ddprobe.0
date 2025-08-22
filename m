Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2257F2F547C
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755859194; cv=none; b=mxEkcT8eLGCsk1PtAnen79cV02ad4C5g7BsbMDNnc4MBmGuHwXN8ufB8n4rV3zVFEewnwSWud9FF3xetwnvV2mH8agQdurT0JtjAkLvloMDO3xjLBzkN93Ea/IMhfPO2O+zaqxTzYxIZHoSEfa8BAhjBlMWF8jCanNow5YSQuKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755859194; c=relaxed/simple;
	bh=GYf5w3VjFnFzeSUMp9dK4ERjFNbvVoHE/GxuRGfJZno=;
	h=To:Subject:From:Message-Id:Date; b=Gt3Ot/0n5xxpJQp7cs03Pgg9FPaobKDWSByo03/LAYnrqKiYNlbRhQYu3jJgjw7/DgbMpx0wEE4m4+vGwfkPjQAuUOLdUjd6fr1CVVsTENEbTUA3rkZG+zOjLqaI4pISJLggpRykdoiGjviDzkfUc9e1TXy2UlNEmVgwrLTQ/Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFjPQH7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFjPQH7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D71C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755859193;
	bh=GYf5w3VjFnFzeSUMp9dK4ERjFNbvVoHE/GxuRGfJZno=;
	h=To:Subject:From:Date:From;
	b=EFjPQH7E+OnCMpmXBIFt3Fbt/tnB6cRYbwZ7Me8OzW8zhbIDhlNg4O6IyBQQjCI4o
	 F6O5a61xBZyRjAi5jfRCR+2eCftUgmvnjJmN+6GoRnRhwPHETgjQq+3O6pBVjbLsvK
	 CzMWlRFxEZkCZZMjd+hrX+TMsoEqdL/ljr3iCar4UIMmpJWHW40rSE1YjxFzmgqXoy
	 tge8AcO/hNejNqjiSFnDZGRi3SIpnQwXXkZr5wK/bXsFRbYwo95wQKPa4k4VZWoawm
	 XSlEfcUhc9ZgyJ6r3ATqEz/Bjwh8Ax2FXmaVDFI46qs56lBT7us33rUt9uM2X1Cz+q
	 hiFL8tcR+ms+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8ECA0FE1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585919357.6126.2916546968016843853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64de0910bae1929ad83085242b3342cba5598cc64ad116e48cb217cecf8b566
Date: Fri, 22 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755859193
