Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DAD1AD9EB
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718893223; cv=none; b=QTAcaxSac/t5UmtSbOvcE9PtTKtwM1NtOl+aJhgeFyN5dRpXwQSpt9q1hme5M0n48XFLMep6IPWAMeclXHzTFYYGvoFgs1iCXQuRTl4n+YPQ7ugIkS8uAN+qJdYRXwoep16duHYNLW9tnC1Uv1yG4gS5q7qXkZIYzwGxufw17Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718893223; c=relaxed/simple;
	bh=PGuuf+hpcvq0UtGbTlde4t36TTo0VhUSN3vNd2HWWTE=;
	h=To:Subject:From:Message-Id:Date; b=fgwn4x2QkoTceBgYSzD0gE+eFSsJ1MxdukS9/CpcYzrx7fFpNGdE5rnAOWy4FtuPG+i463AkF1uyHss6AJ7qkjFfClffonhX1eRJKpQjiKKsh6T8KdaShDrm9kbKI58yjpymWNLWC3+GlflelDc2cVHlce0KS1xyCzFVYCh8WVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+DF1/ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+DF1/ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60DBC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718893222;
	bh=PGuuf+hpcvq0UtGbTlde4t36TTo0VhUSN3vNd2HWWTE=;
	h=To:Subject:From:Date:From;
	b=g+DF1/axwI3M2zwgVcSLIeh+YijHiMp3aYZ/A286felm791cn81cwTX0Su8XpJJ8+
	 EZRI6WJpdx7ZFjdtSkZRySHExz9e6LTvCsZa10xCOExZ90rI4I3hK8EICxNeK1z6AR
	 Wpnf06c86ttiRlXmM/aHXlalHuJPaLndrdy/Gfh/tV0UoZ+4SgFO13LQOg2oEDUlJA
	 QPRB0UFxNNhPh/axqPVL3OjSPB4cXrlMKdI5n6p2LcvhcpCZDZ0xhrc/NBstbYvB6R
	 2/FcXS+InDqHxejwBzy/+pZAnU4rf452DRU+yLCKgnvSPgGXcfnlmhEAr2GbgvS2oK
	 HrdX8CuA15c+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0677C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889322277.22657.1488495073464399489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a15a37f080640edc417bf1edf0f1d14bb2fd879eaff0d342090c7c5e788fc1d
Date: Thu, 20 Jun 2024 14:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718893222
