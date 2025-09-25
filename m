Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AC438DEC
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758805794; cv=none; b=nFJJpmjpu/5pu5XIB4TzJxejAiPz4HYI9Rlk9M7luTLxB1kDkx03uy+qBRdSvW+upN89S7GfSkNDPL/yvHH8MsLRZgAFOyh3wIJauMQB1R/Ggwy9mkl/l6eoNBCk7ObXvT651LzNAj8CfVUDyQRseHzpk7V0cKQkQ0c7SdJSihA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758805794; c=relaxed/simple;
	bh=xurmvY5MqNDUS9w5IUi7MCFSKolbUTUO9g8jVxUSg/g=;
	h=To:Subject:From:Message-Id:Date; b=D63GAsIaviuAXy9UYDoPESpS4ddV8vV8gZM44SZlrjiWjGuh77uWaEBNVpoNIsbZv+t0eTTPXWtcmSgPvvlDft54OcHxQFIr7gapM852R90IqDwQdmP+CuZubIUGuLbwBER8jzDUQ5uTmnptoxE6u7Aa0b0gmHSH3FYQ8YafWZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rP+7y3HH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rP+7y3HH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE96C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758805793;
	bh=xurmvY5MqNDUS9w5IUi7MCFSKolbUTUO9g8jVxUSg/g=;
	h=To:Subject:From:Date:From;
	b=rP+7y3HHlHJiKyuq9Zl3y7AuG15EwgMxRaIax2t9XSPqgxRqQ8C98kWzFBNY0NeWT
	 CvYnYUH76gkzClusE87F582rxT2lNI2ZuVWZRY7I6eFZKJE+RTBJNFBQIgTepF41rG
	 vVN7Fr3otCqWU85bv3QWF9fzE2Y6BT5kTNLrS15ReUJc+x1ZES8JG5s0Jpuzg7bNSx
	 bTyvJ/sZae1L6r/XzQii/5LByTV6aY1kQjKbDt1WWMKTiXsXoz3B+JRNmaJG7Ce5N/
	 obkVTrWJ/q1lLW/TUforuRGYKawE6eUSPfYw3qNGuMY0iJhY3RkIg0BthNay0Jd4Fa
	 LtjCi9utWm2uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9091BCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880579358.19131.6450594973491385014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f7819c133f0c1c5c3272466a3049f2eae7aad7276b1d2f5b38248e78ea76b0
Date: Thu, 25 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758805793
