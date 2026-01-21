Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8F13D523B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769029434; cv=none; b=bZRPxZ9GcaeeUsdcG3L0O3m+mnqffTNfit4LbVI2MlD37+xThmA+vRfSQFV8x5sXz0s/e6nrIlPAynXYrp1HGFJRLAY2e7WvjsduVRqfRRHOkm2vFmP5Qo2u4gmRb0IzjFzW1/+cXgTP2BIlBtTn9nfosEwgJdFrA4KuP6gI4Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769029434; c=relaxed/simple;
	bh=xTGkg14RFijDl9gR8IDENvv07jxVrNlXOWJQ/9w5gho=;
	h=To:Subject:From:Message-Id:Date; b=U/1eMFpu6baqhV4nGzpd/Vet54ojokM+IkCUXgqIf+oW21QXSENvCcVCZJwcAqHX5ovamWYXVBQ6upibtxZfiQMv62LAaB7iuPPGete0x2BYZhsTvmQ23gY/m9UNUO3Pbj0FwElmPpSqal+cUbI5YTrglKpZhXzga4tlctQ65vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzu5F13H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzu5F13H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DDFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769029433;
	bh=xTGkg14RFijDl9gR8IDENvv07jxVrNlXOWJQ/9w5gho=;
	h=To:Subject:From:Date:From;
	b=Nzu5F13H0SICyQ/B+pHE33Qs4sesBo32FuJzW9vlqfYf9TeoQf5Lu+hNsLLxHf62s
	 FIHhrBMD7FwMC5ncWacuzSoQgYmX0st0YDC7G5llDhBDBRaQxtqguBF5Y/oNgu9n+8
	 viJo/MSIuO7JOdS37D5fxVRhNwwa9oSP94liwCQ/0thMuKP8yB88jzAyrBCH6xeLof
	 04KDcneUKjcIBvYFYkqehmTIWO0528fHc0YBWLmjx6Qai61tCP3qofwGRs4uHaH31q
	 +OP73gKdCRkWM99dDrAvMNUCDUIehD0l31FH8QKTFNl5e+STyMvTelwLJixE/K0EG2
	 tSQtYYDiQN7qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518DC44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902943358.6328.15589886908521541950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbb92386b1bc4d3e14f2a8e7eab1d596288c465abd32e168d2f23eec0efb9c5
Date: Wed, 21 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769029433
