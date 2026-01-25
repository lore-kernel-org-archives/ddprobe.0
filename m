Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEC11DF965
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769355234; cv=none; b=Oa9YIS64lCDr7PCAk44K+pyeSnG4+WFTZsPyVIMiGql0ss7jCo7dVToF0DZnqI0mvJsv/b5LSE2pI199zsLXzd5GIoDjJuLZJGvVkskn5yZLb41yP/kMzdzjob/pO9r+dlY2etC+cgO+TdtexNr6lk+w/nn4ABhFIFmJJ0AaufM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769355234; c=relaxed/simple;
	bh=AKdrEHkHkpPc2faz76EbU8PxLqMz4pNcCen6AWT3sj8=;
	h=To:Subject:From:Message-Id:Date; b=jUd6kJe369R45EkgSN39LaQcBs1SfU6aqTFI5tjqi5xy7/C24hEtKfNAaPXpT8Pjl3oZX18ZzK1PMLOwugRlGudLXOWz9R+U/zxOjhnpLIqgffhzLv+Yshkxoyrvu4ASgg56QLaYJBVFqYeRZxlqWvY3CNhUdNV4sGC+yZ4A8w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrO4kq7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrO4kq7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6572C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769355233;
	bh=AKdrEHkHkpPc2faz76EbU8PxLqMz4pNcCen6AWT3sj8=;
	h=To:Subject:From:Date:From;
	b=hrO4kq7JfYu8wD7Nk6ckMkAGt4fOyGw/6x7Cn5Jy/2il7NDpWHpsAO6+Xiym0+yxH
	 yVWYhZnJKcGA9TZSNylOx1gedhlfE0PCbRbNmls9gDarWMo8dUjkasyGwc74LxOrnM
	 4JmYKbr+WXMh6FXflzo2R/xaIjLFpRGMiRmaRPL9txW/qYj9Sf4SdrZ2Q/mO7zJpWf
	 cBrabDE/LTEoBNJGmCwy8to7jZSOu3hUqmT4zMu82wPMiV0S/VEFPO0eSgDqenTs9V
	 u4pFRRTJa74//MrmejmSepuha7bzpWHjzMKxlAYsO1Scg/hCUTPCHiwWo7M7wztFM7
	 C0WYvDYbbcKwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C3E63CA5
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935523358.8095.15559470162447081347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927d9e57c0c0bdedebaac48d8a6a4c7eb79701a8bba116c2ba862c67780f4e84
Date: Sun, 25 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769355233
