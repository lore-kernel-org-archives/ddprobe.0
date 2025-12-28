Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD6B1EEE6
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766892834; cv=none; b=YQ/BJbc+Gl7RGxqVpDwNrHt7aF2ppGH7Sd1N5ZfQ5H4SA9a3tbRTHnS3OmuGPIIKtH75sHU1XsKJdcSs1C+gkTkxHN8TjFlBZ+JmuCaUisHN0QUDq0TSR2VXAfwfFBwiiB9OgB5tshqQ9H/zW5kCnp5NCfONHKwO/2FVkFGQtHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766892834; c=relaxed/simple;
	bh=17wrvNCTo3QqM8P7OSiSHpBPFowvsHFYLRrw7DVsWSo=;
	h=To:Subject:From:Message-Id:Date; b=qQptz5XMzXFiVcHyXTVrAfBjqIe51RCWY15o1EdxFkDhF36tcStWEMzs/0SnnvK5ARXf7NFhx6LSRp8np6Fdv4FgWCJibHKBSEm3O9TqoinY7jqnVqqStyhqPaesKMjv/XwoAGUSJ5zreoMDHh3tsGAzU5zpx0Dx2qnrsy44Edo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRpqus2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRpqus2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA109C116C6
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766892833;
	bh=17wrvNCTo3QqM8P7OSiSHpBPFowvsHFYLRrw7DVsWSo=;
	h=To:Subject:From:Date:From;
	b=iRpqus2lllhXMjFxSL+8bbJ8d7kYYAG449cQkCaAZgmu7y1ekSuMSOQ24Q6nM6JaL
	 PSVKtSG5xDH3zizSHB5daYE/sbeKZ4r2T0879SHeeP0kGmebTPmTb2i6FSbPzHvKUL
	 r/btxFqdia/z+ukp6ZHDSq8bcI+JA7nDh8WWBLFbxF5+2MbtU1s5ADJkvvonL5tl7G
	 P415Hlr+0vlMGqKqK3FP9A/2gumAnUZLKXx8PIl7eoY/ofMFC9XPMMj5XTJU2dlNJz
	 SHDX6TrR7qEyeLnA4lpgt9Gpin7C/YNrTYYZPxVpvfMbrnWO8t/9C5hzwWgWihqwQP
	 uZCUyPHfuQ8/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D0E92722
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689283358.15479.12109468840511282966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f745c389866a9e326329c71c51b496c6466a856576745841c8296a5fbc928f8c
Date: Sun, 28 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766892833
