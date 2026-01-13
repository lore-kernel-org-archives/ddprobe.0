Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B26363C56
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768287234; cv=none; b=hO7kaHYfWViEWaidQq782yQWQgWxiaB+DfGFOqgTQOc4bPc5rES5p+cFDQtqZOrZ3DWbUhZuG7UUyjHbKgcpmvH71OQUMKS4pxMnO+ebN1edw21Nrxuumhns0ld3V6FhITim7o+wXs+giQZ+e590ZHWQGBOGgLwaykfQfqFChzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768287234; c=relaxed/simple;
	bh=aXzdg22knbThXG/fK3beggJJyPfY6mZv0flqYK2CzWE=;
	h=To:Subject:From:Message-Id:Date; b=DjcfZOj+1Pr8ArC4UEVbDUc8SrglhAotHuhr8tK2ZIGDKKm9TO7AIsdEnI7IxhhnqLn+3XRhQy2uomV5nnwFjljhmpgHIoCiTiG91dFRh1didtxSNcdBLlj4PX6irUVkkwiuW0O2dYKPp1ktUaKfyOYePI8JIJEU4XbapuGwt08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3Hk3dqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3Hk3dqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4709C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768287233;
	bh=aXzdg22knbThXG/fK3beggJJyPfY6mZv0flqYK2CzWE=;
	h=To:Subject:From:Date:From;
	b=K3Hk3dqvhQF8x1TkZkeOYAa8569kL2g0k6NJbhEDDTRUjdKGlqIl+pd0ZJ836ew6d
	 vtDUNWxlh4zpNXVaz8kARBHL4T2cAxoT7zLRbQk/gm2t+bdYNJm9/uunqURapj15EO
	 Qt1di95F5foYw3sbw7071ouqlpDygHnXNHuMxpQIR6gEi2NLtdrcKFQUVxCcOr7P9x
	 /goyjSq7q3Nxyf9mUWVihLCaXZFBQWByyILoj6JxtfvVCHRgrV615bpsx43tUVg7uz
	 MRCwZUV6XAYA6mCqIV+TMlIqck4ttXSPvhHwr7ZNQFAlpAjKiYXZu0YGyPGdvJ8B6w
	 1ui2uqeLoPhaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92793D29DC3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828723357.6379.17952440094497488933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf72351c37b6737d2936f5725527d4125ca346987ad71b86130b4c2e84ca251
Date: Tue, 13 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768287233
