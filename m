Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E69175A69
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782665914; cv=none; b=tik6m6B31JWL10Ab+qkWb1mSMqo9CNCHPh1q2ZUfyAnzMlqToK4BF9J2a2uxWJvH7pXkuGPPAqu6i/1jvBJLtZWiA9qcdknbKB2OWGHRG1ecN5GktqOCapyn/Jvg4AGPeBPONMD9al/TwQgrroaIfQk0GROzIsuatBLlq0E53Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782665914; c=relaxed/simple;
	bh=BVYoVcGu1vRfPWTuGwl7vCArDcqj9Y3KoffbZfNSWAA=;
	h=To:Subject:From:Message-Id:Date; b=ZaLDPuOZMwMvaE+4r5swIvzdUc0MVQ3K325a9ia+9pVsQAiy8O6PgAZFtsRz7MSghpXZfhiyWViYOQIR+mtIu2Tceaw5YSlEYGksh6oyrjhgFIBJIHvy1mQrEjSVJG3AmKqOY3tenNFoIV6fwNUqkAj2K+HyKinlLQE5IxsN4TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUg88uQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUg88uQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DE3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782665913;
	bh=BVYoVcGu1vRfPWTuGwl7vCArDcqj9Y3KoffbZfNSWAA=;
	h=To:Subject:From:Date:From;
	b=oUg88uQe6FpA7I2bbZPv6AUdu8vGMkw+POwMrX3WT/xUcLTUA/QtwS0MDudjuoQIB
	 kAO8kAPclM/J2phGY4+G8CNX3Nrd5pJn5+1l4dIHPl4wMpoJxd0MiAUP1tZXj8OkJu
	 Ce82DmDkeQCt6Y0jr16I6xN7RJ8uW3WDwMPmyo1eWopIk9uWjdLfs8ppjgHPIXt+zR
	 PLD21veFwdRVKeNN0kYrQU9Hn89u6eSeGGMIfR5xhObuxmz54LA490UH6sHGanno9k
	 SlcHBYSbS2OjYnykvpEvWsAMFVEycdp59UJSLFYkKlqvnsH6ZUaGe+gHRPNQo56Ela
	 PY/Agy1qHb/OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0994C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266591368.20925.6130922328355689102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031ae5620238d23f52e8168a7f660e3cab584e13ea68edd8a88dc422789b0b12
Date: Sun, 28 Jun 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782665913
