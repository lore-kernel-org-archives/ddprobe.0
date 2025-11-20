Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FB9325722
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763610114; cv=none; b=nfWjkTzGhhiJuTELbWNgRwleKRlGOV0MMa+6+WD34TGJS2v+GFQEw/FjX0glSAo+zhegDCTEF2TSXWOawVg5YhLwyG+u6DkoKPmO8mEbJpUWZ7F3D9rDAcDHDwPgEAuSg/8f4oNTsZB+2jC9WORxcznF5qtOq2BKFyRxl+BDrio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763610114; c=relaxed/simple;
	bh=VVfKGdcsLupMcBtRvTS+zSfqYtLd0EQY87puhm8YPR8=;
	h=To:Subject:From:Message-Id:Date; b=s01I+UwqRf/sNog/cEmIzvs1h05Cr+i87T3xEdgvaGYsg7X2bicQkSc1A1U8F1lfN1GDTRE0fHYH9JaTkoSC3JTA7mEr/rm6ec3LXgyDtj362tvwrnV9yFDfmXY9ZuEyNcRY3tW5hXAM40fhTVjKfBdvY4MulprTb5Dr73Jx6ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1BzXSZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1BzXSZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9666C113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763610113;
	bh=VVfKGdcsLupMcBtRvTS+zSfqYtLd0EQY87puhm8YPR8=;
	h=To:Subject:From:Date:From;
	b=t1BzXSZOPeJNlFtTQAVpPk+X/ALWzmy9uEvpk1v2Pd8HdAVK4zrYQSPUpKPATaNDH
	 dHFAFE6UYxhnNnojP7Z95C3bW13amMv+UBcDPM1O/fxRp5dJfSfiSLbzJi0WfKJnQR
	 1SVLSC43qTwLqroTF0j7B28xq7cedRDsBNOBDajqAa3RsSLQXRZMVPk1+f0y9Lgthn
	 K2Og1LB3npMiNZZGBvPOSPoMbNlPUnj8TF9V2uXEIDKoAWY+/j4FpfZ4k9d39gL4eR
	 H5/CE5EyqWjEUuco1A7+kkQpppCjJP51KLQPX3gPKayvUjybklzwUKHnayqRG0n23S
	 Yu8Ro1Q/JKddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB7CF256D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361011360.25442.9867117169185998128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aeff3604400d85f436730788cd754644d0ded159eddc6368484986b7208744c
Date: Thu, 20 Nov 2025 03:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763610113
