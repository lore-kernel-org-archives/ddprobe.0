Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1982C1594
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756162795; cv=none; b=LRmXEPQcXYhUUkq82xIHe8xJQGRde2PqTpirIRdUG3PJBq3JWoeW0YBlx4LhLIdAeg7AGNZLA4Y6PUZoO55cfwEarJIsGLFdJRK6moi9fLpZMz044VC6vQezqR+nm3XehBomJTFod8Z/OhrOfwf0r7vpWvNnkrjWNrdYKiVnOoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756162795; c=relaxed/simple;
	bh=4pptQCuYEldnWkblSsG/8+jU4XWHgqL9j6ApXTDIrPo=;
	h=To:Subject:From:Message-Id:Date; b=cWQzOpVdULyZQlAdjbMYd1WnOBM8gmGwvQ1ZczzA0tSFqhvbcu8wjLkUARFOxB8jt3RiODBktJ1S2fFkRZI3QvRXvy7VSiIEdSCaa4xACLaZtGpxvHy/4k/qltJg2pBEp8bOPjt4mdkirIqGJ7qEc36RgqjOOZ6+Lpu6WDMHMNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyhpPtMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyhpPtMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A3C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756162793;
	bh=4pptQCuYEldnWkblSsG/8+jU4XWHgqL9j6ApXTDIrPo=;
	h=To:Subject:From:Date:From;
	b=TyhpPtMZLEr//M7t7vt69Ub599oSqH1etr5x+6/A0rhhZsJS6F6YbGqiff7np4oc6
	 AQITpSwUGTH/APTyfuXJ4EerJIASdxjWfNO04VLbnaRWdFDqjDT9rwedYERhaf8AdN
	 tLFLlq5UCkrKBKBcfLa20qCwivCxnFbdtixYPvpThiHwhgrlBlHg5D7iCH5gLolv0n
	 kPWCGa5bO3l7RPDH6moan1xoPqhR0KEzNwEH2g8wAUakG/Sr2iCV+4aBTk2i2tEvSr
	 TxvJj2Ef/F9hyeYYvLkXJveaVMAawWg/Fh17aY1/2cUo2V0uzlYjamMwWtXthFWz9+
	 GZ4RYWDLlKhzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC59C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616279357.15221.217554507284122480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5b6e696f7028f9a55ccafe802f7b722c653ef5cd6d13e32186d702a2f19830
Date: Mon, 25 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756162793
