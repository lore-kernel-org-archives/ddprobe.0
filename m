Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCAF54705E
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789799434; cv=none; b=a8tvR61PutfuA657l70hHYdUJyLdj5qhx5V5p5C7T9cqvF+N+jyHCQ78LufXWHAzVRg+mj5P7vB2g+fPWgfLKJN0Xh8Rhnnvap/4iTvw6pYOFr/wQpTN5EGw9ZCV3DI8pbFejy12OXsJrpl+t4vwZhwaJ6KLGE0HoGpbz/nsCZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789799434; c=relaxed/simple;
	bh=W+zSOJliaGTeZM/t9gQiBjk9gOVd62QU0xe6LpR6NUY=;
	h=To:Subject:From:Message-Id:Date; b=vFGBqYwrLuSkx0EIeAvtrz5IJ8jjBmbx4Tx9AtdCqQcDq5JEavwrEd9UJxCsPmSLHy5jxN2RxffbOpnJiV2KRrgQ8wmj1dJucKyxE1YRsKbtMNoHNS2oV8Zy0ckkuPNjWzkOSDYVAk1HIiQYkn0CAe11CwC807rDgkt7JcOAHsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2cCTDS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2cCTDS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D495EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789799433;
	bh=W+zSOJliaGTeZM/t9gQiBjk9gOVd62QU0xe6LpR6NUY=;
	h=To:Subject:From:Date:From;
	b=S2cCTDS6COrHhPOtj1GoyzumYfDLB1c0SkK14rVht751XglpcqTAqAR5Er+Lcz41s
	 1VeODJmRCzYZYXn4YXy7XjYYB3beMMr99TNbR7Z41ZaGyNHlh2zMS0DO0CpKJjJWEZ
	 p9ZEuVktR3BkZpjut+zCPtvBQEdAIf3jtjTehmKOESP1mMHXeyZTeDUUxIveg6HJ1+
	 27GfrHHrymcpqoyOodARK9SGs+FgkL77fUMbk5Ilhp0m7sV8DJNTFV6esranVeZ1kM
	 CzVcf3Y0lpsdIKVvLA4q5+AbLFVID81q5Eu8H5r72sLeSHHT9tzEEiRy5M5jeTvORo
	 fdmZdthDy5/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BCDC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979943368.21150.16406860633666476221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305bab677d65c8702a1bdb434b4d3e3bf554184c620a7cd2696481ea1d48999c
Date: Sat, 19 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789799433
