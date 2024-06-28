Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6066F27713
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719592463; cv=none; b=sjYfnOJo54caAlE4c+NFKmxUcCdbm8Y8+XU/2QwVbPmywI2igjkXX9TeQPlvmeu90n4Vjht/a/NXpB90eaxp2YIpe33R8cQmBuL+UEFs9gWPUk8B306l6UAlgfsaWpzOrDgBL2RRoqIoWT/1uc0xT/MdbX0q4PXDwtHBCCcf7yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719592463; c=relaxed/simple;
	bh=EBf1eojK3PSuxyod3AlAxEt5qAXM+Dfgf0zSPBReitA=;
	h=To:Subject:From:Message-Id:Date; b=iU+j+NoQmnjNsnAfSP1IexCpSxdZyOa4sk/NE8T7ezOsb/7JdIg8N5sD5MnVql3ncnXKuvxW3QydBGiUAS5zJIeFEGB8wZ7JQL70X7tRdg2nM7jUi7KKXg9rst7INOYa1STsms2BfupgbcLgT0PeQ+E1ioQTauqLs39SVoon694=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMKQLzca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMKQLzca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF75C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719592462;
	bh=EBf1eojK3PSuxyod3AlAxEt5qAXM+Dfgf0zSPBReitA=;
	h=To:Subject:From:Date:From;
	b=eMKQLzcadM6y8y0Bp5WXOlO/CmRWsxF6fsnOf2rD8yWSYz59m7ovgjH5KbdQEa6nL
	 //xyqHOyQg5j5O9cLgKHURHlxQXhBSiADjF+jRkopliKtZ38LRUUVV2O7xiSUTp46t
	 eOBUUdpeRaFwztzgWSvhoPJp4WNDs7PD/1Idu6u6/M/q8qYskaW4V0crUjnv7xmWMS
	 Rquvjav/eMMUxEUnXA6xh9H9OtKTTVEXSbF62qKTqwtYE3ayB8AgLrkkqA7Zg2X4xk
	 TyPU08Gex8gauMB2sz2qOqNqjpWoTvxRy23K4S+r/JFulxuygfriaJ2gMsVXz4Z4yN
	 WYZS012XYAtAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0D5C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959246281.31951.12023282689447697584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de55409f8b0a849c68cc79469c2f7d56f300bf51f7f9f42963e1dd431bf4730
Date: Fri, 28 Jun 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719592462
