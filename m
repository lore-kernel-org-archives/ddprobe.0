Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475E644C77
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748927994; cv=none; b=noUTtflOOzcyujOrewxqCySFJ/lJclqd/G560/tzmitZDjowNl/Pgnd9ghON/K6M1up2xsgP6M3MwCg0YHHBVTuw+yIrcloyoH8/3bmN5xWVm6nceR1bqZ2rOpirQVqx23qKauxL8yS2N/ZyAxyQ08jV7fzl9/Q3Iq343i6EhAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748927994; c=relaxed/simple;
	bh=jtWyoF8ZO6bW0UYRr5QChLzYf5LMA4gqd6+2RXSSgw4=;
	h=To:Subject:From:Message-Id:Date; b=o+Lc6oQyru9StuejI8XeKIC6FonROoQGZDUkNsLfGUk7YRmv4vPjv/IWwnhDzQN5qcmUY1/dIo0NZwXIvKe1xWzOBtj1nd4gAYbDgOO01maRJvEcD9BinJC4dBqLj4ocnk2rBiOxJuvwAlIUFf7eugPA5i5jP4O6p/Ev7CpWyxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNeFzvDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNeFzvDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA090C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748927993;
	bh=jtWyoF8ZO6bW0UYRr5QChLzYf5LMA4gqd6+2RXSSgw4=;
	h=To:Subject:From:Date:From;
	b=JNeFzvDX+wukTEiXWC59hhWWDr5fAqJLDOcK9XCVce9q+CsRKiZRiki5QXEbuyaxg
	 BYip2R4PYJe6lmQTswuc34tTd+59u6++lBp1sv+P/N6qfhlZtt/UXEqVB2xELFgnmo
	 zyJn7iwIRyy4Wh0t3Q6qWtT/yzUoJlORMNCCIDswvy09cvjRX7VrHzpfraO0qrJGnH
	 4XtFzGi8Ab46ZEMGbLywVkr7PuBeJVxiUqFSwf4LLMavqWc27LugbURfCWsK+Udbpz
	 wR1NWox2Moq7OMAw0rkJKmEEJQ5UZ+A7/1XocgwQsMbMy87SVmu5ltTO0Kz/s8NR/M
	 FqEqOB7ohb85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953AFC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892799357.24830.10715188010728836437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4013ea5eab53eace6866bcc210d8a2f15eb64faee55fc8abee398cd08c7b4ff6
Date: Tue, 03 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748927993
