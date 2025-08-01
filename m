Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6D82E36F5
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754023794; cv=none; b=l0EK+/L3Z9kbfFPFwC6UeH+QSc8RystA9RsxbCD+T/HRRpDdCfUR8lIrVDMd0yaVkCxh3a7M6wUl0Kkdt5z8UXluWMbWoK+inBFwU7p5fRvbq2rRaWlkCuhwQmU1Fb9QUd+Y+YDsR6ih1Bl3tTL6wdCjSgYWCDnCjB0k6ejAgHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754023794; c=relaxed/simple;
	bh=xgQ/kmUGCwzjSMKPmMzbNgjP3Fp+FjizXlHJrPvhvLw=;
	h=To:Subject:From:Message-Id:Date; b=u7tWaODv0IQLFmUxDW+Hy9Nd4QqTgQn7/AfhK5iq0F/EzMr9C2DvBAVTQPZJ1LAw2BxDY+sgR544FN+kWUOiVD1lguviDlgLNXXIEpuvY8T2/HJJEJUhUXIj9t8jQI09fJt08k5TvykFSqgrS33d+NY2GF7GcJAVW5M+tHYYjIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXfQVU+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXfQVU+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A995BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754023793;
	bh=xgQ/kmUGCwzjSMKPmMzbNgjP3Fp+FjizXlHJrPvhvLw=;
	h=To:Subject:From:Date:From;
	b=SXfQVU+bTIdp4eIw8n5A4zVoDgQ8egf70FKEC6QmLCiNcyB+2WORN614e9vahhHGP
	 CeGT/ewwSqZqVdRLkU3kk/c4oCSfUYPR99IRiLPA5QSwzpqe4ODgsG0RiZZnH/HPA0
	 wIXnC9RJXcB5gP1L1doNGyYgw1dg7WN7xKq3y2BXW9oTpQ3RFBcR4fRSQBBq0BQYII
	 DTTl1exTqGTDhL6kTifMh2+8H0VlLFcvxWwhWVPN4kcOmOWaCJai6H4Mwzx7CMyaYM
	 jTPEj/kclgzgswHkceUMJ2AFalOULVIDguygzccAgdYI28p4qz8PpQEOKEx3GUksHW
	 j7teUHDJG3xyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C6C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402379360.27813.8814007747535620414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f275af09fe57a5a4b6c85627cc6dc494bfe12b6f5f96d6c65bcac292bc50d3
Date: Fri, 01 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754023793
