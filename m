Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4352904
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746337794; cv=none; b=dwQZpmkWMpPgVRVVRJNQwLduzVajEfo5EPFGpI2ChNQ78bCiVSXNV0DQ8mxACqjSFARvDlbrZL9iExB41t+oZ4mI452P/rwWvGdpJlk3GjJU9uBHwlGEOYPH1NhrKx9JfUxA+pXLY00gWfuXzCOsCy6YKM9jtpGgDNFLwXPaZ2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746337794; c=relaxed/simple;
	bh=JCpPS9/LZUlQ1gWrCFIkD3bbQ+lcW1NCPsK9ZKg3q/s=;
	h=To:Subject:From:Message-Id:Date; b=KsSWttPlh4d5C+ZXmHi/sdIYu/kHPa+MSQEcv2I8rScpMGCj0Jl9gq/CA/4UT7ga25Z2LW9Ja3FDlQ37gvlPzeK81UI1MI+EqA+wZY9OTRzYVyGL1sRrdX5Wmz8gvyWLojIXx9Lr8VvNuTxh2y9uQLcEka2TvAFhyforP+w7z3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtZczhfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtZczhfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B67C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746337793;
	bh=JCpPS9/LZUlQ1gWrCFIkD3bbQ+lcW1NCPsK9ZKg3q/s=;
	h=To:Subject:From:Date:From;
	b=RtZczhfLgJsmn/BrhXm6CZ7M0rsfIy8tvIIYkLeQl5UHVRWaoUGdeX8JhdbCpfSEM
	 M9JYR71fwP7ZEqxtw7WxbGOGc7ohzhlSBp2r9msbq3VCmWLryBPwU/5KXznrCeEgS9
	 UEvDkPtFpI2E3uibNym/pyML8l/6r+Yuv3vsiTDuNmEVz+J4biq+KRs73/XIivRKH8
	 lKHsgQtjFkvMw/vO5SrtUfqinngO0uageUiwx5lvgdRJx542v3mIP3xylIjFY4nxLN
	 gBvkTSysst5R2TDNuRW22Cr+Bt47nVkKtiLt5gJ06D1LfJ/RCmfcsyVeBNP6m9+BKp
	 mJZevF0SVy9LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90200C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633779357.10633.12193807975613262563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a1c3bb05cc3d61efa01575df7abaf40af72007486fe0187f39045b6389a914
Date: Sun, 04 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746337793
