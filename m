Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AFA31D754
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727794; cv=none; b=lVhy1hNO1F+bO6z75C1fI5Q8I23xjDSd3lhBG/G3b6NrYs+pOLgRH0b0OXmPAFgBvpssVsOdg/jqMSfKu1DcHdaUfbnvLlTBmJfRh+3/hHYlg1WOfl97Wk9pSbaB4LdHjpTtDFv5HK8N+hyylWMFwdNeSz4K8Bz3p0BfV08iYcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727794; c=relaxed/simple;
	bh=sYIyS8XzCLKd19L1ts8+qkva2sF6xjHZ0T55WfwrW7M=;
	h=To:Subject:From:Message-Id:Date; b=kVXpdtkgRA5F94+K95bFgYyE6MaNVf3NGvK73iRvgcsf/c9eIwi86focIMG+4oRhSqSPl+qA9+qvvmjrPwUy0CNY47iOno+FqCFe+wg8uJuFLtE+rB/zNp/aNqkeceqpmHotOG5xKBcVMpGHa/2YyDWFS8hU3aPDGMCxaFNcMl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVQiWHjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVQiWHjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761727793;
	bh=sYIyS8XzCLKd19L1ts8+qkva2sF6xjHZ0T55WfwrW7M=;
	h=To:Subject:From:Date:From;
	b=YVQiWHjGHvgkjUPK/C6PKwV8fPJUNGOVSfb1pJ7Exa8EkATmkXCIxp0TaYTo7Nw+l
	 DZ2E4rjdEIf0NNv3Z1JCP5cFg+1VLHtgwomF6L0ZKX4leiEnzNoxSxIIKyUFiOf7OJ
	 KMLdJK/pKadljYCdrg4c/RwTx3KAK89fP8r4FpO+0QDOWErzm6NJJ+2+n+e1D5P9cd
	 S6PVkKGLIRlLcPMOzyopxQRj/gKFt6mN11ZFGntRd3c8vlCE2j9tMjdlu/PG13bq5c
	 Jf4thbRy7msgQwWbaIOyw8aWs73GNvufF7CUTxAk7ua1Wa510p+1rkgqSpShl1XeHM
	 dJdfboQO0i4AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EBBCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172779358.31697.6194800068608644593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1647e4eacc6ebed43e2cf95d80272c36b3638c2dd3bfcd3f2d8a07ed1d0f18
Date: Wed, 29 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761727793
