Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153122253FC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772684694; cv=none; b=A4JxUg2w6zNbrLDTZpBerxeMS0c4Lt6yqTNPeYx8LIcqwMNbcA/PZQqrNv0oKJn87cXGLMgDIO7AhqRJPCzCbfRLc3jIKHsZdsZkMbkPNIggRXUF7FMAbJZ1KTDQ3nm+71EEBVk8gLJSbuSnZ+NZgdnV9TCGrw2+I2Nnvm8uBKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772684694; c=relaxed/simple;
	bh=EImas+U5o+2LycdH5MrQo1OXg92GgvVfesx2/piatS4=;
	h=To:Subject:From:Message-Id:Date; b=dFRsGSq7FVpJWk923Sx/eWh0Bo8dOwYrefj1TT7CksW081zsknuVSZh8Wzcw/iimBupEAikU9BZY2U8/fMnGt3qKU457i8ngMhNn2rniNy3620IBDqTLBqAL0KW7v+Xf28SDmW7ch/XD1wN67lWXL55U3D4aDp9baWSxdgnZn7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch6VamA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch6VamA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74ACC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772684693;
	bh=EImas+U5o+2LycdH5MrQo1OXg92GgvVfesx2/piatS4=;
	h=To:Subject:From:Date:From;
	b=ch6VamA/3S9Tw3dI4F6+s/arzrxzcXlEh42TbjT//h6VWjkbBp8/nPMvAK3PCXwuo
	 K8VkVBp17TzV83aifM2y/JQAi4hAyk+apEomWr42ZTh5Wq39j6veNmUgtiU4MyzyeB
	 dm0C+jnaC1lB1jLStcUnddkXj7gKuThi47gefKX7u3zQ7/A808BQ08qz2jmqJnqDXJ
	 9G9UPU2tSZkwVF6q09QxsP4E/0eltq3WSfDLIZ14nw3IaQ9+m803yw8zhvdLhagask
	 fxyn3qUAwVuFIqrOAQrbqRB7YK95ubY7Fo2/3BYqFzJOfII2AJWEDVLRMKRqBvHir8
	 7u+RJZ0HlCwjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DFCEFCE5A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268469361.27639.14535712308191957686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6189447550497b1a282996c214a8ac11eec636ef6a45420a33a4a93c5f46081d
Date: Thu, 05 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772684693
