Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A03BD63C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788193834; cv=none; b=Fm7SLTM3nZDLTVdvT0q+FqzXEWrRszBnKtYz90orAZjn5PzuNmQXcWbf3rsVpkSAiqhQv3PEgSdMWITrVdfRZPctxXVo1BBCFYhgQrIYWC9WrK0mrdPRfhRM4aciP7xPTI+4ysnsCSfzSXfY2C3kzPOVUTaEMRrs/VHBKM9Brjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788193834; c=relaxed/simple;
	bh=ntFYBREdclT968bVtkbq3f0zIvNhjcCMHUFVLMZrSCY=;
	h=To:Subject:From:Message-Id:Date; b=enEXglA7/vJCCotwlovyQqHmJwlk//kSDokMriw9SMSl5gKtC1mbOtPAjZ//6nIjof6GbNXtPPr56/ycw98daipBbB95NXLsaNvhbgT8HxYmlikyFaL5ZPWAqWiMDN6vZpb6sE68qo6JS6h8lIdZYb/RfaV29KzaHYL0Biu5yxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmmfbJgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmmfbJgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C72C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788193833;
	bh=ntFYBREdclT968bVtkbq3f0zIvNhjcCMHUFVLMZrSCY=;
	h=To:Subject:From:Date:From;
	b=dmmfbJgoTOF+1pTls2eafvXhiL27+LXk0azf5iUfLfGKxrL2Mk13JZKTO+Us6vieL
	 LJym3i7S8J2awXn0IXf8+9tOthqGSA5zx5wFbWMuRXiV1XOIJvHXUj4fixxAemIPO3
	 YON8tJb65pT/CnEGnr3cxkhhV+uEZJR/j7l7Ut1wmpowqBSAxasFynJGkuc85LwN/O
	 c1n52EPOow3DnQxIEa5xnJrnE7SW3wPUOY7euXDW0Yf+0tIRcVzPb7+H19u1Ur675a
	 0wk35FRf0pcBPzypXwLHZ3clRP5cqhTnVUBVt1hlVWH9S5q33DSJVRAVCuKCmb6CCS
	 ZHpzH4Eylvuyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C2C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819383370.17303.3138844102209412277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879257b75dd32db21d990375e6908c079d92fd92535028fda708e416c88cdf1d
Date: Mon, 31 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788193833
