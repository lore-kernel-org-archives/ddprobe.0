Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FE0175A6
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724122554; cv=none; b=Ws0Ew6b/8Ip+1obpnfbHgqLj9eE25iN50sdNvx6HdEAIQ1WmgGBPalmQYd4WxcXMie6O2vaf/ZyV5O7AxJVplwfoJ6xk38edtj0aK3jQO6TPIy1OgaxftJavW+kHGZjK8gfY6afgfqpLiHc4o1D2DsL4+8aXmKhnIN/rgYPouOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724122554; c=relaxed/simple;
	bh=QU1tF35pui+LzqldCgnxZO2PLWyjrCVseBdRhCKvAzs=;
	h=To:Subject:From:Message-Id:Date; b=DwqE3Cak5ptInKG3/7cEL/zZaXiMl56eyDMRv6hxgyXm12wOJ+mkxWYdPsic7e17YxThkRXq1YSRVzlnfBL7iiLiQZZkKP6v3xVNisl3NyIi/KDKjhWMWVnUdne609HnxUv+Ygq3qZACnB0u6abVwfSK6uFc4qaSPNvC/39M1RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXArE5i3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXArE5i3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80EBC32782
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724122553;
	bh=QU1tF35pui+LzqldCgnxZO2PLWyjrCVseBdRhCKvAzs=;
	h=To:Subject:From:Date:From;
	b=YXArE5i3TbBZcWOiC4idPlAkejiQvOW3cQ9/fjhhNA2pkjKXMwjiQ6ZYNV7/8DPal
	 hd9AlaR8d7g8uxHSYUmXHLfUVz1G4ox6bW4Z83O9H3H2EgFUIE3uVnmw10j53Ms7iU
	 xw6DQ1yOHkVw1L39//HDnYirHONIZ+6dPY8bjDtP7aLlQ/sj3ApjfvaG38eEInFCu+
	 n50wGIvSEFUxXdzUXYgeBlbrEEuaQ7u1FqY65fMoJ7Hs8EL78XSlJrbIavSI9hIhj5
	 lkfwLlWCfIRIbz+Oh+85jIoFtODYv1eM3dE08H8mGSsKtDA7qoY8ziZZz8S3ejSHEl
	 XMmn4EztehaIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A47C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172412255359.23753.1865885577565215987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb06bd1eea3af286698f962ede2b31aea6b2647fd5dea723399f7bb5434acb2
Date: Tue, 20 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724122553
