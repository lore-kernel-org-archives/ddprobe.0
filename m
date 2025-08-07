Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1987A1F4CA4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754564994; cv=none; b=I03dftq78Pn033ZRdjkGAgrW+PyWT5jBetJsDM37PXSO/A1l+5+CQ02gHF1zGaxdgUYkqUXBlr+gcXmbH35u6Gjar0vuPgBWRiRA4jlLq7OGvIy3Vi9tGyraBOwfO9geyzp7AAxcOT5y7Eypil2Op0tEJD59/8dKMzwvB3KsCbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754564994; c=relaxed/simple;
	bh=h5zxGzgeg2+T5AtSTRZtFLx7G3j3XzZB4aijhF46CMU=;
	h=To:Subject:From:Message-Id:Date; b=Gn4HBlmMfnOSV1CnCveKhlsn2UPDH1w3la1mRHTqkkTUnZtnW/K6HxlWTKyojXHkLD5I7b4i7rediugQ97PPt9TQJf0RNaXnu0wTSuk1R8/dycWWc8RfxD48BPgc2pNZoPN84OCdpvpB6K81o78ihrDS0AFotq6BwZ8Ihao4hLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxNQLTnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxNQLTnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754564993;
	bh=h5zxGzgeg2+T5AtSTRZtFLx7G3j3XzZB4aijhF46CMU=;
	h=To:Subject:From:Date:From;
	b=YxNQLTnuQIM0HQCAeL7r6KozwnLx7PeOlBMTtKaBLHneYDz6hT1t4ry1qL9jTcPCq
	 +1CePBQVOJjUE1m/PPgePVJ7cO60uopHZo+7YD10vQ7MQNbfnmGeTqQdNuv/QOP6eo
	 B8L6lJIslWEuxgzoiimsY+I6y4tbg9VtpeXMdIUpIzhTphM92WJDe2+oAl+qooEXw2
	 Pk7EugBdAdDeUmpcBP305LSReuitW9+c4bora44i/JApK6EFn0HjFA60zN/kPnmN/W
	 DiZQjrXPtOoZAVI+jJHtxSdhrCqqGH2ZRVxpSmElscbchzbjwVi1+3InMHbcLfz9sY
	 nZeyClQRVHVfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ADC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456499357.15667.5202232155200342723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2045db6976ed6e85476e284161115ed5c8e978551f16b77d11f44eb9b782ed
Date: Thu, 07 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754564993
