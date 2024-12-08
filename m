Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3962E36B
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733625354; cv=none; b=WnkfO9NYbKd/ybz3Czd1ALGw1VDxFjBcgqpX3brBZdF0AsfCvtDaPAGzV4Anf4sHXzthEUCWcKCA2zSrjex/XAfrfVP+5YNnQTlalpGMXDWmy9hFBJ95v/xBupVhMDOt2HDNeT+5kLyBiftLVpxhoW7VO69AbXyaB0TUQt2o7Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733625354; c=relaxed/simple;
	bh=7051qcWwnAdQ0RJr9h1YPgpCGtT4qWFLnBFzCDTRclo=;
	h=To:Subject:From:Message-Id:Date; b=sV4OD465d49zq3fCk1IXWk/c6svsvyo9ldBteGJzV4n9r4ys3QiU+vb8kXFjSoYwMWLHfhdwhv3QL+3k9nF8yG9LhdQXv86WnkaK1AWm9xjuFUe6uYSIAvypY3ldkn0dM0de7ZQlst37Grcv9U2rYICSrALVmxs242+c3mYhLLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T12A9oNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T12A9oNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76FBC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733625353;
	bh=7051qcWwnAdQ0RJr9h1YPgpCGtT4qWFLnBFzCDTRclo=;
	h=To:Subject:From:Date:From;
	b=T12A9oNMcJ6WPUEugeYGHIRam4oeTzb/1oEgqNbYuOF9Rm/PuKGuJ3VoLYo/jNXWR
	 gSeUaKB4X1ruc4FxqWDUvgY8uEZ3Qc48uGlBfRSJK38k5pSReA6KOY/eYF0ZfUw1DQ
	 viWh5oPurw0u1W1HhEtQiboFhlglDC+oGWH4GncPWsLW+zJ/FHVlrPSadglA58BxSb
	 KegjENQTYPf+DRQb7DO1M2hz7X5yaFOShCmyayDZNBLeOtIIECFoqyX2+a7L5sqXJn
	 NXfCmbwcBh68TW+feNkrQ2q5klHaq3nTArw9W3WeMEimv/hk1DEGOqVEye+rX/uS/g
	 jdoy5QWlmN8/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E0E7717D
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173362535358.12343.9629911888367355310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16d092d778782d09655dc6cf0f3f8a59795f0479402fece000b1dd15858fdd1
Date: Sun, 08 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733625353
