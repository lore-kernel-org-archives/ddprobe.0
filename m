Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB552D739D
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770269034; cv=none; b=Y4n9R24+4UXRbmWVI+ntM8PDvD8EmLBIYear9/kEL8qu/z83JTNLI5/fbhPkwfZRvyW8Rg4RBm56C+09cCgowbeSzoTOjjYnA7GQvuoRT6WkdVofNH5NKwkNRMdVGcx5xI1Jdv8Q0sqRXmXXg5itIa021FP3Dan1AVqRWqczF1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770269034; c=relaxed/simple;
	bh=XuEUgmY8LHCRExsRQ1FV0s2jpoNSTFKN9YtdDngRTTA=;
	h=To:Subject:From:Message-Id:Date; b=MFV/hoYSErMfleNsjHcdaPDA3BwFuaZjkCk83bnDxUD/dGHAYT+d5KqtglnRrmNoO9nZpQ7j/rCg74zokWBN3XFOWxgZm0qjwJMznyyUgCo7YXkCmBwq3/dzfQFhudDgNu/36MdjD28hJttArsHG0lUqwVh2dY25SkD1e4pdjA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp7uYYEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp7uYYEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770269033;
	bh=XuEUgmY8LHCRExsRQ1FV0s2jpoNSTFKN9YtdDngRTTA=;
	h=To:Subject:From:Date:From;
	b=lp7uYYEpGDEG90kH0CTrlB/cPtSSlZ3TH7gEgVMblgd4oxQY64qYrvh4miDbVjjGf
	 tVlniHsXl9dmXBSdtyI/u7w07jowobQ4FSjcgadjPPgbjUDn42HC/3SOCmVhiSYXrY
	 RgvzVEHC9P6QiBuR5+gkHwm0i9vOWARt92zrfZMozCNSNPLbPy6F4Mel6ozPK8c2TH
	 l9K/A9Cla9D2VytY6TryUiSHUAkv6mccI4o5+uIdYXFTqZRd0/k0zwjENlp/l34ADF
	 7cTRKgxnp/6s6IkWxKdp0GyfLfLK2WY+0qNIHysWak5TpxmBNgI+t1LBZqVQ3oxZsy
	 t4pzZCWhjA8sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A1FE8B394
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026903360.334.1184230086613523505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a28e04b122c62641d49c26ee639983e282e09c42fd28fc838b9a31d788a497e
Date: Thu, 05 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770269033
