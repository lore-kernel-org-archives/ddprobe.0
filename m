Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3031078F
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739587134; cv=none; b=O2sTda0Y4SfTdrx18BN8wcm0ufYQJ9XWxlc2wpFM1sdKsf0GaK2iCR6OpBzFZAOHH+WGo71WnGmUlZanMhS0CgTipT8sKbqADfh3u2QRxAvHRbQu8Gp2YI8zpjoTXF2EY1bTU0Q7SC6nFrvqDU1ruKSA707FzkNq5V/6F5Io6IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739587134; c=relaxed/simple;
	bh=6kdwYV0nAjoAFhJlTMoTHi8ouAzYzMfBXAkaVdCH/5U=;
	h=To:Subject:From:Message-Id:Date; b=ABIk40g4znN6RNmBWXdKQMNR2kPOpTgrQHeKQlqBe84LDdyNVG6NA5nPBYR74i2/CJ65Zye99sAnHchRVpusNh823+vhYIzySnU9IIcKV2l0V1NWhtFQ9bM4FkO3ojwKIF6lrQ4jd9G7YJJ7hQDQ3Jwino32GfMg3mGVz2lz3Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr/6/5lT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr/6/5lT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A01C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739587133;
	bh=6kdwYV0nAjoAFhJlTMoTHi8ouAzYzMfBXAkaVdCH/5U=;
	h=To:Subject:From:Date:From;
	b=Xr/6/5lT4pFgb5vTe05Tzvk7c1zFnCE4N6GvzO1IwgdS2bm9rNmwRXbR/g1U5Jka4
	 eH12R2mK8w9+oEF4I20vZs3QAkZa1x2ROdAJTEmISqTedTYfTvTO9ZXh7G7Ic2k23a
	 tOsaIe36bQjctmv9/Pf3MvZZ4saTWDClzlUsGlVwH9V67udAEVTnHcthO/kwiWCMwj
	 YjBmtZPD1lnDOt9hPL2CKFh0o0UwlBK7ZuTZKi4t/qq3YXLnid54eToEo5jX6hl+as
	 UKiJQRsbf5cBXJhx8CH5m/4htvpAPOr523iGCFpPVMY+f7FrlwbAMcjLz98GIZdzxN
	 KdsVJ0dbLmY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9371CC02198
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173958713359.31211.4756597197469005823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494324fc39d55a1907121449ca370c73f5830fdc6117b9b4785327b888f7a5a9
Date: Sat, 15 Feb 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739587133
