Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B2A2D948A
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757625594; cv=none; b=nyxFDLIgWGz95Zcmk4GkQYStg1Bsr278kvkVatzTXFEIPu1C862yqXJcAGWoxm1g5hqJyAveGrZ3/jGmVE8eS1NPF3xMd72aIl2e6/CM67AoeulB8yzsJGKTJNMXkwa8Os8a76hh9pSzh3RDaXI6RsPij3g22IKp5Z0sypFzO50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757625594; c=relaxed/simple;
	bh=mJIAx5G8fzw9ox+0heOg064HZUB6yXqvnpoRbD/oG48=;
	h=To:Subject:From:Message-Id:Date; b=QWlMWa/XJANMv837UQxpSFCQHKdjAdDC/SY/ZXKabKoGC4Ak5lDORrrshiDhNaUSwMax3jr8F5IHtDU+Zy5k7FDa12ec1YiP3Cqy2j0kZFX2mXyhFgieRLMemqr10EfWDbXGbCPCboURAw9QUehm/NJ++ZQ1dV60d3ekHoi8qpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcLJhL7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcLJhL7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A411EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757625593;
	bh=mJIAx5G8fzw9ox+0heOg064HZUB6yXqvnpoRbD/oG48=;
	h=To:Subject:From:Date:From;
	b=WcLJhL7KosCxfqtl+6kSc0FzrNSW2ugkeHw4+ojACqJ9krD8pTRaPURr+C17DopGm
	 bgunEemV8vOUZqc0a7QKR51ny/woTQWf7iTyUCxGrRtkY/cly0KTjz88/9qMf0Pn80
	 +1GUB41tHDFmPcpWtKeuQqIj+qrydCf17livEwiUPcP5rwetvzVhyxBtJpEmKZ1zyx
	 0n8Bi3fdrYOO3rm/shV01OYCIr00LjfQlWb3dXPLJdrQAlVPfXmi7cpsIVxfq25jiM
	 syOuONKKKpP/Z6lDoAx07TsoOkudt9ABXPtFfwgMitWZeAGJjrcFYG4ZsvjfJBGsXH
	 Hk1k8DDJk+8tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951BFCAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762559358.32075.763155680182832456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edaaeee4f41a31cb7f3c18b895e18aab2359950c58eb11edfe47d1d8208f07a
Date: Thu, 11 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757625593
