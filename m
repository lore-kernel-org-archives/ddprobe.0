Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8B7451999
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785350434; cv=none; b=Jf4KwaRq00wBzC2vYXyqltF/bYb2wtamCgvqfK7Qr7kADyntIWGQSkwcF3YwO5wZkZ8iaqNgjBpBNpU5ihBIOdrBngGIj9r6Uph9yG8CkHmHEL8WdoUNXdDnfBsdfy9JpLggk0v2lOuGEbyxYxUkJtX2kI4kRldJhv7AurUcEZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785350434; c=relaxed/simple;
	bh=Nfqf8Dv1JY9OKvnprz/mPXUhRxlLDUGpakhMXQLlQMo=;
	h=To:Subject:From:Message-Id:Date; b=TQ7ZSMVwT4g6ItTJEueDwQOLFHujNBKHhqLMIt0kuc46XCnNiIOp58qc9fO3GPlcPFXTZs2EfTd5gt4u7R9TpS/mRK5C13RB5tJBT31OtSyekx1xFlQa5HaK/JCUD/a3liGwvsz49FPvxYHVXZ2EEAcYKAuuP8xM/3Ig/YT26e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3goQfD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3goQfD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22ECC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785350433;
	bh=Nfqf8Dv1JY9OKvnprz/mPXUhRxlLDUGpakhMXQLlQMo=;
	h=To:Subject:From:Date:From;
	b=p3goQfD1fjqvFvnN8d5dTFqoeD/KF3/i11xdUIK3w2JSYnp8moeBNJWBpATfJe+ND
	 egc7LktP6GMQ+wJMCIZWSli5irdq1oAPKBLls7YW8UvQW3IpxkfjnfzfsUZ/XyCPmq
	 +fBy88SHPSTkNkma4JB+7pXgbV+qgxBSAUsd/C5MejB6836OdICQj86zy+EpI7tHV9
	 SbZekxS0/tuKYa3Lfe0ZuedKRx2B9hYPUPJu/YiKMFJigV0VNHKrJxirkhitLJsWoV
	 ENrL4FWr+Jaj/YQYBDFsAeRIensjs2O12KEh1fcZV6avEAKAAiEAfJ6fmQgwzEfbhF
	 hVhlJ58uvTeyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAEEC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535043370.4382.3434559628220618415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056886f7d097c846ab90a8c6b440e13e051cdc80792432a06fa88f73ad03927e
Date: Wed, 29 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785350433
