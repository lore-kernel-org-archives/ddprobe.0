Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1674C2765EB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756406394; cv=none; b=nmvEmxRAwxV4wIBzKJODXK1zknkTNQy+0rqJH1weFRkalNbAr34R2qCLIE2YvnzMRy90/5k9GUCKNwaKExFOZ7F53L9MATPrkA8a1mRicEgNg6v1jb0VfCbpsEWd60M7wNwtRXZvNLaz0gCv8He+W8gfHFCfqQAe2vxv2KcYiUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756406394; c=relaxed/simple;
	bh=+UUnU00dvqSB/ucOG905rfcF5m6Xg/Qh9luGpn/jLCE=;
	h=To:Subject:From:Message-Id:Date; b=JoB0aFmpmymxuAGnvl/rJw4NDPM2Mbo2LRYwEHUZKyrs037Tj8csyZhs1YThVs9gQNYM43OObJxXM56sIpSi/6GjSFdmVGMjklmGRUfjE6FKRdP2dzPqqAlR2DOJuDqunQi5QkYNdLHt080UATLVRtdT+5ehc1yIcK231I1cays=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmescxof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmescxof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756406393;
	bh=+UUnU00dvqSB/ucOG905rfcF5m6Xg/Qh9luGpn/jLCE=;
	h=To:Subject:From:Date:From;
	b=mmescxofHqQYETDvQ0gFP2IA0jIvOQrcZq36dWBeluq0/0usbBojhNi2PreE7h3zk
	 jaFeQkAcKZkHn65ytiuSBsmgiLcZUgMJQgt6irtHIfbN9+ocPgSqxPmKWsLTthMD2i
	 Rd4fBKSiQpHywnWYxi9BCHs02Jwa2vz3lyJ5S3GgxJEcABKJMgzlOQkmnst3gdSVoP
	 /Y/FVCipWSOqfOGC+RVgfiwL16KC+erlfcLMmGvBQd2rLWbzjJDkxe3OlQZ1yzpTh0
	 sICsqnzrQJ5UsDJcAoAWDhV5Afe9LU9gQnvYLHVOqb5LA816CiLC+Q+Q7XLrWGnJtY
	 fpNqeBK0gJe/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC8CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640639358.19476.18300552385056723380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383520d3d827efc4e924a8756c390a4594b3512c12a2885232e20e8779213f69
Date: Thu, 28 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756406393
