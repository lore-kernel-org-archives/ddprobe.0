Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17807169AE6
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750198194; cv=none; b=njt0cQV/qAZS0noxNsTm6O8sfzex59KGOSxAFvSDPekpx8eTI6vvcKJO01OgZdkNIX4vxZGsOp3GAgKu895Ruz35/muMxPemyJKUE+UAudX/ficmMHkYdbYgtXXFt2VS7xug5NaAzAeH2BbC34zMiJODGrP1O3Cy2uJ8yU1pMG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750198194; c=relaxed/simple;
	bh=2dwV+wDPdXv83gDOOXndoNVN6Dzvy/uXJQQUngSr/3U=;
	h=To:Subject:From:Message-Id:Date; b=nQ2KIDf9lvPUn/wNEI5qz6dfuMzKwVgrBuiwo+N2LsZPwfybVW4RfW6/cElYDUJP18UgXjLFXMEHixpZrmCc3dlHC0Fs28kZbFwNlOxpHGOX4Iu+4gPefmNjG1EpCY3Put5QMXO9HzOecqti0cyuD8yuOI0038salidFJ+yN//c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbthHtO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbthHtO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB5C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750198193;
	bh=2dwV+wDPdXv83gDOOXndoNVN6Dzvy/uXJQQUngSr/3U=;
	h=To:Subject:From:Date:From;
	b=CbthHtO8HJMkyTJjEzIY0kvHxQnLaW7og1J/rDPFAv0LrFUWQUUNlXorYY3ZNlMTJ
	 xYoyEdcTkAQ13LqjwPzSO+QkThuC7SCoESABsqN9H6J5aWqo43Bhq4gLWOkyZIXuQ0
	 PxabQ99einzRay5PoZh5qK9bqK3XhrYasVk17AIf906ghbDAfc7xnjVgkkIMXekf6A
	 OkFNDSVYSCbWRj0oygAVa2HvlRknd3Npa3Kt9zQ7OIZO0cLBrSyUaT9IykZ2ZdX0fU
	 8XTxfenmS28NzviWimYhMtkPZ8I2EK/bmPUowRb9VGJG8+UexGu6dEdZsxd4iPbCYd
	 dIp2i2OGqfrFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F7C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019819357.27947.9174177738185615425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1185272e9e351c7fa7056b8bfb91e428de7b2a03265eeb2d6e6cdab2b47dffa
Date: Tue, 17 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750198193
