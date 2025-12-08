Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAA3231A55
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765216374; cv=none; b=G1tPqXotIqiLx9WH6wV0t9EBLQXLcdZHGh6sz6q5UHc+JfZks2ui3+ySUZRCIpbKo5le25oUrdAMqvS/owYlSEkWYHdQBOu2japaN6bT25miHUaqb01Vqb/FJHXzdQTO8LpRNtYO0Pi5hHAhsQjSZdKuI5nz6aSehxezXSLUKEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765216374; c=relaxed/simple;
	bh=ea2oEOLgziXtdeQzMqyDmUiYULOBEEWXOQntUhxqaL0=;
	h=To:Subject:From:Message-Id:Date; b=SfFFu3woVOsqPrUQEfFeIhrEwucMPe3mRh0+8kfl8jdTgtB6oyCH0YQPBcK5vax2Y/m4YpGIQm2MzT/Lo9SvjhnyoGMIrxXo+4HJ9gFM7Cz9uZdUfNklYOKHHZn4ih4k1uyGpiAm59Ep0yYL9vsK+qaztHKonCKWUDsXrnsET8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq3ahNjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq3ahNjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F49C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765216373;
	bh=ea2oEOLgziXtdeQzMqyDmUiYULOBEEWXOQntUhxqaL0=;
	h=To:Subject:From:Date:From;
	b=Oq3ahNjWFlj/46XxOqEzXfDpzNYL8Ao1tlmyYLy/6ffY962yA7uBe9XNpJA1+5l77
	 Sk7HWKfGdhPmV9k4++I7VUQOI521qfJmbJByMa7hZS8Fmdo9LEpQSVVwEqlJNcxHNo
	 nXV+2NzfX03p55yZdW6V6XnJCCXOJTMu9EeDSea5Qo9Hbya/C4B1meXwlsLJkao6+n
	 1dNVo+jJEjShHhrv9TFDG7SadKy5/+I0hoh3xccLVOxqm4JcQdkfqpsNuxPlrLjEyP
	 DRLRowl3gE9cmTOQRhT/kyaMRdH/0wb2M1SUQgDfuyLXrDzVl5ns8uL5n0U1+t3ftb
	 OucKMk8ttY9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C78D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521637358.29658.5013436632137717018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2184d68c6fdc59c1698ce1040d12a0ea5188d9c85e016c9c60aaad6d25bb7e
Date: Mon, 08 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765216373
