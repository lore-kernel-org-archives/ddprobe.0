Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B8126B2AD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776571054; cv=none; b=p7n7nL+uKsXTmDB5//tdDNs/xaYkVVxgtqMcaRyVW4y0/XukcduEUuP3QZgBXMDbK6/B3DA2tD5bqYO2dSDXj9WhnTjJcj1n3YFGopQFxduQC5ak0JAbAPlykVHjKYZStdLExW5d2eIl5V3L7a+s7AvyFomzZkSvRt/PATuHtXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776571054; c=relaxed/simple;
	bh=M/n9D+wTsyzTDY58E15XzOH/2t3n+oJkI/y0+itwIck=;
	h=To:Subject:From:Message-Id:Date; b=VWgvjnIIs+dpebT9YTB9nUggmXslIyuXkp6eHB+I4mOcCVJgcApqNRAbxMOXQYlDnNDGj5MYGLSkySbPuszWKORaG1IcoSgM4HEtD23tqWR5fCt+ywrHcO9ZncspK5ymO553OvwtqISYS8triRkiADaIZw27U8fOq/ob/FCjmm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTx26656; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTx26656"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9A9C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776571053;
	bh=M/n9D+wTsyzTDY58E15XzOH/2t3n+oJkI/y0+itwIck=;
	h=To:Subject:From:Date:From;
	b=iTx26656FfZ3ErCTMVRv+Cb/9eu9q7eGALmYKUm7jVUuTu/+w+jCz15jUx69PIu5k
	 93lgfanmnRa0CXKg3rt3jGtWp3Gp0mCN/+fYjuf1TD3ILNzKKk4AJwxfj8TNC323Ei
	 YtJR7NJte2+cqulnW7b7h7D+5ffbtyR1YjItuou4cvp5wvBEcNHrA4xuLgUDD/bnRw
	 YjtEcj707LZUmp5zWDOHmKgJwLElSpotVL9jFwgnqcAFBTY4ZSJ8rTSKsf05q5TII8
	 3RndWJK5TkA8T2O6waO5YhoO9BoNS89xZOQrkhwZAM2QhasxWU2wX2Ls25mU51fXOl
	 TELWVBixHMOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC92EEA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657105368.29690.17684311822492571813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71917a18549d87521d3a83e9f9d3084716d733a0c5a53fc94ed85f0b13c31472
Date: Sun, 19 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776571053
