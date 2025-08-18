Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A0E278156
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755511793; cv=none; b=naCDizCchqYgTxs7NhPubHX2RyNdB3EdWv6qZDYq9PBobuc7jMebGwR8yARjNc3vO9afKkDBbALrT7SUnUW/br5n19fbhPMaaF/dZQtH6sVyuJgNKR+ZKhwcLJGigzzEmmLdFckVmGik81/gwXZF8ukYYEeIQpI0EcIQ2hpGdME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755511793; c=relaxed/simple;
	bh=eFXsVYH6mbxc8Vn1BOhncgQDCyiVLc5kAMq5qfBtdMo=;
	h=To:Subject:From:Message-Id:Date; b=aNWxPkGRJPQBAApL8Ob1k8yJaO7T7nzv5xmB4npoIkkR8NAK4VzegE4MWg77ZQ+q+XXxK1to59zROiNcMxsh0KhnykLpD13LsGsIyL2XwQ7AWf9sTVGdAaH52RrczKrshKw9E6SA58uoZPDxrNSKvbqwBdhbe+AeNsW7P4W2X2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfcixvBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfcixvBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F359C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755511793;
	bh=eFXsVYH6mbxc8Vn1BOhncgQDCyiVLc5kAMq5qfBtdMo=;
	h=To:Subject:From:Date:From;
	b=FfcixvBB1u/64CmYsgeNLiFUd1gKXcFxIbHEQW5bVoM6aALPgWXI2Vg6Ml/hXGww1
	 /PXGDbGmlNMm+6YHCd1xeEjHw+B7z83Uv4r8BQWFGaXAaEK98ZaW73wtwuNQl1DYil
	 a7g0a1q9N0Kdos5U9HqB6DGwclYXYFDoAh2/tFFctbHe4LDByKoqveJAVW0nni5kWz
	 PbjNGQExv7iTbDN4JAY6aHdaLc9GJiLe2goJkvv8cKUqnUFZs/lWVlqHqFyZmvwFsH
	 gsHy5Hv4iG7PVDHTxNq0wemZXipxJpk77F0efyTuBgtFPRK5EbeXuQBs2YIX2zwJz8
	 WLVUEz2ld2MXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072DCA0EC6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551179358.26049.7278086779289217474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35c3a1438e842fffa76eda8ed8cbfb77eaabc7fd5813e3258b5da07acbd5a21
Date: Mon, 18 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755511793
