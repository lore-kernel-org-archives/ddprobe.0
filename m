Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234241F7580
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762108194; cv=none; b=LXls7qbjan2qBclQqycQnXkMaFtrsRpAez8ocJ1/Lh16OPZqjNWfKy8LUlnf2hypGA8HNR16rBJLPyabdfrgvZip2cKxHKa3my2+NfblhxnMkHWreiSMGNBx5MFy6b4oBoBF5UQnhGaLvBMpOI3/n/ODV2REyeFph1n7ihm6tFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762108194; c=relaxed/simple;
	bh=z9HnAShpegEqFqLlBN6hcr/UEEEczJl9UUikwU77CVo=;
	h=To:Subject:From:Message-Id:Date; b=itT/NeA0N3feCt0W9/f6CVtMhvUEHFcmJWzflH1tsqo/Qriy1JQw7t3ffgLYjKp/bex+oWlK1TPbAtXuYCeUnSto46P7U5J3Uvir21yU/XwnJ0W1idXP+NHXSn+pTj1W1nfe5qnvmK5OyjtXMrCKTlDobXXg/zCTLCsIcBRuDi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S//JTgfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S//JTgfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44ADC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762108193;
	bh=z9HnAShpegEqFqLlBN6hcr/UEEEczJl9UUikwU77CVo=;
	h=To:Subject:From:Date:From;
	b=S//JTgfl9ZNsC3+hHHUKcEoBgIOVq1vODCD5UBmThnAoZFdhK9VwHRvw65QDbIaZI
	 WVr82JI4crIxD0XcsuMT9k+1g18r11ez6ZpSg+nxLdGEmjGzwRAlDsIBdyiDq2cdJi
	 e0oVO+5s5iV1A2UEooxEb0Om/BlG2rRw9eA6/S7T/YOsBAmtA73Z8UvJ7KNFP4Ng90
	 yxzu/n7wmn9R2s9cjIFSfjeIqZCYHPb6y9FYKLVKYs5jBIQeGBHIQ1aAVPxLuSqHVc
	 JKICERZG+wHe4fn6XGoqq6fQtbCNAmOsNthF4vn7+A3RVr+62rvjc7AYG3IU4MH8Bp
	 MZf91EsN98grQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E4CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210819358.23192.4114500971329210345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede00ace24a45b7e3da1ba8299f7f110ae0e54cef816897dd316536867270d6d
Date: Sun, 02 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762108193
