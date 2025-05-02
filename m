Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BD9137C37
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746163194; cv=none; b=Ghk1S+WV1CsX8aomsih9j10v9zWOGlev8gYoFv7p/aZat2MhMp0kX4TmDdKaWxmzi3V5nPfAiTNUKEQ1KZemPYoZavxL8DdV++zn7SFOBYxJ74cjO856WwZyThNJbELUAg8I+W5fsArwhNfqF9Ye3JOiaGj3C0ZUYXHDQk3968E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746163194; c=relaxed/simple;
	bh=cgstwE06rmjwXuh/bUlkkpABn6FKAwgA2+RTId/u2qA=;
	h=To:Subject:From:Message-Id:Date; b=awelPAPTsa6c9GbCoy/YPljTwGXudTPZvML15kD6qSC8xdhM3itBqlUpfeGauW7Rh8+JiBH/yXB71uXBih/viF7fU33HPGU2BXIgZY7b3y/+G2XJZg/W0ixYwHr8LtMsixgooUCT1RagRFG3nxtrPByW0TMXNdM7tZ3y9A8+GFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukv+aTEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukv+aTEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C31C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746163193;
	bh=cgstwE06rmjwXuh/bUlkkpABn6FKAwgA2+RTId/u2qA=;
	h=To:Subject:From:Date:From;
	b=ukv+aTEzVruYPYfYKi70QqIDwqHwSbGeabp+v9Vlzuyx1dcfaQj0ZRbCiyqptlXyw
	 M0jZ6IfTbfqproOBprv9WgAHoQUxhZhL/UhdKJsPM+ylfkst/8xBofDeW/nYL6v+qr
	 Z+SOoxg1sGoutDaT3WADyULL50yTzGa36HM2jSwcAZYzpbQV1+x1tPwXi2FPztrQPF
	 3phrvs9DNnzJ2Xnj8iX+y1pxYYda4AQAi2PH3u53eQdrJ3SQ96glj+ZSbQALKLZtYT
	 BPmt1dV/I+qZcv3afXPoLoPfhI688bY5t5rIUMj5vUJ7erjRptjMNAyIi40+C5h/XQ
	 BF2Olm9NsdGQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176DC3ABA5
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616319357.26266.494115973836603510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d3b19564e95eb463adc8000dcd98ebadc1960951246850e5e5b7217a129c44
Date: Fri, 02 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746163193
