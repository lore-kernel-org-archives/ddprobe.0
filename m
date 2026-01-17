Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A62F331A7B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768642434; cv=none; b=b6kMYUHUzchi1vfeBRWcYPl26Metrg2OYdZ+CDo565xHqhr9uDiE5RBo9aR/M5qv22ttOWxjE2YDThKXWX32bULlFlaO+Jn4OykBcfz0A6N12hVcng/Jg4I8s2YdWE5fIfNqrVDFxJSD6+i0pHdqlWRq15CXQlDqXBSNjJH9r9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768642434; c=relaxed/simple;
	bh=a825n3f/Ck7TokHajpbkcizRy04y5vQaXZTyGFPIdH8=;
	h=To:Subject:From:Message-Id:Date; b=eU4JlYs8RkCKNlPvg+WWYnBGfLKUk1qc7ceG0gUtdjFS34jfZ7BlQMHYL4RZMj+ol2NM/SR+Trjyukz3UGXIgJ41vPzl+nCazuhx2WBytaVlak0Pw46Gj+dcLaNC6+5McSGBd2FAn/Qr5w0Y8w7LUsEMSmY38/mk0EFfOfHFi4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWINGCgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWINGCgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4454C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768642433;
	bh=a825n3f/Ck7TokHajpbkcizRy04y5vQaXZTyGFPIdH8=;
	h=To:Subject:From:Date:From;
	b=SWINGCgtUkVZaJjyhqyT/s2BGn7WneTfulroODGllmR6ZKOSqdAUJGue9OvV3NEEP
	 rZ+c4LK+yo9U/2j3f9i8FWeZFueiXM7aud7HFVRC0PvStH47/IPpx2MwLdq9Xq2/Gs
	 2PqUJpPIlMG6VDC/YCSwImRTcU/ZsJSEteSwJmbSLsvsFzB/2c4ceZqfseR6/WShZd
	 jqjN1jvmo2Mc840kMtzqsw7chT7kDfgSMO7fNK+pVbjn7TqU/fkkOIo54XvoBPjVXa
	 wNE0WOI4KOOM4xZ0zEYH/DjkhtDxboixDEsiHTXV725kbSiqBdC3oU0r08j/Gbgz+h
	 2koisrQevKrxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92329C98310
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864243357.23484.14363635556775785241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d051c0fdc6932d98c2995a06312ce6c25bad2975787ced1c080e7d1a5d511f81
Date: Sat, 17 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768642433
