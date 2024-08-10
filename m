Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1624F13E02A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723292754; cv=none; b=LWUMaV0r030xtDucb1++U3UTN3oDBLGBMRyfcJfmctM+tXCO6bQQfCBOHXTAeHyxVq9XBGoR/G2ZhBNrCG8wieAYhw8DryaNO9vn85aXH+t6rq3xu+Adx6YQHpBvCGxP+YdYmraYW8jzDRlaLw4NfeGcUkKsLmD3SkM95aWU3JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723292754; c=relaxed/simple;
	bh=Z4bbxiA7karIQp/2LvGaaIAypTRnoNweSKWWnuJ0M5E=;
	h=To:Subject:From:Message-Id:Date; b=CKrEexFTT5w17Fz6UqjddBa8K5fr/ZaZXENF6I1NN8uR32gp7nnpg9fYris9t5A5j7bw2iMQZkcD+PZm61XRqMqC4eQT/Jcw454YCfcPRwKSZgQmCvoefexFfPYNhLt7r/XLE+pnhz1si3h+iQeerRyiHr8OLoBoD8IgPTuRUkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcz4mxVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcz4mxVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB0FC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723292753;
	bh=Z4bbxiA7karIQp/2LvGaaIAypTRnoNweSKWWnuJ0M5E=;
	h=To:Subject:From:Date:From;
	b=fcz4mxVAvaHxY25M55I9aWKX2zGhpwVN7aa8qwpYbGTvLYHP0iAb3fgR5iyikBL0o
	 jDh0+NMkId/1Y2HgxOYjmHY5ye1sW3nzsnnwm/pKGV59lOI0iQxTB56L3/EYbiw1rJ
	 0feF/jtdIM1z+/4u/Q+diIxhktr0sQbE+2KGeolFLdZmeR49Y27qcubZMxytibXcRd
	 3ykoHmzIKQ2AACYA9VVys+dL+pCkBojNLF9S4pUToalTz9KHUWY4mu3VyScCJiE/63
	 bDe+pib8neg8fSq36mO6Dz7VZD+FsI8ZMviUV8g8ukx11VHy6GpWaigzSWvvHN7taC
	 8wKY1kkHrFO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF3C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172329275358.3592.6967852129503267046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763482a7d91dfaa55df392c40a5a69d54a0421e0f04135b413c09545af3396bf
Date: Sat, 10 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723292753
