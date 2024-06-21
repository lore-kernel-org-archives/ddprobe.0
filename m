Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67995153828
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718975543; cv=none; b=axswcTZKA6DhTFaEy3BxSQW8fyBoIQ/gxQdpF1L8M3Cb4tvaSTzZm7ELYgdOUYpukZg01qmA79HUKNuteso9tr0uFaV0Jov/JsgpCQaL277BECFEw8rUmllXjZDD3aEmGg1USMmW7Tfk08mlTFIcirZ+BxInnsTsL14zaRsm2qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718975543; c=relaxed/simple;
	bh=nOcb7W9KNTnFjz60nK4Aia0GHMDkqQkrdMvOA6a7rtI=;
	h=To:Subject:From:Message-Id:Date; b=He8sy0h7qhC66DH2eLmKGhiSNhpEvmftztTus0Qf+i48zIScKMGPUi/NMGPiBUk880Xm6ArfYimamckM2lZCFoHw5mfEGIn4ScyXJ15RttDrIILhDDSoThh50z+6rT2Jn6915/SSb56FASDUi6zq4TXknq3HGgj0in2uejWEduM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi5F/fuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi5F/fuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB539C3277B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718975542;
	bh=nOcb7W9KNTnFjz60nK4Aia0GHMDkqQkrdMvOA6a7rtI=;
	h=To:Subject:From:Date:From;
	b=oi5F/fuPp8wJ1kAFB34kVat3UPjJ+w+dizADl+OBugHLC9oJKV+Ly2965kRhIOiLM
	 dWlhhvSwHiu8xHCJasiOULd9285H8usRJqpCF+aC/VT+hETJPXgby7+WnaFUgqGh/c
	 GY467rkOcspoe87H17W7Z8fzpjWLzPV1ADtjaJx3DTAVP7ho4Ykz7W1omvqmqDklQl
	 3Yv1SaQrJ7wfGSUCE4BpG457eCWAWcBM+IsgqKWOdZrQIcX0wbPWGagGdB0EpBXvI2
	 8ElIOFWfJsnGlrYUYV3jkkVpszEHpRX488O9E/Xd8U1h9DdmwkQoZ8JaPVvVcprBNO
	 xxYl+65xWKXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB41C2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897554281.24666.7176456315799948274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d500c409a586ffa6c9bc1ca8b817c2613a34df7b77094c96c4666cbaa9925ddd
Date: Fri, 21 Jun 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718975542
