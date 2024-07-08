Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ECF3C30
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720460783; cv=none; b=ic1mYi2PbF0G6CJTAjDVA/EOSpHiXKqMVkoUDJu8HELvmvSs3DFkxVr9XvjDX2XWFGA0cBZPaitEYN+g5lHt4apYmQ2OvzxGVMhjVa4IoSeBDPHycdTySnFAh/YHET39rAdEFekKa7gRS9a2FjsiNUfLBy401FkiDrU1iTo9c0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720460783; c=relaxed/simple;
	bh=yyQZ7itiBRG9L8ppVr7V4njo5EiEGLFB9jSB/vl4z1Q=;
	h=To:Subject:From:Message-Id:Date; b=aIY2ckCCuUnrzDz02FEvusU5XIYGxxgJxIhH36ghS/ehGouoNvVYZTTDfQZwM7gHi4p5JuBuHnqgJGupXi6hxidFJ1ilmHthCJ4SWG42MF34q17H8R05lUxSsD4zq9nURPnUDNcYFt540aNcDFccQOiI0cHqFoi+Xa3fwMKyyqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5dOHMzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5dOHMzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A78C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720460782;
	bh=yyQZ7itiBRG9L8ppVr7V4njo5EiEGLFB9jSB/vl4z1Q=;
	h=To:Subject:From:Date:From;
	b=u5dOHMzIeXlN1NN9fobaiTHyY3L6sNUupU0Of4pxbgozMqvOkPVuqELWYUU/tNKlz
	 ph1eN3Bs8X8Ojku5tU+69N2YUQA1HBqhRyyuyTnPvTjpuLy7DgjDKvvDU8vC4jP4iH
	 wvoeeuuJ7ySrGoWy8y5hc3/MuVaifZMW2ZAaO/JQTFtDFudJnT+eDh9QVd59dtKKs4
	 hG7wuC14hiievOmNXflnK0L2A2EGtX1XK2Yta02uscWDtpjmzeOgUlmLMEPrWMz5kq
	 wfczrjqHb8K44VU7Fd8gZI9sxK2GSpJGpilxOEaNXzFb2W2OSbv7hKB4JIdvw42MrL
	 oG27QnpNKLaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C76C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046078279.10484.9747046960244047830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94831464460256d782fea1440d487ec8f5a893de67bd5abff872bc37ac70a5a3
Date: Mon, 08 Jul 2024 17:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720460782
