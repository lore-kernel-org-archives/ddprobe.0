Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A2513B2A9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737155754; cv=none; b=VIWkAY3aVFym9sxdTGwEWOdsu8eE/tTcDcavHPXwkdORZnXu7aR1tHwlPQ7v9Rsaxyr/ogrWpyj8hVrQz5dmYVqHbZ2Kv41a4xYRcqUVS9Fb4L79SCZR7wGmQjTG1xdnZ7rdLqbZHM4P4yU7r/ikutCvDuLN+7ArGmigUx2book=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737155754; c=relaxed/simple;
	bh=pBj993JhRPneSUN8C8LkLFq71F59uxJkPfrvghV6Lrw=;
	h=To:Subject:From:Message-Id:Date; b=fJt4GYZj2Qgbyq3tP/AQEl460CPK9yKi1algzreO0gllKTkCAJIr8iltLPlndCaTGapf1MmlqS74ee+2/Xfyt8AOXVNSvPcg9tYoZ1tgVrPACDOfC8Hz6Bio3yNT4EMouTjN1OAHdQlS12BFHZlkqD6/+gYGtfMowtR6iBR4dRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mL91kHdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mL91kHdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396CC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737155753;
	bh=pBj993JhRPneSUN8C8LkLFq71F59uxJkPfrvghV6Lrw=;
	h=To:Subject:From:Date:From;
	b=mL91kHdIhYaZ6Bw72hEu0GFb2IxlOcmMcGInoxVKGWx2A8Mq+/48AaljkXaov4qcO
	 BrLIb1K6vCbQ/Ts4SJ/mjBV1Jayu+00XrxaS2sY3/KNTgPi1YV4KL2aC5j/3jJpJ+T
	 1zC6oiUe2qTALLXCrLp8UwLWuaHXq/PD/RZKL7EkAkLrNtzCX+cLs90WrznZk8zkc8
	 O4Su4kjPTAjQUQpbVHoYnRTSVBpDeq85Icc+x/wZYntCukCOqtt6GJSmJQfxwKSh+O
	 dxakntwDUIVrEox439d7FARRja7RWjagoa2stLFp4wDR9y4cjoSmJrZR1P8iHxOm9S
	 597hMqperk5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201AC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715575359.26305.5743992794907518136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c42413329ab54c79546bdb7fe1c9755c555ef7681ad10e1eb2b3e526e691f5
Date: Fri, 17 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737155753
