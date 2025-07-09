Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2366928A415
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752059394; cv=none; b=VNvKpQ6uyLC54JTHqiXiTHWeIOSRgOqkYjv4/tVnRgiBBPbNFa9UI2+N8qwRDmnpEEamYfpGNUOEZi6B7PLaWH0mFcufgx2rGHP2tjmBmEY6QkRkEsgAFoxhwgaLMn5izqI7SVTNMWCrorDWf6dBcLKJhoKEuVuXcdwk+uEiYfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752059394; c=relaxed/simple;
	bh=QfdtGJ92IIBPwZSXjiqKwauUzkScGX5qkr4YlXWNYuU=;
	h=To:Subject:From:Message-Id:Date; b=DXfzzMnaZ4UskGYbJnFw+nRR3G0t8gtOhEOSR2FzVnaMf+ZXfAuIb8NQq0YqWkLB2/6KRhyeqoR7qY04mjVpl0fV4Ra8LFqrE/wsMdZ4GAtOkX/DzWTP6t86/f23LQnbi+APWWHJYsMkz1Zj+OIogq5oOdrv/yNkhmfuoQjcEVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bls0dnbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bls0dnbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A44BC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752059393;
	bh=QfdtGJ92IIBPwZSXjiqKwauUzkScGX5qkr4YlXWNYuU=;
	h=To:Subject:From:Date:From;
	b=Bls0dnbrkTy5dJ+IyxumpyD694ZYM4tZi/J3tv/i4u7Q9wUe/zjb0xlI41YZm74qX
	 UlkdrKhePXJwx23YtpEfslsquSS64AH2cI4zVwGEHbXaO79ThAuAe2bcMPN7aTvrlp
	 dFp0hlaobNCTLAiLwTt3MGCkVHPkKW3gCm4vmeTDYgfjXEaUWBtbg6MR/xgHu7thHy
	 xl+w2Q2WcShLl4sGMTodXqjTVv7YkIJfZcarhTN+G7LJdU81eUbfw9Ym10yAKR3ZBE
	 2u2BdwRyQ98qFT6fS395tWcWNB9W8ceC1X3flwPsx/rhYXHFHfUgGsJ5/SYcj9qMw4
	 SoMWPlHhHHBpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E20FC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205939357.12328.13528423980493690884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be7fb9abbf2cc5efed2a36ccfdf4637d6a054d17f552b774bf7ff3491afbeb9
Date: Wed, 09 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752059393
