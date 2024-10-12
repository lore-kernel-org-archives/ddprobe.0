Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0A1ECF
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728762953; cv=none; b=tGSifS9RXEdhhEqYEk05WRx7zZmk9kSbh9PsuCq/irb1xeFwgxtqh/5pF+vfAiQZRuDE22YUGtnepjV1tRmq6J2CveWVJpSfIrCOhufL7KeFkmFdFk8eCEZrsCe6ixKYLBLSxh8z7Y1KicEDM8aNV83egTLCn+oPP/lkgsH/iBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728762953; c=relaxed/simple;
	bh=1onGcQ8Kw59A/+uit6JKetqoCBmqiemnmWxL4X5gMDM=;
	h=To:Subject:From:Message-Id:Date; b=Of4Bbd3/1NTbfG+ZKAG2LBoYs0Uj67FCAl7hL+mxJ9qSogr/MBr+mTwsqmmkUWszKjzdpOLMb9H8RwEmB/eGyRVAsrXf2rDE6AWuyXiVn/1h/l3U75cgfcdHDpkUiAsi4k2Z716PTrWFC6LC+Ycp7153x2yeLOta5m0opABKDzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNe8gFuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNe8gFuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA6EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728762953;
	bh=1onGcQ8Kw59A/+uit6JKetqoCBmqiemnmWxL4X5gMDM=;
	h=To:Subject:From:Date:From;
	b=FNe8gFuGgEaa1L2SelnUVrDzfv415DKIRICR0r4Fy9XlhBuNv99boBqLtSeJikxoO
	 grZS7lEeXHva6VbVg6HYVervmMhfVjr45pi1DZS8I4kQSg+8nrP1QNQ689c/DHxBI+
	 jczp5h9LFnbgyWKcVGY2BVa8sdr3hlzhHKQIzRbDsYmCAZ3CZscPuIebBzccN+uAZJ
	 9+mds5rQR5CJwLeKzomcsxqJVmD0+5Mn5hDApRzrCa6fdXhue2tksgWS04BQ7Jok2g
	 MJeOSCccZ2SXgqCgVq/PwwAPpccIjLlbwOf+nDSrrYKK07sT0P88tU6BcSvQ07UlD1
	 LF1kTqYbZvKQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972AFCF257A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876295358.21501.2942581293103521201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554ac193928e344d8a13f70f6dcbb4e8ac151ac36fe7169a84e548c6e24450a7
Date: Sat, 12 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728762953
