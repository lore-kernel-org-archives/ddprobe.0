Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC4D260580
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780736074; cv=none; b=a4V99d5NueEuBTalLjC1bpUsm1I3dTOksz9STZJ75Db7wM8kW1Wjzn+szDce66lcdErJL8LzNohP8u62pYYRXyaVPkW1Qz1gZTCvcGSPS8zvtVplnyr8kgQc8A+gAQ1u1pX7RsMa7aVkZ3ihhZMcjhw7G1T5VrK+TJbJSafgR7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780736074; c=relaxed/simple;
	bh=QXPAbL3nW96+4aOACROOrBf/UoSX4iWkdmOCpvVEnWU=;
	h=To:Subject:From:Message-Id:Date; b=GaoWJQE1s8gb1e99GujaoH/+oIdI2037sTNmZsqSrVV+pQbzzbWuRvaDxjfM7ARnD0yXlQQhKg6jEafuRMIoSre95jV8LFPhgErk1xgvu05xRG6TFSQUHXEDsLRvbsXvfhZG1UCe8Zpq9WC3EO1FbS3hYApB8Q/evlrQwzkh9LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9QafApd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9QafApd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B12C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780736073;
	bh=QXPAbL3nW96+4aOACROOrBf/UoSX4iWkdmOCpvVEnWU=;
	h=To:Subject:From:Date:From;
	b=b9QafApdhwbIRhN7Ga+yUo5Sc84p4FITFgHc7Ibjb/YS1vPgh5CptSGv88quFJeGa
	 ouFsadagsSAOXf2vDuHHQ19XOEWtSbk6if0LWqlVQ1ljbpQtbNH6E2Rxp2woP5vcBe
	 tEbjwlsDc2p0CCCwnVRBDsAoYLNIv/gAAgx1Cz8vPc4z4u9sMxqb4/zaFO3UsdShUw
	 DNHVfXcfnGGQ3CziHQtAprEC72AnzlpAT6vedzk2pdr4YuSGYkbz8Jq1Sc44R4iYqa
	 E98Tl7SbV5lyDHK8+oiixkZJYS8ZoKtmu6MpKzxaGd0hjvKPfx+M71sQLt1aJaV3M6
	 8QanrM51ZLHQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFDBCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073607369.24721.7003542599446968989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d19ec03e87cf1048d00bf660d6f4f437d9760e08be4fb4691cdf1888827fa0
Date: Sat, 06 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780736073
