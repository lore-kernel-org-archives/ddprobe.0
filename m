Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDEF14AD38
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735332954; cv=none; b=DrnMS8P5fR4hs+vjayQynM9U/yXiyqqElcFDJ+Y3p6K9r+Q4H2jXajAS63CqL7C6L9kjFwLYp/nJIHWla6x/3zRJ4AQXJb0uHUjxDFQASkXJDrs0ToJN/w2hdAVshErSn4kfKeWqd061DrcpIoPU8iAhvrt7ZapzY5Jwe631vjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735332954; c=relaxed/simple;
	bh=Ihjzy/lGzjlU802vGCRfcaNm+Wqg6UuPsX33nywEYSo=;
	h=To:Subject:From:Message-Id:Date; b=R+Ujpfm++Bs1+WMktfp42u6kIc1pL2T0qmn7Nxs1b0xoQNMLO6aPDEARr+QJjl6gZXCvpLkAotHmYAX9cXxioxNmDiB3+IAaXyD3TzB4JRCZrQvPVDoCtGjY0gPct37El9O3xMxqZsi/02VcssvdSCj1OCEsVP1ZoS7fqMJZXtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKg6xU0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKg6xU0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A598BC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735332953;
	bh=Ihjzy/lGzjlU802vGCRfcaNm+Wqg6UuPsX33nywEYSo=;
	h=To:Subject:From:Date:From;
	b=lKg6xU0XU7DiPVev33fKnA14kcsMha5dGO7iOgKsZl93hbe5NEsX95CxNBP90Q7QH
	 whnm0qHdVDU+7f/J8s2yG39eYF8EZMwBWmjxi6r995RluOTK0UUTp1p91WV6mMaRZF
	 3VY03+6hyel6iXRd6VzIRJPMxxMLqGFCYsveLM3p0s2/nUmdXrnekHHPHUuo8uCNWs
	 xUCh+zYX7nymZlgoIX2hEJOTLcOOnPHKF059qKIZsKOclFBPiqrdbdZuE1rOR2k8Ij
	 R5J/k9AlWKtGALxpt1diZtI7+vVE/t+1KTSvQRldg5BUd6qZCiVSy4E6Iv+4L77QGR
	 TuCtt/GJbRouA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E6BE7718F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533295359.22389.6650560714789562018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe8370d6fbb8d3b58c8654c4d732dbec34fced471ef289716021954f3421a5d
Date: Fri, 27 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735332953
