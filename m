Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4838823A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714261943; cv=none; b=i+Qr2itoXMmADDrlxnGzEtA+kr0m75LSE2sTREDwecGUdWnSaSeHi/EldiFU982wjcSCqbWCae8ITi3NUY+nPTryXIWOGJO4ZUzL3lNah8wb9QcSTe60VnMz+/2ioV5hEXOZUjU080BqAB2aXNcaLu1A8u04jI7555itc1gLZPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714261943; c=relaxed/simple;
	bh=VLmRCD9acJtCoyGuPOsYSL9FlVY+a+njHUkk+rC49jI=;
	h=To:Subject:From:Message-Id:Date; b=BZVMIA82JP4tiQJn0IXNsKdxUtlOpMdLjfrsAed5SF7pBAFbC7hcSzLPY51m8I8+MCaOWDtM4WfGxxuZh8OTN6R3fE4RqiMuP9rKKYp6KwIwJZEyuFnavdQimE9vPuSAHLZlsKnkVd/mkbnZ8xVXqkdimyCciXXhEqzoA2W4xts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eP5rmcJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eP5rmcJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D995DC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714261942;
	bh=VLmRCD9acJtCoyGuPOsYSL9FlVY+a+njHUkk+rC49jI=;
	h=To:Subject:From:Date:From;
	b=eP5rmcJT6XgCoYBX2iDqBvY9MyNNB/EMDymvxFsZqxogF1v0HX1ig/+sLl3T09CU8
	 k0UjwLMmW1H0Pd+dM2Ws+J2ijI9YKbkMB9EKSnFfL+JmP5p0m4B18bzI+86D6NeuU8
	 Tm3SCkAZb3xtX0IjcVbxYPl7sS0SPo007DbntL+zL+g52Neg1uexYZ8pe8QrjP+DS6
	 IoSauIQ2SmCKXi7GEbodz/wicVL6BmYXYHwGzTiDAuWvz2E6xGwS4X4VxptqGVygUc
	 Qx00VhJbfGJqaUb83eLXBNLWKF2oTHwuYdbz6/xkpcTZsmQzMFN47xiUVU+RHdoC25
	 GoYQYj3KHsq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E54C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426194277.26750.4703316204235294005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3654e779d57777eaf52beb1ec8e6c070227b767ff613bdbc75e6152386014c89
Date: Sat, 27 Apr 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714261942
