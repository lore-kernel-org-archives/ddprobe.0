Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282993A900B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770288234; cv=none; b=ZvozW2Y6NZbT30JmLUW2bRu+MLRs9CXX9ZCoLn5bmmLvdyA5hoRtgP3b26nxFoqLp8hMO2qg0ZC6bJERCX5Lg4LA8lZ39jUW1ue9D4mr54PxTgZEe41w0dhNRJ0j3Bw2WvJY91o5nSBNddGNkiYIrUcBGifDQ7CNLfIh6l0OFaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770288234; c=relaxed/simple;
	bh=WKGZtM+U1TzO/lrpwg8Ux5jI5Mk9CDHt0kFSqZEPRMc=;
	h=To:Subject:From:Message-Id:Date; b=lcnnXpHLJvJLnan0ZYzEiwkiPV2vaQ6ZyMubnD915qXhZYMvtbAnhcXWSg/OLsOQm7qlOk8ZZ0+cFg5y3IKPP7ATz7gDgEohEZazicfJFtlP5wS4F5Q1ZoECWN3Gmm46sNPQ41DwcNPPJQLg1UiMyVnFq6CJQwutcysXtD3eBGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHVJq5Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHVJq5Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74A3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770288233;
	bh=WKGZtM+U1TzO/lrpwg8Ux5jI5Mk9CDHt0kFSqZEPRMc=;
	h=To:Subject:From:Date:From;
	b=EHVJq5VtP4abnTNIMP5MEcwMfUV5eJNd4jhc4xLO3+NtQlhTcYoxdDeeCtDYkwlls
	 NtNZMaQDqlsuttO42fvCgkfZoo7X8KgRHvQMtCkTjZmjsIqdnMFOohfYrtfbWRTbhW
	 EId7lCTRdVEKwL3g/5v0tXUj5jJHCVdKDU0iHXjQXXc8fUXJLyeydSifB8r9AARxHW
	 pKdMuijlTeZ4VgjK/YEQC1bK49zSGZndLCnLiMbOpyjbW2gDhPS37kH3n4uNswSlpo
	 4Nsn+9+sjQBHH8vCGhK7H3H0qLj5NoewnAE/YACeHA5CpktSRZgd4x8TFs4EkTH39N
	 9wZyo5XJWYqiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2164EC1E9A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028823365.12715.7094005216333390106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f08fe8ca7fdf865598968d553afc907b9d3df613f544ce86d2fea1fbe7110ec
Date: Thu, 05 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770288233
