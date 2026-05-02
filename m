Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ED3209F43
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777723654; cv=none; b=bfBs5PGWucSgIylcD2xEeS21D3DHt5Nv6su+kZIfMtX4HwOhcH7nvcaWF6UsyLQ/MP1G8QDU7A8xpZoUY+HsiY7lhhUIQZOSJRAbQIwx9EZbdnNYrxu7mhe7hdlTsTUTmN0TGRJJa3AZa9GwCeJ3HMhgje64AzPwHyU/V3OBftA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777723654; c=relaxed/simple;
	bh=Z4NDcqHxtdiTZMmoo3W8uMWPmzplSYoSuDu9XHaU8dc=;
	h=To:Subject:From:Message-Id:Date; b=bGeuS+p1W9nr3VGfkC1PNfmQBeSDkBLSd/Qd/IpovGb+oe4cKHj3Mwm77LvRMN038nsoWRi2ZqniPGq2cdfv9+oG14OX7SCPHO+Islid3tfB6pUSonLc7+Ey8RTcMsUnpYQ39CR9ltveyYxZF+vzk+puZ9TQThMdZGqCIDHOnI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K26b6jX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K26b6jX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0A8C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777723653;
	bh=Z4NDcqHxtdiTZMmoo3W8uMWPmzplSYoSuDu9XHaU8dc=;
	h=To:Subject:From:Date:From;
	b=K26b6jX5FwdlXOsnTrkD4tRwtSKPQcNLdMeLQE4iOmAYTXHvG8GgNHmFMyVfrG6B/
	 XnBL7AbvewKhgoAELOGmp9q8ItnnYtuRVGDhe4+Kcc3Ytxrmn67PP8plTPk6nFcVD6
	 4Sc3MvxkzbxOYzm9hPSFt65Qs1p/nD0gr1xH+owVemzFyIj1oZxG9TSsGowqjF5rjU
	 rtb83v/nPrFMR60pY7NbhcpxZa5aopH3iwDDHBi7dyG9tlCu83k3JCUYjrSuJnZcGL
	 7SnkeZtdJvIPKC2i2VAigXjKtQ9tfe7igNZRMOcB/yEGeEtlNoONCa7j7BMC/Op16l
	 RBpqMp6RT/18g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD4CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772365368.17938.6528653532899315895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d3a1839a21593004b42f577b81c4d2952d28956793968152c39589db69081c
Date: Sat, 02 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777723653
