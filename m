Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C382E06D2
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766157234; cv=none; b=P6ltwvTIhzIfkrKwbf8Me6ra5apvjkA1uYDz3CO6ZQ6GpoG+egnjt+bGxKpAlDPVf8JQkKDOzLj6ld22IIjquThBJJXj3A0atA7rwXmsLJozsAHVHz55Vrc5Q5vnuOA6R7hmdAi3tgckYEqiQ8SO2yFzJrCidGfM3Qsm36wtJ1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766157234; c=relaxed/simple;
	bh=xSrxbk7ZEQ6jqB9xYD/s35waLweacFJE68nGro9s/9w=;
	h=To:Subject:From:Message-Id:Date; b=F81Y6lMPv64b/WNKxFmQ0o+hFgZM6N52b8kgwdJKawyidBRdpqdGUODuXXZDcHKbt/BxA8XIyAWuQr/qxWzamtmyu/rf4oIFLeDSVlaESj1uevTM3Z6DnqMp7GHf5bD+RYWVTKnLaEfKdr22gy57AxyU6aoe8LAXrhsYTYonKh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFsu0Z2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFsu0Z2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C79C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766157233;
	bh=xSrxbk7ZEQ6jqB9xYD/s35waLweacFJE68nGro9s/9w=;
	h=To:Subject:From:Date:From;
	b=jFsu0Z2UbYfOHw62Lk3E2Kqn8RKk/1Umv1LDSe6EroITusHCgsdCdmdNHWjx4pG4+
	 d7nBDXvlz4RZC+WPT1rGqBmNf7OQzhIQnCLYza1xuGq20geKbLWWt6VQBJ238q9ZAU
	 y9EKPxHtqhUeLf8FbkB6zb0dMsPdXrhTWMxfK31FyUGZ/85u4J2q1WS7FFTMsbc1YB
	 +kNLORad+d44a/iwInwW9sTPYC6ehUVfub37TXmxZ14xsxH38b7t9yn+LUQl4d2I1S
	 s/KZZWQMOYDYOdf++7LzAWb21stmDPNMNJCibpAfeTsWneJFv5AoN5Ii2JfEBn5GtY
	 ZR8SHTKMU0dlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED4D78786
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615723358.2664.12472352321192421872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d42b72aca8a37a49958ee98ceceff4e90abe893c8c71315f36218617ded4e82
Date: Fri, 19 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766157233
