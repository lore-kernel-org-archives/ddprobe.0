Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE7D31A555
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764009715; cv=none; b=MsDQov29+VbZRIYjmjtJLL2KWrvV0l4oAQsU2Fpow4kpJcwss5d9n6HMDAqrl7AeCOrWyWa4OgH/1ehQBq+Pk750YpJVudYAaWN/I+m9pabY4uvgfrqGQbVeu1G0bgvBPHbs6yu9dJYni05bRBvJOAnD81WAvjkwm5x0Zw3WOOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764009715; c=relaxed/simple;
	bh=7S/Fv5cdTXJNtwK6Fp5wdLCjpYjmslW7jVoTOi5cPEc=;
	h=To:Subject:From:Message-Id:Date; b=J76DR+iP+tlDFsDBZsOseh9NhP4qh0s/GVQp6ctemOxpvZO636BfQZ5aCbOIMwY3X5I0FLeYaaKHlLr3U+YEbb+kspiUw91CAA0OBErh+jd2cIlhTEe+hEzBfXfk+wrnn53bNc+vYV9x0j4pNOeQEhPPFiC0sqO+INuU019OJFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVM2ZBGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVM2ZBGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6936C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764009714;
	bh=7S/Fv5cdTXJNtwK6Fp5wdLCjpYjmslW7jVoTOi5cPEc=;
	h=To:Subject:From:Date:From;
	b=AVM2ZBGXjVB9i0vIhpAutQ7eJ36fmXG6Z9AXaXLCXjWTfrOi1u9zIVVUAP77Xwfo+
	 CF59brT3sDTzQfEgmN13z0OLSpDysfGDyMn9UD69PL+ihC2bfA4GSMNl8fOOH672sE
	 MbL5k5WbJ1qPetlWdUp3yfSw3N/qY6jCWF1+6U1KOT/YyzIwULlYWCevksiOXz3L/a
	 RRhqfFvFI87h8HpF7jdfYii1p8SBgE9ZZWKAqHDIwTlkhk6v/dVMi2k7YLrGhENNeK
	 36N65h9WBG1Ssea+l/rIzC7li5FGG2yyM5V7IkM4S4SGb8HMZPO+HeQU1327LGZ19B
	 m1O3Ud9lk3NYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A817CFD347
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:41:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400971402.19053.3038771459507792773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960ee88278b445fa368e58b5d69556e54140d5e0551a7b317f21ec75c7231d9c
Date: Mon, 24 Nov 2025 18:41:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764009714
