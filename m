Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D7F3A5E80
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778616034; cv=none; b=l5+uAgTrrPiQsMzwOYChRrZWRfNFvGTc8/GfoOT1TVpJVan4HsxN6H6uf1vMM3OBONOcdkuBKKSu4BatLXqSlvIdrSe5OE6R7Qxe71Y2CbEO7UJ8cIbxR2sA0T3Puha1uqmxP6J14Noe3u+ka4+7Dwivg3R+piGqK47pTQYn6YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778616034; c=relaxed/simple;
	bh=BUHw78cyIwkmH1Oc2ZReQKBYa0FDNdKkAjUZ1SscjCM=;
	h=To:Subject:From:Message-Id:Date; b=aed5ILZXGAEuY013BkNAd4oeqRj1ekY7diy7OVkf1cE4mYUc5T3M5fhzKv3zwpA/wQqTI4Xn/Wpd6R6y23MUA4gx9Ds1mMhupZunjimcOH9l5qgFkKQxeB/hpTEoo4AGTaVlJvKK37fzJ4DwjfPYeNacNwdibpgvkFRHRkC320M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjNTvIJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjNTvIJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE5FC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778616033;
	bh=BUHw78cyIwkmH1Oc2ZReQKBYa0FDNdKkAjUZ1SscjCM=;
	h=To:Subject:From:Date:From;
	b=ZjNTvIJPhD7AgrUHCiMyf3SULMG5Ct1KZ3aSKL/rPp8nSuY46bntUl+5U7NgviKkj
	 g8AffkqleemS4W7RQrucVqvPMj5V4RGTC79XYoQzUQ3cB8ZDswxQGwdV5rdq6qHuL1
	 jkxmI8I3pZ7ToozXSeY+86huI0mCKg35v/9yu5MhZsaBJS5ZNfuMxR92ZouR7cSAkc
	 /rFe3AiYi+PrxLeVvug/rChmjNf7L7A/p8eyqgJcGqZGwWbnASeLwLRcQAr7hRZl95
	 yHiGRsuaooM/XSbqHSz4QYShMDKdvPybTNfFDJMVwUfA+meR76AmjyVgGS0ZfRIcLt
	 q3vJipA5xqLcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB505CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861603369.13105.14401701929274345274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e9dc458bf1805201bd40239f96ac1f55b0793b7e64b46e3e595797bcaf29e5
Date: Tue, 12 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778616033
