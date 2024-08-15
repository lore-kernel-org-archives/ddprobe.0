Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2395B7DA8C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723733754; cv=none; b=lOpxa1nFy1BNmSXeijEcc2QjDF3YlzyLY0NRGfJoA5iUwIDdajUY1EpTafm+m44pSybX1DHe6BpyqgR/aPWMaqrP4LBSRaSX7Uef4aUWcu/31aMElkMV3yGJ9KVq9LlAuHMLXKYqbm2MdLEwXrN/LlCmEZW6SMMw2GpULmEJOIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723733754; c=relaxed/simple;
	bh=bCjJlUBn0385EEcDGN+l63HfazxojNj+0OKrdGPKSLo=;
	h=To:Subject:From:Message-Id:Date; b=CCZWGVwcIZNFnle6DoiLE0M6SswtGEYZws/ytkdcrj3ujZ9uOn20EaHFQ9iw+JEKUzi0zgUWaZE0QrbtDECXy2ZvSgNdmmHBJp/zPHnYIFrPkYtd941xlE6/6Zy1k4VfX50qvNBnRL6ZNSPoc7Zk8NkNhX2sWLw5JgL7Lm/vh7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gy+i+Qt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gy+i+Qt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F60C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723733753;
	bh=bCjJlUBn0385EEcDGN+l63HfazxojNj+0OKrdGPKSLo=;
	h=To:Subject:From:Date:From;
	b=Gy+i+Qt9cseTuGnUnqnBeUhQFH7O3ai438XXN/RIHvCoRtCJ2UIZK+rfCzDzttciK
	 RcCCljItA7ruC3Rc0fgvpewJ8MmABbKNW4gRmDWnbeXhQRIlEFnBcVuYKavBK3vlPt
	 KxgJ/0SDweQ3WfImqHJimipo4oVEppwhVdGfUKgAEMAPNeCPkz1NT3c1A7Zbo4jIzI
	 YI1BcopUl8B5IjUNJo0bm+dxxDZfTwnTWvTvnV/XSbEWZi8lsnW++WusMdwUvobYBG
	 nZPAunJydr+vUid5pYGqAL6XV4rRYlEdJmzKqCLfBMGDyEGmA5nBeOyR0/H3VPKN5Y
	 uaIb85F1R/byA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F15C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172373375359.21210.16445756857651999363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfacaeb0e6c8322b2eb770367bc5f7b937a592f3bf6889e77d6416016d2743a
Date: Thu, 15 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723733753
