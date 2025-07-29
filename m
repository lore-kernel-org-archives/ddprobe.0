Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FC31DDA15
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753799394; cv=none; b=f8AYIGobtCtOH53ylYtIm6A8pyDhSkp6+vj3mgBqoL4l97L6LThsLfy/06uaizPR3YHgRGv08lKWOIhCXeO4bJs67/WE71Eg7vj/8bPp6crxp8gkupHAaOjSSrCpPMq6IUcIPc7qELtLOVYx3UQAYPJyxlCXDqcDHbSI3c1qBZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753799394; c=relaxed/simple;
	bh=ZGZqXzTbkXZtHh9rbed8VA+XcFAK9T5OUGJfscdr/zE=;
	h=To:Subject:From:Message-Id:Date; b=OYK6rl+RExmZupWo7Q5o5k0wcaUx1j/VO+p+MKzLmSkt7H01Yb3je58LIeBj4DBETJaG/o2KwX23ObxDLFwoG7W7p1omI+acf/WBP6bLf3X74eAwD9IQKgIpYrNy8uVFWsGMRQSqr11LjnDT3xUWpTjwlTEKasEnsxiiu4OQo20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfOfG2KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfOfG2KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAEBC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753799393;
	bh=ZGZqXzTbkXZtHh9rbed8VA+XcFAK9T5OUGJfscdr/zE=;
	h=To:Subject:From:Date:From;
	b=KfOfG2KSeqhTZfEidQwaH4If5Jwv6QLoXbauLohHlvuCt/FFg5EQMeCHD29wNq1Gj
	 6XhXHdFXY8Lxr1GxUyAt5M4YpoyC9AYXF8qDd5+v3cLYvWjmTs2jGmn1B4r6lWCVJ9
	 gkmst/xIzO8RzenrAJrfkC7G3sWV19AcZ9igfGJhQqKdf1fqerQELhyKo9qAaNUtiL
	 uhf7Iqndt62RiVkdljE43fFeb8qRlRuzqpbmBeNobSNZcuytUkpGl8GCk7DA55oUKU
	 28IB+lx77vya5riHaGXQ2t5eg/L5vQt3gMnsL3EA/OW0W3glVy6wHxysSJuj0ieEYQ
	 GPyQeL98sFH0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90406C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379939358.22111.9962581020507512358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158be53b8136f7176517bdb974d91d9054aba5e2923bc05b1bc961e5739396c6
Date: Tue, 29 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753799393
