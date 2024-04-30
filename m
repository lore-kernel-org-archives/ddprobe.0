Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425E26FB0
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714445543; cv=none; b=TsiYTDvXiJ96nFTz3/cxunSbp1kCfwSgKp9rXA/xtUwukK0Bov8H6kpGh2RYI4LAQeiCCPyT2HAAumkwcIU8R1HUWR1eW5HNW4x3BaTcPcAlTF6/LddPbe50d9388BRFB+S7+oQjn6CYJxRPWFfUMBzv8YvRpF5RNLw+t/jWw74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714445543; c=relaxed/simple;
	bh=KubQ6Y6QQHQrC4OBsaPiMP1qL/VKabiPU9USQReKpb4=;
	h=To:Subject:From:Message-Id:Date; b=TCne3uzIdRAC3sDVqDsO8ccHAlnDR66t6G5a17IdGVE4YWvq80ilg18H99n62CXPPzTXWO5NBq4RGhipVBF3LzGOGrQoPdCfbcqFSXlX1Cig2MWTXNLtmVM4oL1l6OXkDuLwTP8nXGRtqeGzsAnY0mgQTBY085gUGmjoF5u/TBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EECLBO0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EECLBO0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB202C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714445542;
	bh=KubQ6Y6QQHQrC4OBsaPiMP1qL/VKabiPU9USQReKpb4=;
	h=To:Subject:From:Date:From;
	b=EECLBO0uja0k+AJEmtMKU4nIaMMoCTp6rFExbAE7JOXn0d7z4mow2hpePffjUdQxX
	 lopjYh9pv6AUb6+jE595jziteqgMsg3Cgrk0r2EQx88QFOmE8k461ekdiEOUnRUeB1
	 poUN/F6b8qXSeRM2ieOfKc+tqpAGB2ia/8I4Q1dRLlVb2r18cyhDIvSpgBL/Gkeh5B
	 BitXlTMFTCXL0kAvCEHjWNRsXH8I7JplCevyTtlK4sMU1/IFFuF+dwTh0iEcop6TvV
	 IcPTmjlqaen12z+W324wRmm7ywXRAAECwML9Ir0gQFYf+S3pY/yTYAAnhsvt4jSG8g
	 CL+G5k6PxB2tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9228C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444554275.10665.3132790230370815762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52dfb20871903c755f6ffc6907f8b9b08b31e651ca0c7fabcffa2870bfd6547
Date: Tue, 30 Apr 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714445542
