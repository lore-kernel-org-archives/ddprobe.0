Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617DF445ADB
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790241634; cv=none; b=BKmPB6f3d/YOiubwke760srm1zZNE82CiLRv8z31qHvqnPMzFkOOmLsoe6w+Po+AluKY2NCKlpn8XNNfmXKWgZzPxaOtDIk10uesFnX+kveKU6/+MHxwY4A0w+qWRX07deqD3loFkpy7jKssR0bA351+SkaiCafJwyGPdQVP6n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790241634; c=relaxed/simple;
	bh=JNFv3wIyGiPg2qJRJ9JawLsHOQfx4UGMrxnNn7CyHQs=;
	h=To:Subject:From:Message-Id:Date; b=cJL+61jxkUP/lsbXOHen6IV3wHzN566YPnO1aHiOFQTVey+nBzvTHAMKEXV7sW/GvcBas66sRuM0ovMI9fyOAYMlw9iPG6iiOjvCRotZsUnZjj48dSarMLai0TyjB3pCjSqgTJjjuOT72o0Q6L3/+Nh8ErhKvjRQxY2w15AR95Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcAXNNXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcAXNNXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A31C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790241633;
	bh=JNFv3wIyGiPg2qJRJ9JawLsHOQfx4UGMrxnNn7CyHQs=;
	h=To:Subject:From:Date:From;
	b=CcAXNNXg9rCYW/aSCeeVPIQ9KiIndl9F8lmZdrZg8Nz48FTwgXfM64KTDdA3oL/E9
	 mCnaEQyTdKsIjeq+rVzP7wvVbLJKD6Au/pbI9JPRP7niZHvAB8u3aEBuern5kHxWyW
	 I2e7/HFzB4i8+JJtWyrs8ibKa7/6PnZT39whyS9ED0LVj+pyMeEg7URWJzYNVXKaZa
	 nvPP1FxDwDN9tVaMw+W7OW6ZB+aOLC8Gxp0xbytxSMDceVdybC6vNAzDKNeDHJcVSl
	 Vmv9RxZVSAVgvf2baZ9R40CjSkimSiAiAPrGHB+hvgwA8ckh2oMLYEsC1XiLIPTJea
	 g1RO6x3fuKufA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B68C98311
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024163371.1325.7199768460607333994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403d78295b27454f0aadabcc328f878085eb09f46f2f91d1366ddb112243d99f
Date: Thu, 24 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790241633
