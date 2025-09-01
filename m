Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C827E320A33
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756746593; cv=none; b=H2nzH4aIKKi1Vt+A7qAN18bGaQIjhUF0H4S3MV1rmhJ1VnBJYpmvw6Nxp5I3PQV8odl1Ma2/zMGVxIzmN6Kalam0gsxbO+b0sTRIFalS7wV7T+Fhzk96I3oi1QyHjp9DHAOSixbZX8hGuKichZ4+yNrtm/n11Ebn0JxqluIQx7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756746593; c=relaxed/simple;
	bh=hg1Vvro3CgAwzwOlt3PD6iNuVBLUN1oUHHRcLLWydNc=;
	h=To:Subject:From:Message-Id:Date; b=MwGzEvaJSA3zW0/4GvznDyzn6cb1Y5TfxFTIJ1AvQYRpGgbDdCjJpTKbUFhEFTMjFLGhvkylV/mLBx8k/z227gTf+BrRNq1x8Xcq3iPqNPkDzxiJAUy/sp63JYTqI/xWy6U0yZt0sYY3+oB2H5wtE3XtjX8WkYPCCKXmSh5hZyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4SdGKgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4SdGKgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FBDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756746593;
	bh=hg1Vvro3CgAwzwOlt3PD6iNuVBLUN1oUHHRcLLWydNc=;
	h=To:Subject:From:Date:From;
	b=i4SdGKgqmlzkrtu1wqRcU8Oo9ITPVv0ZjbuKJBfnokovEpX6pNVSp4yjnTvE1IkVT
	 8DJd/y9OtnANo4mJ1/uq668aJn/UPmHwp1rxw2trN1UpEtDaMpiHWyDJgxPZlcYocf
	 3cmc3lyZ6ClQWNvgTz2x0UiFGPSiB6fSEAG8QNpk+Ab7wz/sTcCLpMTNT8VHGCvceK
	 +jN1pMmc5N0Rg2NZ5XxJdpI+qypEkyvM7FL6+zqZHQP2xHmhkMmzAEiVWrI5QKFfvZ
	 D0CcxRJBu84FwELEgSy5Wlm6gUsGWgLkBGrtAX6xzFw9B2C/70PSh79cfMglrVQuId
	 dnzwizRwaLtTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EACA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674659358.28772.11690342584428778626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e7e45fa9ff1fc4229a1002b2fc864c030484694fcf58eabbf6632aad032b7c
Date: Mon, 01 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756746593
