Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BFA36C0B4
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770149634; cv=none; b=YDCKVJ53X8+svzv8FsuFBj+NbNdw8/hUDOfldcBLDq2mfYplF6zHuq+O4GbU7nRYjHTdQB4nRRCB8k9WIM9Ee2tbIbch4sNg83RxAyx2JIqTcABO3WwZNzQnc2SQfUy9QrPtcNaC2OAQR2w+X+3YB9dKcArnLeMwMJknKL6ILDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770149634; c=relaxed/simple;
	bh=AmtnlXyhusUpPi8ok8i9gfQBNSNvId3vfAoPqTmqzIM=;
	h=To:Subject:From:Message-Id:Date; b=OgZ2KsduttUVQg/BvSv/s1sho+3NckoaP3ddxJfjfNKM1W+uvf6BFU8GPNMi5/O0OSvWdNRiMz9teR1rVSpaNfND7Km4XqK7unqT4ldDF4U7bWfw8RIF3y1e3Ui73pIj/0X4L/eFJfN2563SK3VYiuW1hoBT86krHoHuc8wUeLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWhsTi/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWhsTi/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B862FC19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770149633;
	bh=AmtnlXyhusUpPi8ok8i9gfQBNSNvId3vfAoPqTmqzIM=;
	h=To:Subject:From:Date:From;
	b=lWhsTi/XuAm1RD95eNKjDQDCT7TeBq7Ub4xyP0ih+t9y7rPfQVXpw4hISaOyQEnLe
	 z4GD3wmojYJHNDMKAVcdiWVweIl219m+qz7NwWOkErXYHDdtuXM6PfPPMw1GnmRgLJ
	 E+4QsT9gCLwct9rUQUtntINGDUg967HMN1abz0h6qqCXIbV2qSvp0HtzoqupThcOXU
	 tfswIdYF5YcVbAGFaBmRhHvLx4+16OUkcFjaNQn1ZsHE7fpORm76kRJZWZnPnPV90n
	 W6BcAtPzEedZ3otVlmyBUx5x3VFoKmj4Y3Df8UWqFpjU/sqMWATT4NPIL/0Yauvt1A
	 gnQxjnVmXUy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FBEE8307A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014963364.27036.9335647215332137931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd79302651b6091a8f68fc4e4cdb1aadb42a485b47709792d202cd15d8862bc
Date: Tue, 03 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770149633
