Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223B03064AA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768559634; cv=none; b=XlIB5FXBGl8BK0/7I/R/tp2IAsLcMzp/NfMwHhcA3nmTR8ExqZOh66xHOjdfwUmg+xbPhzAsWKtHNIllqHMc0+5kYfYzXXCnivxSNbNyyM2aGqq3AMe8ntid50N7/6XJYT7uQQABTIEAFJdGqwOVrjivFV1nZOxs87Ibf3ao74g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768559634; c=relaxed/simple;
	bh=9sugE9xX3abcYI73wQhJymWkxElpZ6WyDWBuWoLm1+w=;
	h=To:Subject:From:Message-Id:Date; b=hChX2SiZHXTOxOYjcx0cHeOnHKflBk2zQ0Nak4CqlGt4N36XCzwAOcWkkQemUCTIud4/BsonbH1yIinK7C5mXBk56g9vLt2uPLrh6obfP+rbgyoXvwzJa9sQlDhv+UzD0VgXbATnZOpmUPMrQoXsqNXiGJdgX0Y9jqP+yII+kIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6q0m93p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6q0m93p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDF7C19422
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768559633;
	bh=9sugE9xX3abcYI73wQhJymWkxElpZ6WyDWBuWoLm1+w=;
	h=To:Subject:From:Date:From;
	b=R6q0m93pe9qdFvD9H9BClBPC5HNqfrRInBgc5IYN6gfFuFNQhAif8QlvZt2zUVU8b
	 j3U4ipwbNi8Qm3soEZVFqjIIi53tFDFrdbAHLTtdq5GeXfSvO+t5y5E9XLQZNA6Hyj
	 6jXeoFSywT5i5MGU6Y0A3jRpojTieFl5sGYEt3hLYJtSTPBQyasze3Nus07937qAvN
	 pWSKnIHA4MxvWYOoT0PyL0/FGaxO199K6n3HIJKimTeukPorIjC6Jz0MXgGGb9XVw/
	 2gs0O3cGt3fpFJ5eBM4tPAGyglaUg8XGTwJ5PL0D7YtsaeTuzOVmhLmvU4gVDpM9dZ
	 V7m4qyzmEuZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF71D47CD0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855963357.9933.12894263685796235986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bb6d3e2d32eaa2e194e760913c5a0bfb19106ec6c113fa2068b320c26dfb91
Date: Fri, 16 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768559633
