Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B942874FF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751827794; cv=none; b=Eudj57sizIAvTyRCbpvXQ7CFcv0aJcOnwUlnPWS3kCi3hU+mshFP25PXDkmZUpxdVW24mNNQcpzw4kmiCK8sBd/FKLleXHzMyGsGOkear8iF/yHi8I2U9FuDAhpXWo4e0G8thbs13GggykZfrJDxvE7II1WjpQrL390Q3TTRldc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751827794; c=relaxed/simple;
	bh=hxFDIY04eQ1MVFsg+0INa8qSfbpD2BwfcN6NVX2c80g=;
	h=To:Subject:From:Message-Id:Date; b=QjxDdAnfgteMrKUmTtCcBCYtTKmKYERPkolpa/0YoUGaDTIP5f6e9XuVFF8S3MRorawiUlu3Smijj1hT9fJu7sKyKT85jIFUOfwKt/YtluFxgcTCpIXuRxUKN318TivUlzeJ2XUz2KG9x8ePde5pRHaCQ1gJkQo7iCddQaQGrpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UL4WUYV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UL4WUYV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC22C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751827793;
	bh=hxFDIY04eQ1MVFsg+0INa8qSfbpD2BwfcN6NVX2c80g=;
	h=To:Subject:From:Date:From;
	b=UL4WUYV6KpuU5JXI2mMkHnzxofvvKXLrWEgwFD7joRIzWt48onDSpz8iipGpP6gmy
	 BMDYH9l/JLuoBm+GmzpEJlpe63lXw+pgMMRROUrOBOBRkJPjmblNw1vNvzCtQsTsmx
	 O2om+JMNpdc+FMrKvA9ccapkBFWx38vIfu3LGJ2/lGKLcXx2z4oDscnH1enJIRi6oE
	 Sda7ewRRCy3qnV7dXQJptnxf2Qc3x7OKBY9axe7bmz+Ge30W1mREtBe4qwqqH8A2L4
	 HBu/CSX9XwrV2nB8kOBXioSCvrDI6sok1YlcZEn5toiYMRj0cGPWPx+9YIRG3l+ei4
	 FDnYscrL/JuLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF99C83F09
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182779357.12974.9140471815379870064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782c477efb19b15ad96e7b9ad70d2c1f92d79a0d0098260033acbd42d48d3014
Date: Sun, 06 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751827793
