Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A75938B131
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779385354; cv=none; b=QyuNDEuIDzC8rZWlA+/TxBTX0kZqIqm3aG5ZXlhR56vjZWP1RiWVdsqRnccuShZ48sptQ1vWBSYC+DdWDrSZxWHxbazDT8KzqpPi3zF0Ufb/gkyIupSPGuCaSJX/PtQZlA2sowdvFPiTox4oNsliIanGx/AGnkp+oA5ocE7GFiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779385354; c=relaxed/simple;
	bh=S95D1bYnlzWNff+421MpuWrz1BgIay7WdWmIW6hGQwY=;
	h=To:Subject:From:Message-Id:Date; b=uRgaQRakmJuLuqcnLRN61cUjl8G3V4V8WhrIoooTYx+dVplB9Dq1vcqRgKR0/nxBzR2XuftsPayM7VylGw1Lk+WOGwX0AJl3hs5lX+rwcnWFZ4Gysve7EcKJ+a0J7NHsx2JEuWqzyIKS000Rj3Vj3ijyC9Pklcj6k9/AsWIepeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRJlCfCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRJlCfCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C499EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779385353;
	bh=S95D1bYnlzWNff+421MpuWrz1BgIay7WdWmIW6hGQwY=;
	h=To:Subject:From:Date:From;
	b=SRJlCfCq0+zt6KijJ1dcDRbIj03o9M/5bVboDbiEKdYdIL6X1/C37a7qrTsWSQo51
	 oGkp7IVDpBObgitJ2jhXaKaigbpaEEUAYAdNb4WxS7l65Sj+T5A+n1IPCCXaP2/PvI
	 qs021Lz2eWVkdkAhZYNhOTm4nuzVtOasx4BMhMNaSkgo4PcfeOHcO8VDCc35rLTWit
	 sqz6DBegEGt9IXKRUhHR+5VUfS993IdwUJK9aXLccJLuFPqcUj9N1UJkBC5lSRF6VZ
	 +3OLT3URULRKZHAtjDesmOGDULTgMMcQiFJSIMBK7UoeVJ4yqLuV1MjrjGdZXDx0fD
	 PHs5xdlNUUEUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14FCD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938535368.17517.14495166029945229300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43d147ecc3ae2ff1819fc4b1dc069344fbe5853e387ca0630ba347088f1f0c3
Date: Thu, 21 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779385353
