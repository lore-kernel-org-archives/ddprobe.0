Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D5E22D4C0
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745354395; cv=none; b=HYxVEKEQ1Wa4jbJioFMknaVTB+kkPOtMgXFTYTwYXQ+0ZJas2UcqENHtA/lScZAeuget0Xcw1W2HfX8us5HYV8ljHdQLTjjfWNoMfNZ81n+chXGpfhWakTZ6l4jw4TdcpcELvlf3COe9YwcG7CV+Zt3INH4n7BOaEsjNfqvmKBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745354395; c=relaxed/simple;
	bh=mvG7Rw8MGXspjWl4XxId4orbI0y8o8DaND+7d5QUioM=;
	h=To:Subject:From:Message-Id:Date; b=YaoGZpt4tr9AdCbew6oEcGeXVciAbBM3IonS84MGRfQbDH4aEcvEDhvMv5rlLLYockNb4+NY3g0VbfA3zRm9TKj/OzoTAhF9YlTmUTSgEAYn0uSSzNcDa7rftUnyD6/33hF0CyYWBcir9RyBCv8d2v2BElaNC81tDwIIrOtGhu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjD31cOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjD31cOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8958C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745354393;
	bh=mvG7Rw8MGXspjWl4XxId4orbI0y8o8DaND+7d5QUioM=;
	h=To:Subject:From:Date:From;
	b=rjD31cOATM0UayQG81F0tGu2zPO8Ur7UCwbBxsSCRpcWDExZQPtEOUBL9AIqo15JK
	 DIL9GRHGeY0xtUt1uxS7IaCx20QGQzvCKfTrlMpux99S5cgR32O6am3oVokRgr3suR
	 KLyQk6n22igjWc3oOHEgOtJTbGVfwtmlJH28sgpemgJ5cOWqgnCPFeVE36kHK5E4N4
	 c0BXXn5cn+4m51gRYTboINlsXgrLgeh2owx/qnWFF1M4Q1eDxrbaBVbpywp8OvStT+
	 dlRpvY+pYii4woG9trRH2WQJpdpVo3nhIt852JKf6WPjorlg6Y25hOqW0tjRuIr2gr
	 4Buo8zCLK4Y9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB8C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535439359.14789.6659304751295212743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40aee1ff94c0151ed023e057a66b8a48a7133995d06fcc258a708174975443d
Date: Tue, 22 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745354393
