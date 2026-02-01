Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EA33EBF22
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769926434; cv=none; b=oQBH12p/FjEhU16iabxBYKapizLOKB2qoOcWLbhQ41IpRgE6gv+w5IH+CnYB37ghqj0mQkypBdJUGlI52Af0rlFHrGZ4kv/GtX9halfD61Kr/iOgyHu1DFYvr4fToxrE8gCCQ+ucZqKwVme/A6MnlTkMkgCh7Wn6cOSmRZTA+SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769926434; c=relaxed/simple;
	bh=inVG/heJzhfIajlv5fZ06XL4Q4sS++q8yxQ8UDU72OY=;
	h=To:Subject:From:Message-Id:Date; b=HpJNRkdQTyjoi+KGLorgLDRJi4prJ+REqMeQ+HIh1Xchdu+j5b/mPFO4nmTBIppi/yqy/3wkTs6F6tou/zQNlYVJ48+cc7KTyV+rfvl5IousQ1y/gLkz/32Iv4KXRIY8RaOfk+/XIFL/5rkFjGrfn/2WwyB9SkBsX8kfD+DBFY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKCNn7Vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKCNn7Vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8897C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769926433;
	bh=inVG/heJzhfIajlv5fZ06XL4Q4sS++q8yxQ8UDU72OY=;
	h=To:Subject:From:Date:From;
	b=KKCNn7VbMyBS6gXiezYBZKLBd1hPkdijv1KGBZcuH9anRhq0cSoADXDFYjTCQoqEs
	 hqVzysDuLM+w1TkI4FRyNtLEBrE6GBF8mJD9tebj66EU8R7cWArsfVzbm1qiFXceg8
	 ier133vy8YF08y5qw6MIse0T7iVHI47/rfJnHO4EQXpszqhDto9fn3OUYmqoEsTmNs
	 xC6najMIDXBwwKpKRQa0fD65fTxXvYXQBnXkc9pF2DBDLja0uT4Y5UZty48dpsY6Oz
	 QmucUanD7W7uRUAqGOsh9xQp/8rIqvsXnhEf9uR4y/jv6e/E7IU0xMD4yOnjHFQJuY
	 MjJ5QibtvjYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97033E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992643358.26174.11633588958192136881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f48cf02635ce7d36413bd94b639f79cec0a465c5a8d7ee64da7d3a5a79da931
Date: Sun, 01 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769926433
