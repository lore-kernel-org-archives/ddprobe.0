Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B3B334C2E
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783480114; cv=none; b=gbIagdklnWJRaZKB6CLvIYGjak3n9HaOaRejxx93Vis7CNRRqGrKY4nojmHxwSvhfmg1PP1Slm+qBgGfQidOL2Quj6cd2SuloZdmTWQnxLdiwxoNm4hAUyAWfH0M2AyA1tpE6TDi/TOyy4SpsHy09ZEHJs+OT8hYNg/Zod0thjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783480114; c=relaxed/simple;
	bh=1pAaA5AFsJbIgEO63xBe/H6BIEArrpM6cPTgtpJ137U=;
	h=To:Subject:From:Message-Id:Date; b=FVYbWkMOxrID6F9OMew938PXn+dNyeWc6EMX5jdk6vysmyfPRSM/DzHYwKST6pL/i/04oFTe7fZNMcITF7jBVOlsckGYaAcsUqobhXa3w0myD/9+sPEUaS0TUadA3/m9EEeImV95DgHYCdYeT94ZKH7p40kzCvVdc0BEU0pkaYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aj65DjGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aj65DjGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09D6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783480113;
	bh=1pAaA5AFsJbIgEO63xBe/H6BIEArrpM6cPTgtpJ137U=;
	h=To:Subject:From:Date:From;
	b=aj65DjGl6BQWsANeW50Ry23jdfxSNZNJ/sfAh5/s0m8jEWIYKtvDqzbuBntQrw6Gi
	 E2D+L8hB3MaMRjKjpciUN2+yTrZlIRIQM4hOedrK5O7Sa2ykMVmvRbaZBLmnoV77Gp
	 gDGy0HACzQ429pAsJB5QGGMQycxYASxuX27DXol/2yPSaEhe630AFdreGPOswZKQ/r
	 VT35XcPWghV2tciornu3tl54D89GA2nBPmqVjptRXOBb6cjaZUz1k5vnrz/ryGrj13
	 l5F4xfslrU57nVu0Io6V9CJqa2C7a/Chyx9aKZhAM7uX+lAduqnM9P1LnH6d5Yx/AE
	 uipcgb3jdKHIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4BAC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348011368.4819.5707968756051721912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0496bf7125d8d72596026faa179abcee5f6c3f0539c60ca2698c3dfc32b3b7
Date: Wed, 08 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783480113
