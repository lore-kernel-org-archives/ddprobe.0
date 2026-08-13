Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1A1299943
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786581634; cv=none; b=fG3zu6P5/vNNF64zEHA3G9vsSOF3Nqxa6IzvcuJ/xVqJcNJRMi/bvAiZhI92FbOywLVFKhfsPizenPBXNQ/ptHjqO92YirgByOOdkj9ynhSX4wrHm6MqwHct1QpbRwMbUnm7zR/I3cZYFfUXvxnMfuNPG0SgLFkNI1uyhIxCaoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786581634; c=relaxed/simple;
	bh=Ww2qz0ry6DCMhArwvtFRWVlSV+JXQ96mvE/NYZJa8ro=;
	h=To:Subject:From:Message-Id:Date; b=in8CEiLqOCD06s6cNymwgEG0Osz77vpJ7j/jSXdI2XweHy6GRKwtt8+Cu6BpuA92OwDzfYHTILWbN/xsZioPwJPE3JZoAbNRTESL6wrIW98AOmfV69fyxqpM0UGkYrv+uwQ458fNCTUIlWIC15BDbeYE2GcCkgBA/Z2dRfeRgDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeiBSb5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeiBSb5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04B7C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786581633;
	bh=Ww2qz0ry6DCMhArwvtFRWVlSV+JXQ96mvE/NYZJa8ro=;
	h=To:Subject:From:Date:From;
	b=PeiBSb5ac2E5xBKTuSAG1F/8cUSZ++nUXH2Dr4v4R+CzIISuiXen/NoRG/FGz4zjY
	 A9qWzbtXznXntckegeNIZjYAksxTmo+GMdkV+8feel14bInXipdo3xhpcisSa57FwN
	 fzt0xj8omniGV6b70yHoyup5ayckC/tg9zJaITYn/oTDH+L4KsDBwgkjdmej+sgTg3
	 E2B1wTNeKAVGDGVFJ9dVkbb7+UJGVi6kXffFWKv3sOvO0wOhNlY6et6I/bQXhh8GcH
	 /eBl8eKdKsDhxFE/tsUNWzVCedS3KwdfqzatQgdlaTCafz6aSJs5AwXzWvXEgOw3it
	 rKsHRmRHB3xPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB96EC5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658163368.6497.12532715881326953933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c4de4ef54b150db49e4e74a7bea719e2ae7ecf3fd9e003fb5497ed5cb3038c
Date: Thu, 13 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786581633
