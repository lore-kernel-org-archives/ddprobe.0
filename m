Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B224236A70
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740667134; cv=none; b=GOGhw+Mb5/QpfVlgDd70Y+GSuvwlHI9Y5XjBZJHy/WcMbibUsaA1i7HhzuMfSSeLiGbTnd8Im2+BJ36Yja5JuU58KLMYu5a/GTeB0GEdTO6781YkRgWUYJF5Td9vRq5CX8Ar5pqPubhMXSfmQCdUgiLuQvks3oR8DM8E3gVQH7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740667134; c=relaxed/simple;
	bh=AEEyQY+87jYFABZUB+6C69HnRc+q3qwokUMEY63X9Iw=;
	h=To:Subject:From:Message-Id:Date; b=a31gPY8nhP2qylOGNkf7R33KGpgNYWW/svK1mqT2wrIILNtCelBsn/O6eKPqpBx5HPLKSRbV0EvfcL5JfdKxlgFCoiohZeozIVyMj45PtUP+1wQA/+Pn2DP0mBKO9MpP6Oq1RYXru/ZR97lvIPBEDckHMowBShlzvtkxK8MkFEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqyWvaxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqyWvaxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45AFC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740667133;
	bh=AEEyQY+87jYFABZUB+6C69HnRc+q3qwokUMEY63X9Iw=;
	h=To:Subject:From:Date:From;
	b=TqyWvaxQYNiDiJdSIpKVBkZTnfT0reh/KjNzHZiCcTHmfXqt4S5D6nWhKZJrpW9ol
	 yaEy33yB7aamVl0GBM+I4duIWigY5YqZKEa2btNIzS+Uyl/OFhp4ng9ICSJoezKx6z
	 yBpGbUVKK6Isqlpl4xE9f13+cWMG4S6uM8iI6yEB9mhRmYUYFqziLcz17ghrI2Xg7j
	 1enrc0cPl7SLywMsV29JH3BE3p34ZSOH09SxBE4M5tPuo+NV4kP75r0pDGGlzP/95U
	 MSol86yvtwa+yzq97Tdzk1I91bp4fO9rHeh60c+rD8GVCNcEoPzWoSKLjL1k5lKMu/
	 hGnF0JVAolq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92124C19F2E
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174066713358.12011.12031479905536389409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bff0ad02b0b53e59073b307d93cb7f40deef72cc998c46e576d42f7d2524437
Date: Thu, 27 Feb 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740667133
