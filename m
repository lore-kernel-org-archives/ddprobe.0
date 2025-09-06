Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CFE22D4F9
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757174994; cv=none; b=jTlUHSqzvleOG+cW/CQWD+NuvVEzcBV1+N+x1t6LJDKEtQxudScR2ExeNc+LSRkQPjuW+F4kPSyaIlnqsZ2Sm4k8aHaNCOE0pP3LTm2v0MQyzRw/GN1/v+Cs5BEMFuHfoqfDKtymoKQejnHD7lPU7eg8+zYz4PpXZHDMIkgkdcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757174994; c=relaxed/simple;
	bh=39rmf06lZW5MQWDXek9e2Os/tn4FYWmG2iOTZ7NuW+c=;
	h=To:Subject:From:Message-Id:Date; b=Csdh1X6BByMK51gHS4ySxYPuTQ8ywwqBSliejvROuUmNb4Vr5g1Z26Z7karmSpx0h4Db3Yb9uIF72CC2E/+YKxEI9s5qKrJfNEWj1IxujiFqNEkcTg5Km21sZBOqK/8In9u4BGfk/F/8zHvJBLU58MIZoWDQa02kMEM2VaG9TdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apYsEssG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apYsEssG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A710AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757174993;
	bh=39rmf06lZW5MQWDXek9e2Os/tn4FYWmG2iOTZ7NuW+c=;
	h=To:Subject:From:Date:From;
	b=apYsEssGdlLbWS03E1x7jsX1EP3FkQ02EtLAt5mhLgcSzV+j1q9Dv6UH0wQOhKIDE
	 VmilRAwHvDh9OK3ITSF4IIE19d5M30iQ7LdD+76fcmrhd5huGlhpQSA+zvMMQfFAwD
	 CRgiDw6lhZ9AB0eTfhEFAWDic13+Kg6goGwkAFe4cYqAfB6/ElTliCnDTjGw0VV3GD
	 4yYewzmSjycVE+QkJ019ys6IrCUVsSq5VkSs5VNaJz6hXzFSLT3+lGbqEIVndkXqTq
	 LkRtgbpR45mgkf+dyopq0iyCwPhbMXVdNNN1vTtPdMESpFfWwMhTEOxXzp8GkhTgPZ
	 iUCOe6squomFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9298ECA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717499358.17653.1175758457765378568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96cecfc480cfd5e7764dad047498aed307144374dd698cb239a6c2f7b6859e6
Date: Sat, 06 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757174993
