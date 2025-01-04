Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7E51B87EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735992954; cv=none; b=KQEpBrLHqNN6KALFHUUB+EWvG9m6F2EjKTL5gjZYdn/47xO84Q5wIdt0Qh/TjjfujLXAQN59uKihBoTM1Zi3WVmIX/L3N+suxg04L3clbJHjpNnCeCEo+eU/u77F7LCwVSJxYg0mpR6EA/n0Rv4jJtzkOVyilU6fBZw7eZBzMZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735992954; c=relaxed/simple;
	bh=FfXIGDtre8OwQLhHFjynE6hoLGXyi5yVguAAoNAKYkk=;
	h=To:Subject:From:Message-Id:Date; b=LIGdY/5YPn6xQhlmp85lVBP8flU40LQ7t+gb2OKnk7BiWKCYQkKCJK2qYo/FT0hC5uRzEQrrsv/6kGPfPurePhyrfSPzefoL++MeFTwOhFGp68B4J9LfyHqAceOhHGu2jnRNZQ1zylxWOTbaiL3lDs2Af+iOffjKouh6/0H8m68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7hLGjVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7hLGjVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9647C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735992953;
	bh=FfXIGDtre8OwQLhHFjynE6hoLGXyi5yVguAAoNAKYkk=;
	h=To:Subject:From:Date:From;
	b=k7hLGjVF3FmK8fjBwJEOPYSlry/oPhNK3FZgk+0F6+pYofpWpSEW4PZWx/4JQUJLT
	 nZxiTONKJsk50e87hsw98+6Mga8tvNRoICqire18gsA5J0fJoqTcBl5+kvped21qSA
	 7EZmPLGyu+elA8DzWEhDqUV3r0qfbNfr3YS6Lh+SbflpZVTUO70/YuazJz8QK1Dt8K
	 dGiWLZdp71ARkU4DdEax024YJvZst0Ua5JN2FjnOH9ehv3BtOI8uzf5u1jZ+mJb4ZH
	 6VF0fWgJTTLjX7miY58TGNKWe2/7sf9QrR52aI99ds/XF1SnaJo8yToZJig/FlKOJj
	 R9UphVGWYYpjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90107E77197
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599295358.24645.524160925025479971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70101b8cbc1d36acd88447d4e54eafa70ea70ea5f72aed4681443cec70249a19
Date: Sat, 04 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735992953
