Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB66199FB0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756260594; cv=none; b=p1AuWKX8DizpfMx3GGgCQiILIv8SEQKI/EmQrh914246rFD6fHektetBXWW5v8HtOVlFiVCjON+ycaMBvWcVAN5EZwIesc+hwoC8M4i5EqBjh0mc1e3cafD7g39bSQRR7fXoJpdXidaPMbmFt8AfHtmQaNe3YLRjxEAdjZoioAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756260594; c=relaxed/simple;
	bh=t3zsKRbfrFloDMRAWDUbXZjKB/KM1eHrVE1H0lQqjV0=;
	h=To:Subject:From:Message-Id:Date; b=KMvSjOfKKG6ArtY8K3ZkLGHBwpg6NZ81oP+labSWi0vhAg2/HKWPFqrIIM1sOXVfjM2s95Nlnnt1Mkr+a/B7+iuZFIhQMeb+hrKtUKSwDO15mn3WmcrRYl5F8E5QUOS5bg0CQfiqbQCRRPz+DzHLwO0yO9kKC2CIvPaCVCOkPms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOTQ7Jxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOTQ7Jxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1169C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756260593;
	bh=t3zsKRbfrFloDMRAWDUbXZjKB/KM1eHrVE1H0lQqjV0=;
	h=To:Subject:From:Date:From;
	b=UOTQ7JxvSfxUJddARPfZXs+/UgWQgyosCXn9IJM1TUTAVpGYg2e0kPswdZYjymFpP
	 hm4qQEDSBgVLuehFLb5uykOd61rQlGejp/h4QOfWcQenNvvDCxOyemedkPKJWLWs1o
	 vKbbDqICURnS3raqkO9pZ+dl/WyIICPx4rS9kPcjUiaCqVM6bv31awdM0/YStkQfM2
	 SpsflObDFdiz9/OjLtiV8oJt2+i1GoiN9pxY6APPSqt07vGTjgLRVl8QOtNwq3tw/r
	 xi4KSmNks91IMlI2mqmCJ9vSazxDVMdnReXGxqQcuy7VGpwdTOOSn3aiPKZUvA5E7r
	 mAMRA4hS/wRvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C7CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626059357.14581.17980325676944582500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a762e668bf29944d3219919338cbec8e72c6f930232acdcbd4b239da7d31f95
Date: Wed, 27 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756260593
