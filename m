Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC0B363C62
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774192494; cv=none; b=ontQSPg+ccCQwvFwhoIGCDuX5aBNdlt3UszDfSLqnZQX6IXBVaZoj73yWVaq71I6StMP+bEXiwFI+sIy1t63Ane68ev5wHdgrFgpGYBWJ5r7YtNo0FiORQt9Lmp9nH+fwd8TCz/NrxqRoIeRFDKyxkN0Pyydo7q2EcGPJGjrdPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774192494; c=relaxed/simple;
	bh=LQK5skbHs7l+0uRtzUe393nV/4fV4jHLJq155SUEdOE=;
	h=To:Subject:From:Message-Id:Date; b=udgD/LcntDyBWbIFPDiyNIkeKwEVg6AxJ8Lsb6u5ZHH8KTrxjZ0tyBHzDJdiW8Hog1sqwqiRyn1Z/ju5UJuRxJ7DWtMwIGdtbXRc2ZuptcbgS/XUK3zukJQ5MbYRx1ByWn3wksQavUgKqdTQCbCJjwhBCBc2pany8O4iRSa8J1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t72521Vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t72521Vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393BC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774192493;
	bh=LQK5skbHs7l+0uRtzUe393nV/4fV4jHLJq155SUEdOE=;
	h=To:Subject:From:Date:From;
	b=t72521Vsnq6V9i1EP2tqK52P4xAVkcHX0rBAeAN23ALy/WyjBPceQmY1kuJuGbN2K
	 aeHr2r1eHtQcC6a71cDfrlr7TL4EbrheeqO4COR+i8iBHfy1uGKM1fmngs5vmS7+Qc
	 v0bbnUU99XIEWY/S62pVoB+sTCNgdFFdA3Lr7ajNPkamWVql4n5Cz1WCDBRdtqzhos
	 Njb7CsSZypM4icc4RaLyFMx/8yqOoaUxCNIW6kZLtJIin7ktZgK/YeBEVgKeky8Uxz
	 PWdZ2jnD1a0X/LCsnNKjc9KIDq+QadZ6YinwkRA8dN4lS5Q5qjt3U3mMwq7LCIJVly
	 72/qadWBuPfuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90258FC72CA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419249358.3488.18408380050598816589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75c2ff9c841ff66944b6a8ff6f2d14b73c23b6aab6c52bfde0d39e24b2db316
Date: Sun, 22 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774192493
