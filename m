Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539B737E2F3
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789244434; cv=none; b=cGHi7GJfC6ZZyq4RFG96RjPO8EdsZg0p5+/cwQPbcS0HQdg73ggcFKLDFBeUGoYo10Nun3fin4tKqURE0u5PHUsn9eWxmU/fgoASRJxz7lzasr3OO4n0bejeJdIKo9eUQKj50oRumapK3A6U+U1FSdMFF4HDJ1DfkYV3pBKzPKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789244434; c=relaxed/simple;
	bh=GG8N9XZaVZjM33WgcUaWB/DYatm11vrlCcGUSqgMVyU=;
	h=To:Subject:From:Message-Id:Date; b=HHMPNmWxxn2q7jq2xsteSyp8go6xiRGO36X3BkCrVLF6MwrWFOzriTXuHymXX5jg30PgtfBs5F7JFx5OUq7ny8lSpMWM/yZ0Lm7w8riJNtzwyaeLRG9hk1YBsIPOeon8o0HKlEcqG8C86BJkawtj4zGrqGklDJEnMcFhtkodI2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfHQ+irc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfHQ+irc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3731C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789244433;
	bh=GG8N9XZaVZjM33WgcUaWB/DYatm11vrlCcGUSqgMVyU=;
	h=To:Subject:From:Date:From;
	b=DfHQ+ircofNSeMBaMAho/6diJzKuBRGSujsVDT6owhkgNRVJcfuUXsVs6djdAe/w/
	 77Yas5GtoamErxECmJfhSNsxUR13siZ+KHvbMKttdFjxrTsWQwKFSIEHjkyK41c02H
	 NOVA0d3NfQyoiLPN0MS+Ewg5LVupvNP9jAakyMVID8VRGpVXBGh42mN5uY8ec3kVg1
	 q5M7P6dGxB2c7+djzztv9zZPSZGpuhzB0mUwC19RF5NsqvtYAzJMcgQFusc7kpq5lD
	 cXwnZ9jYFYRP1gLLE+lDyOWaSc6KQiXRND1NlAzLjaGeMTQjbpJvJ/TFm2rge6sCaT
	 fQkVHiO/6RnMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAACC88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924443368.28752.11067830454766270616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3840fc20a84be12c17fad253da490b6aa7c60aa3a176d0bcd6edf5c5e3e62d17
Date: Sat, 12 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789244433
