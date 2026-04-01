Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8594A3845D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775037334; cv=none; b=l0ykaMfNfCZJKuhijtFZ/o55uoYI8TXZgyr/4+vojMNSNa7N77by6K2jMvmhj57opoyNPWDqxgjt/qv/ZGMtcPHQXXAQ+qYU74AmU4SP4hDxQsUdCO1dVj6qWZ94cILcpFxFKnWGeOuO1KvBYwhg9kLJI1ATkIWF75Erof4cQSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775037334; c=relaxed/simple;
	bh=70RgwjN7U125P72dGnKYXb8YqrcVy3P2SgBhZO9r1i0=;
	h=To:Subject:From:Message-Id:Date; b=GiqXZ8At3BRa5ic2cvazChr7kFeAth5EaHgpF4hOzNK9tRBDROXlE1oMKJyPa6ck9AZVKzm+MUUFHr8dt7RgnIBpctc/nid3e7LhCIsIPltpdChjBvjFM+c61qhSUUbeEgSyyk2DuWvSLdgyR/+R0xZi96cnbPMzJJII/bQWkqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8QiSJ4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8QiSJ4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E25C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775037333;
	bh=70RgwjN7U125P72dGnKYXb8YqrcVy3P2SgBhZO9r1i0=;
	h=To:Subject:From:Date:From;
	b=a8QiSJ4hh7x5YzPlpGEn5GmGRF6W6Oq4WfzCCxyJ+QVx9SP6wjF+8a1i+wGA4NtFh
	 ue+NLpAUXqaGL0SCRZlc/GjdyK1e+Hz0nB+g/LrwUmnQYxtbROx6XJ4HgAoBn/8J2w
	 FdzlCu9sDijX+hMyr2w1z2ti1PzP38AFPKoTy7v6+eZgaa69xPnMUwOnehlhlDLC5A
	 fE/awfpUXl0soRQQ2OPF9iNQL5WZ17ETtrZ2GUOKysMyAhiL42191pW8xRonD5z/Og
	 zD1QqPmlwlrnGpRRJ8YptajzMHO+MjRytjQm8CJIrNJrIXv+J7ScXtjgNYrhBF2/fO
	 ugGCclh5qfQ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69EDD35164
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503733373.32433.16755493291592413911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292b4912f1b98d342cad342b64297a6994105c3f4df03c800fdb4de9559edb7e
Date: Wed, 01 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775037333
