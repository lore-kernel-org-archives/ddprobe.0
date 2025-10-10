Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E67D30217C
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760131794; cv=none; b=lMEJ5zxpfOfd9uu0FQSV+8K+SJBRfFt9W3VDy2d9cJYj9ClhCOtiWylok4rmTaDtI68FR6g8hl4v33pvC5tvO4Z+guzWQdJZLa4oaglNla+J2iLoHSpGGsNAYSyhyKxQlJtIXkFfSQmsTYHTcfMoJSFP46EYnRyTxiRxK/YxPyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760131794; c=relaxed/simple;
	bh=5f790HzaFObhZ7eCXZv5Bu6MyiTqUsSC7QHu31QuXQY=;
	h=To:Subject:From:Message-Id:Date; b=CZmxUAt9hQxkMXHmZy2l1xu2cOPErzTstEOVFqf7HoKHRDOLLICUH8qdq9V+9GrQikJmAQstuOVSSC7yCe3CJmYjrLnZ5eBMBScHEe401nLgcYl3wU7GpWmhFUit3sxHDByH2wX4Ie+yaQXSb2kNE4QZ3B44EAnrlLcrPYGjA10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RD4093TK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RD4093TK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51F3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760131793;
	bh=5f790HzaFObhZ7eCXZv5Bu6MyiTqUsSC7QHu31QuXQY=;
	h=To:Subject:From:Date:From;
	b=RD4093TK1YDAWvGTN7cROJCEDO0fYQglaFsAUm+zFnFvCKfD04IhUSo3gHQ8tVyJz
	 E2e1qbfvskQIy1P2VayA/32K8BYQGDKvDdKhWjbdYdz+2RuvJNfZ99/SDBPnvh0V2s
	 6SUfi1mMVdTkjMg2J1f0eP6Be5rBM9/8FID3GoXavEbKRs+joMsVsXJqdCSAt3POUw
	 wShluw3+cY9JZ8gLErl9WEwC+wJag1lBR6b6h5aLoGcRt0EjkF+AjMCZlejBk3NqXG
	 Ccz9Xv6vmtmCRTmh2tCNoOnqiKtXKlCw438zONWK9lDjru8Jv20aNt/MSrgY4ETEMW
	 TZwzDSvt2H40Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B4CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013179357.15134.17053229971562113209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4d5632789ece0a67c7b20f5108881423e5dbf800f168b68f93e35d0a7cbc50
Date: Fri, 10 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760131793
