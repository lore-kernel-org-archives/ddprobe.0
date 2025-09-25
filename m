Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7B8246BC5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758844194; cv=none; b=Q2sjrfne7RskFa6TmsIg9QT47nPH2gNJVAWJwjUu/4jz5KSjnsuOj/MwKQ+S2lmRxHZ682Vm2/T69333/YexBu0xXkMVSXrOQIhU6E+DPwQEh0Yn6hLZ1JNRAk99bG40yso8NOfWjKgnD45FRO+p6DF8I9UnF0XwxTHUAcS/k6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758844194; c=relaxed/simple;
	bh=f06HoLVZc83FtTIM2zMWiMQ3y9SpOvpkwx/wjJf2B90=;
	h=To:Subject:From:Message-Id:Date; b=DhiuFgjHN5uEOWFT1AcrccM/O6D7ANV7Zywj+QUpsaWUECm4gtfxaJCeld8dFEiBVOVTossaXiXEb6EVFTh4kvcGgPgj5T7FTpFYIVDYRUEAXM233rPnkuc6gxqvPvSkBmfSX0VQS7YPihE7U0mV8WUmAdqHp1ZgGRfpagGnmqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7Oj+ryN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7Oj+ryN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758844193;
	bh=f06HoLVZc83FtTIM2zMWiMQ3y9SpOvpkwx/wjJf2B90=;
	h=To:Subject:From:Date:From;
	b=N7Oj+ryNJBRS/KbX8S5VWk4xXsXr2+vYkdFLiln2IeYwOGcNczbQxYoWx+U+7UMVY
	 5/n2WLS1cdhGv3+SXWVeT81fFGs/ZLhtl7fF6W8yNrbSZWDasi4Ycvlhn3D4qf/IqI
	 fJDAo7kpFv/6sdy8ycT1Stq0t5wnxgtvndiLWOqFwJiemkd3d/4wziLJu9JGeLthrp
	 QBJM/ZriaeDC6uXMmhrwOgrXRa/Gt4TN4e+na8PO47fByE3tZk2QUrGV7mevGgxlLI
	 H9Y2QyWICROBCywU1k6azhReALSBDwxwfIRBYIT7Is3EpuRU8kjOixl+8uLYdTJ48A
	 hLgMsMNAPWsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917AFCAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884419358.20915.4382749993119354458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed519a62bc749b457a800bfa30fbb01297633f6617165809983932dae623bc0
Date: Thu, 25 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758844193
