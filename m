Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A34F8F6A
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716728663; cv=none; b=hrYZ4LNTG9Gs8bCUtX822ZYrWlbZHkSnYBu+PBtEjAxKVxl13SrmtpJDV+pSMjCJmDAKJCsyyFEQkdcfoGpplv5AKh8BpjDkEeK8DYetKbUU3zW4tLySCNovdVzCAV1s0CzS31RJOZVdp1GLoe1qPGZqXbEdvYQE0/26y5M+g1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716728663; c=relaxed/simple;
	bh=WSlOJVFXq6f6tdpvPw2CeBe3Niz2I8bYnGv3ZQbpjBM=;
	h=To:Subject:From:Message-Id:Date; b=HWP7kdpCcU1jwqFIJ1oDxCkycSwsHe2ytyZ93XWhV2AV10Mz+FPqqkh8M+kRgrQzwh/fxI6N77u6W5/dPFBwIOkzwC8vVCTK6tTt8J+axHuElTMeFhyU3+a5ZYrQ0gI6Ipzi48pr/pRSXnJR2nhnFCsvwqfHbsC+WoZ5VWrseeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVV8qDoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVV8qDoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCBCC32782
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716728662;
	bh=WSlOJVFXq6f6tdpvPw2CeBe3Niz2I8bYnGv3ZQbpjBM=;
	h=To:Subject:From:Date:From;
	b=DVV8qDocLerV2FKXZ3YRYuanT2OnsVAGVQfVO1LYgihwzaA9BE2vHfV0dK2iXgX6M
	 gh3xRfxABdzlesGExCoouJ9ezSW8Tqmj28aAcoztWk64N2KrAy6AwfR10/rxocdhtW
	 CtPaibZHpWYzC0MLvfVedzjcu1DsZp1dewKWTUwdBD0K8bA94JhL/l7m+nYYTMeT9h
	 84d/OyRwXix89fl0FA75jrQCWyZqsxrOh9Ei1MnYgvk4OKKmToS2f/NL0pZaglzjM4
	 kaaBPO8D4r8u4VD8BWbZAFz3M1affVF9rpiBw4QO50unUDz82I5wyEB+3hciiCGFaS
	 GJQ/0fu4cTSUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5263C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672866279.32614.3948224983077003907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f398f73638919f8a50866864a6f986b4166ab8ea262cd518efa3f6c073837a
Date: Sun, 26 May 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716728662
