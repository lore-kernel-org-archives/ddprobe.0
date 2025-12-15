Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EB31A5B8B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765764774; cv=none; b=iVh9oySsO8ypbJy51nTvDaU8W5P5YDM/FjN6P3eh0JKr5EUOnZYVgYmisJ1Fw1VQwnuyFXbKPHxiD21VVpyTiGq3g9b0HIT9rozBjm8wjIj7sBojokAI/Rxl50HvR7OEmUxH6IZew0T6Qp5SEdB4EEGqELwxjlID6fMc44qS7ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765764774; c=relaxed/simple;
	bh=UEMlk58tt2MmUjLbz2EZAmr7PyEwq27pwT0nYoamBk0=;
	h=To:Subject:From:Message-Id:Date; b=p1238ad+N7TfF/BwRHwiWYFXpJjHQCJ7HMeuJJCdUMAqbLvvQjUwl3E7HJQDOnJ6s+a5qtKJNI+1uRtanzb5Nbv9jk82NTJj5gHBzMaMVLK/ldDJOj68JQdFkX0IDzpzOcwVpIS0gO8uxLbZBpshEzkkwyLzzFq5ApR1dEYks4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/WzQUya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/WzQUya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7313C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765764773;
	bh=UEMlk58tt2MmUjLbz2EZAmr7PyEwq27pwT0nYoamBk0=;
	h=To:Subject:From:Date:From;
	b=Z/WzQUya7BJBRqBUm+iite2Wov13nawN6OlRrnBQC6LAkVYrqHHeJEry/03QanQVY
	 prVBOPfZmvSBEJSmaP7ugX05wfKWyXFOKgUuwzvhL98jxA6XzLPlAPfSn6vgiUpHMu
	 036dKj3aWloyzawzmbtlG7wxaxU+zb7n7+ZmH31ZvcRrwuGj66JV1Q+4mcyEtNtd4M
	 Twwg8VrTU6VmY2+yGFp8b3TqfWL/r2atjW3YS7ZA92Fap32su89A8+PHL0tefU92RH
	 g4svJ7ThgP598Dz1huy+uGaq6U2RiX7u2P+0LIQHGdIqn3qjt1xxDkb4ARXjchQAeQ
	 nEpsVDghac8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0AD5B16D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576477360.22286.2440827922338244369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ffc0e0cdea4ca13afc29b8d6c1e5557ef3ad5d2fa94021cce06be80eb3604f
Date: Mon, 15 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765764773
