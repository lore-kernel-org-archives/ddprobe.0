Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ED54A3C
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756950594; cv=none; b=o+jwSzOlTpe+F3Ih6mx/A0I7lA0M++8vxl4a6Y6AnPSq4VbEZsYj8wqo22L2N5ev1yZ9BnVSZLdEY9BR1KWnCi1BeNZj2t7hXcoEjoOrShnjDd1gTOj3fXzktmM+Iv4/6OAy8b8PLWrV8I9t5XaRVFqrXuNJwS8idWtYt/9c7Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756950594; c=relaxed/simple;
	bh=7nvGH06sWCGG0DB+JY/tT4U26B8Xh2v2HuqrmCiH7/k=;
	h=To:Subject:From:Message-Id:Date; b=WIRyqzugxk/RTE7epWMYXOZ3dTOCldngTyBCVe2GVkfj9NRkbp4L+K0vSpbaFwyRL9o/KAKxE/HbziH4LELsYvCi2yKrad/lyMa0Oj3qfXL3wjLaqE+uqFaILEQxYRYunTd9S30KmJNUTWvIPPbHTWjCRgbzysPBxLfYGkZMgtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qChyMeq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qChyMeq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC127C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756950593;
	bh=7nvGH06sWCGG0DB+JY/tT4U26B8Xh2v2HuqrmCiH7/k=;
	h=To:Subject:From:Date:From;
	b=qChyMeq6AMLoAyoHnrC5Ffpxp6o4s/Fg5g0JuNP9Q7m8IgbthVjyT+6DOa8rZlnCd
	 9sUz6nE8wxifz6FzO2+QQZtoPsEF32ZeNDSzyeApdY0J2lsaNj0C6goieGhTWkiat5
	 BWuu27sfVr217G82J5bI4BPs9x43chiZIHPF+/kT7dze2un2yePeE3atd0d4cSsc0R
	 jF55SUKcT4E5SwC8eA+LjdDUusrGJ1QzBzyRLDOgDppksWPxhXgs3r0c+mj8bOexT5
	 dEeGtTCsr4u6RPYDzcdyQ+7wJT/KnctwgmHLGfdrLaLnAiKznViW6126AJ4fYpumfI
	 iuI4LGxogzSTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97264CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695059359.8033.3750397208694483091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a67bfcf40fc22ec9eca1843e0f06475d956d86fff02e3fe16bc178969251fd
Date: Thu, 04 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756950593
