Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E77C265284
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754000394; cv=none; b=SmIy/lkw+0BHAlqKkjP/PhCvw4ezP6OUCCLMtbBGtbqf1LI/onRCXwPTldtPNmu0WosllexVYxYQTzlRFy7jpjJF8iN6JiN5xnzldZSPwaf0JhkdCGSKCd3RyXLNH5onAzEVNcRDgmt6nv8+GEdKaohHyB4KMtuDBakTetFU7KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754000394; c=relaxed/simple;
	bh=gki2ks6MRCRq7Aizd6olOBvhJYCOHAVL6IxhIGsynW4=;
	h=To:Subject:From:Message-Id:Date; b=Z4qV+P57AvXzStmeCZEC8jjEXzVAr+o9q+8VKMAA0gtygUEOgMU0RdIrPxAfk21v/1n/yeUrip4eX8FGboND2GPAoRPF9yJPSxddARFghfD/2DXmKKlPVv4oURTlbgL2pnti0H6PaIN1jI7Zh1XbN+DmGNl9BrYH7MHgMdaZ94c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnVx8WaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnVx8WaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A112FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754000393;
	bh=gki2ks6MRCRq7Aizd6olOBvhJYCOHAVL6IxhIGsynW4=;
	h=To:Subject:From:Date:From;
	b=hnVx8WaZkQ9EWI2EuPg1BeuAR6QkDN7ewdkiPhdH8+NWvyPQYgWZhLkVYlTW68umX
	 KkDp/xEGjcqAgMHjqCSwgWj1QStanyvNcKf0UtmJyOUr+vZSpG4egabZkRyev4KHy6
	 vSKJBCUlYVMERrqqG8iePDznCLQVpRuOOcORRcFKvqpMMJoBWv7SDcgDJQgvRcrcY1
	 8cin6soiwqKniZlA00X8QQ4ZYReTfHhDRjRakXgH+BJjqiyoJpWqbFWTzXXH16Zjaf
	 h/Gy2QIDQ2fWT/HaEL/CMDyR9lLtH2J8UDfIM8MflEZscMSIUGgXk/NJactNIdrGpM
	 2U6L4f8Ztnw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E2C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400039358.31837.11197325940426749173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ce847e60224e6bc8c83687afc5bd41c5f3e087452b2bc3d41616a7ca8b6737
Date: Thu, 31 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754000393
