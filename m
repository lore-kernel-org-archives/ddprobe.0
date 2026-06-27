Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488AE223DFF
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782584914; cv=none; b=K1dDSV1RHtHOVLRWiciKvzX19+Pzz5rAqVc0Ui0mCMKbBWU51XGA6E/EaneBeinRk7KZq+PVsl4L8rr3kxb7G/4g+lLQn/CL4ZU5d1GcXmJKI7jucqEeXVJ0MK1CKdcZ5qNNHvyHjf3zlU95L7gXsIl7c3p35j7SFYPAAflfN64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782584914; c=relaxed/simple;
	bh=hFk7LwqbjQcxguSlOWJm2bepsYgPjvIvnK7efUiO+OA=;
	h=To:Subject:From:Message-Id:Date; b=C0lhVi2igGU63toSZr4C3qDBbGemquCJ0kuUmoYLAPXFEsB0r2iGE576O0/IJvkR+at8YyzlbLUr7xH3a3qVmQwclby+3RL1NnJ4pYy+JCnBcST4L1EIqxTWxlkZYoYM4hzdnOzny9Vn2QbI4z1ueeqiIhUujqtm7H6mPZrW4xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLu0BQoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLu0BQoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DC8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782584913;
	bh=hFk7LwqbjQcxguSlOWJm2bepsYgPjvIvnK7efUiO+OA=;
	h=To:Subject:From:Date:From;
	b=HLu0BQoGCgoCkllgm7crvDJorq/u4Lmqnx1Z0Cmyiex5iNUPrho2Hw0H+7y4JURgO
	 7DEhwjNYi8l6RUE3URqA5X++FatH5yKFFBUKHOUgHJpKSCzoGjWXQrZxgG4zfp9ujJ
	 j5IX5tcef+yrSI/FgUfotYwXjyH8Acm75tH5UBzBeHok4Oc83/Ehj8fO02Sgscfnmk
	 H4cKZdB0Sp0s91Ro7h5kEQALjLG95RqdyyORYFOFx2Iw5+X0rZXNB0Wbhq6wrETPRB
	 PpAYiTEjLwkfV9L0E5O/1GCXgianftIPj0JBRMcuwwSA6q8QAHyLJ4/UZvLTZuEPqT
	 svOHv9D/C8XxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4467C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258491369.28414.1853997365108854947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb88112ba0b373b85b216d1654f5fa90ba5ba1d1b84b5557a18b4f6198ff6ee
Date: Sat, 27 Jun 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782584913
