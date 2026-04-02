Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3963527C162
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775114734; cv=none; b=dJj4lAc8fuaY4SC+l9gksaY/FWFs1xdj88tR25ZRUs0Cd3/rEOXbNvTTYKjOon4muOl0hN+0wVoKhru3fjX3Yn4Yw8Mj4KtPX7fC3AxNCZv+paQ2oZu67/1DSOcBf+CZIR/DgaQ1PRmXXAVQkxhsg/3iDSbMToT0YIhKoos1pAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775114734; c=relaxed/simple;
	bh=L08EVPfbROlPI2yzEqOdSY8eXq7cxymJUJaNxnjI/64=;
	h=To:Subject:From:Message-Id:Date; b=PrTJJdpabCDEDCyEGuWT+Cg/kgfPz/lq//y2efjScjfJwW+gqJP/EbK4pPLNTjlBnIYL5KiqidijkCZIvydfDVEqu6E+ThKMMi7E0aFUFSRqJG5BLyewWwrNkWgE8Nx0av1MDFMYfME3yb5cRXQjgi81qHJVkxgqRsJYbsikBgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khll4T5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khll4T5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AECC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775114733;
	bh=L08EVPfbROlPI2yzEqOdSY8eXq7cxymJUJaNxnjI/64=;
	h=To:Subject:From:Date:From;
	b=khll4T5jWPG0j1L+g/p23YH3xJAE+MRi0nJ7RTsE+87A5orKYsdfB2Jc3StuYht7L
	 K/fIz9ni3q890lr2lk5By1xfQWj4BePIvfbHJz8523JAIlWSqibnaJVmpiNVcZsEE8
	 V979f1F2UH0fF/vwSfkDvrXew9b79gmaLK9Uio4cfQ0qSaFkCjCn9a4UEkUbcNk5tE
	 4eriqDY82omwKaTUl/aeSPDYmkXsR34Eu363inmCNp5rTYUTB4l0USX5veeESWttnV
	 NptLWIyviZAVdnpm3BAsIYrPjYIe8cqUebPuRl74n+b12f9QcnwEYo2rZOhMndZZqw
	 7YRW5w2IGLWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB1FCC6B0E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511473369.5400.5481601840081384676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c217c8ad7c4db574b37d4dd31a46d7f7325ac1274a8c29d82f944a193559bb8
Date: Thu, 02 Apr 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775114733
