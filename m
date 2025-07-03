Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F6428F930
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751521194; cv=none; b=XF3CARoHcDJ4YiP7j8z9dKEI4AjpU6ClfJfbzq15O1ypeUvflhSgOhHegoYhK/KUOPxGidkM2K29L/mjjVPZ4Rbb8RAfpDVJENrD0X+tlC86dVBBGCDAszGOtG9/4JZXdZhFeAsQQzWHeHxGdM3ZQu/fDZuy3gyGZjpXP+vTWug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751521194; c=relaxed/simple;
	bh=hv5MhD5e2nFeOe4X/nS8//o0gq/QXv0RpS9dD3ygAlk=;
	h=To:Subject:From:Message-Id:Date; b=pIzK1xByVqoOSPb1ujJCFlIH8rQ5O/60cBt9vmBay9UW6NOkvU7w5/W5d6deQQfXMQmRVVVlwO5qIYgyS3uLw6AFiF8IHELNNwpW9NBT+yVhys2Hsn5UcZ15OOVc6ICcXSBoB/X194gIoJPpm04q9aFX3LCBmZQ1aQkJSOh5cBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtD8EpAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtD8EpAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A835FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751521193;
	bh=hv5MhD5e2nFeOe4X/nS8//o0gq/QXv0RpS9dD3ygAlk=;
	h=To:Subject:From:Date:From;
	b=qtD8EpAJ3P9OgSbWwPA6XlCM9U6h2267QLg6QN7uR5KUlS/FpIjexIetetn5qyO16
	 3nmmgCDkzWP27RuXzhxjdl1PlAXLzb6Oyaj3g0SxzAuaDTpOouv9px4xoAxxk3KqnT
	 0vyJEqVnycG2Ks+f7TX+VUlpVbAFGFCTqASmG8MqDDA6CtB1mnHHLEyhLvN3jGsAC3
	 lQgYQTleHA9fdTFywIjFQbBBoED0p91Fs2UHzB9Q6kYiEICS/ffIy1rt8fE+hs2qGC
	 r4vnqghTKL2ydrJtuCXi7FeER6VWPxDHN/Mbh7z45iGM8l6uHCN3/spKkzuYJ/D+st
	 6sq2xx1uEqsnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F080C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152119357.31694.16750471355257346243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af36f1e14d9b50bac1c8e982b6694c3feac332ae0272c33fed40cbd36b6e3f9
Date: Thu, 03 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751521193
