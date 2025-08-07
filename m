Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466A2238176
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754597994; cv=none; b=gYWsZo+WDJpLGEJIJFOga8wNkYVDRPDyPzifbq3+cN+HUZM+x1+/ot8bjBWF8CZWzG+NUY0mjaJWRY4D/em4ClYVubQLam+g1RpuBTtEf7Wdnyb1XSG9QdSA1pXGb1sA9/IqaQuP5JHdlV4ti0yu5dodFxQCSwWbFJM/Myysyx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754597994; c=relaxed/simple;
	bh=qGx+zn0qREXHU18CrxxjstaU32bgqFs68C1/cs+HO6M=;
	h=To:Subject:From:Message-Id:Date; b=j7EED69o5AHC8cwfC3srRHKXLSYjE5TBCrxp3m12iPn4BFtOibdmwUFY6A8yYM/Zfn6oj3R1RAMaxiqa5xt+QktLPCYofVkHjq/TjgNlAdgfGIT8Q5MLD/cMbJPjmIW8pWYmxN0+Z3p1WHV47skFEpMJ8bRpzDDMvfiii5RE4RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmYERmQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmYERmQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E558C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754597993;
	bh=qGx+zn0qREXHU18CrxxjstaU32bgqFs68C1/cs+HO6M=;
	h=To:Subject:From:Date:From;
	b=YmYERmQpkQdAY5jGllpME4zYBPSjFUZ1+bA1emQ3kGZ9U+vqFN69Z1Q0iBPyExLv7
	 PUKvFybmO6wfBDHpJYtmAK20ztLBE6UECsUZ107DFPPZMeAHGZqvulWmoKP32CYX3M
	 DAYRtgpuTLTTOuZUcZ4VyG5Y9HqQ3s4T5hoeMcrzw/RUlJXzXpHlAhkWWK12CnMPF2
	 6TtpEAU/lrrIB0PN+bSpHsHYqmYLCtdWYHbX1p4lR4qNl61oIOXAdu446vvsUvAFn5
	 cGI1DL5SEhDt31l4P5+jtBl2YXyxRPbuas+oPr5O/T7nKLWpZ0o+A+r2x1IvA3KXRM
	 hvX37PHCNgTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97BC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459799358.25086.2798832705391150033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36d4cf41f7885dc599a1684a2d69e464015811116d59f43dac2efc841f35c01
Date: Thu, 07 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754597993
