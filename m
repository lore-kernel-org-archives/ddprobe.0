Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB813803ED
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768242234; cv=none; b=FhsY8/WpPTrGQdJsJs/PN+oNGXjJqGKO0gF8ONxaILJjS2fF/2Fitn8F9NxuPFXFnK6KndSM0upiV0hPjkLtHIvDV4ukmeCN1EJxA3mc5EsOifafqmd0gtKLak32+APbbG8rLMVCSTXPi9/47WosWrLBPyz6P+AbyDnvv4OccNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768242234; c=relaxed/simple;
	bh=U9zzdCFCYeLlUKOAoHlal+mfkto+NRgrwnukmEASECM=;
	h=To:Subject:From:Message-Id:Date; b=guyIIHyPFQeNf15EHA6RgwsA4jwc5RHvfQunfvWvk4bzM2XGBCQus3a69yocii61xD7sHGyFCv1YFIm1CF2OqZkqP7anEUdkwikxnh5WiuzUbeJEYDwJUdsaxFv3B291MmFYC3URXaHvLEpgPBo4bENggMN3psb4cSjxOBLI6n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzMyWFoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzMyWFoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4086C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768242233;
	bh=U9zzdCFCYeLlUKOAoHlal+mfkto+NRgrwnukmEASECM=;
	h=To:Subject:From:Date:From;
	b=tzMyWFoGIgFDyZC2W6KnoxHKe3Kw6Ue6QCI2oFVsT4xog7cTUMQ8eGDoOy4c5Povs
	 6SQcH3B+rxzzBkHvfDI4L9s67Tx2JvIHKiXhuvUDWAal1ry1vCs94Mn+2ZNa7N3Dpv
	 WXVFuNE3rUCELUfVpPAx0NzutSFLdTwFnuby2g0oDhRKTiZp7ysZu5Kl3OGZ5JbKan
	 ocRwoegkAZMtaBEFOTvMFriNRkMkMI5DUm9hPossoWqNkAHQP71+1ggYmZdMUIjqDx
	 I6+AcUa+4HbUEYBqTNjmM13xRaYUMDFhbQMSiFopwezxmJ0By7oL7FaOkT7FvQ0II3
	 4RbV7dY2cETxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B1CF45C2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824223358.28560.14393416390526652393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a7fa7dbaaa1ef30e7ef75429de91c58978990c4b0238e0934cdd1ad9e39689
Date: Mon, 12 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768242233
