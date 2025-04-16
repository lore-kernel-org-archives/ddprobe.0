Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EBD24A042
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744846794; cv=none; b=INdFjVX13coLYMyW5KOJpPSfUMBpSEFei+4LHMiL3bvfd7mNmZ/gpp5ScNjXVeuuuFQfd2RGLJkE4F/7EsOx5AWMDg5REkE1o0KDwGUjocE6/XcSe+IWUS+t1T1vV3hYasIl8xiwZfoJ/5d8SE6KtaSmvACwqMuy01rp4AW1jyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744846794; c=relaxed/simple;
	bh=ZRd5CzbBW+sqs8QX2eZzh/60f9qQqK6KHdFKeAId4fs=;
	h=To:Subject:From:Message-Id:Date; b=Y3pAggSZToiYtdArShy12m25Uy9W0KRBaSjkqwxyq+yn6nBvzR4l3+kxPplLdEieAw18mnx7dT60ED4vJt1T8dTnKiduqscU1HZR85jyalk8evs0YEwavX52F6dmT/O0DbahjRmsj64bwmptKJXiH5XrbN5Q/0noEhgDcEbOarQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WchRtbrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WchRtbrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F79C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744846793;
	bh=ZRd5CzbBW+sqs8QX2eZzh/60f9qQqK6KHdFKeAId4fs=;
	h=To:Subject:From:Date:From;
	b=WchRtbrJ9Afx51Y4Kugd4noecBgsIJsPo7p/EMK0udYNpGCkPt7iOgKRItcmrjadI
	 j8D2YXd7yJn0qMlqABTnF8qfjksBjOweiX3svdGaqVh4lbwbitVEPRo3DFXMv/N+Mh
	 C5Osso9ifA6efCSJ6HSOL1UPeriwmvw+KVxX7jlVm9UrAdaQBQoBXT/SbYJw4nyXS9
	 p1b21J++YCAP9XPr8CQKw0AJBPThhpxRg9zgJ6qrxjaRltc2rXzshADwz1QRUlkAZa
	 IuVdfjxc4HG/cjdeqEqfVGbp5XfYJENVUxpRbZxa+QQmPkA7FJcdcgpFfEgwB11DCy
	 u+K955deGnOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBBC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484679359.13840.6090321579878209836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ee4813252666d4f0e4029555181fc3b80db4c1d7101a37f75fb825127023b9
Date: Wed, 16 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744846793
