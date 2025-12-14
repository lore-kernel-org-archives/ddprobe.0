Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F71840855
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765729974; cv=none; b=n6+JeDuRS+VuLN/ozV1U5Ehb1pC6rT7qdhPQGoxBAaBasztKAHzp2v/d4FwzNmBdbXopga/rd9WY4OMrBqFGUYfA+qkCZoRClKX1qIU9dn7eoi3CJa+bfOaZ7eQHOGBIHagiluTxidFTE6PFTjlT9b9pHDd22NFSiaTDSmgbSMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765729974; c=relaxed/simple;
	bh=e5aX0JWpfdz6CbATi0bBhXMQhldBqEEBVCFdFW039ng=;
	h=To:Subject:From:Message-Id:Date; b=MjvdnFxK1Buoj15/HCyGCoHyIxcPB3pkEtsoBLtK9W9+PdhKo0Sev1T2wAE6//rh0bbXzZYt5EeEUeNY0PDsTjloPcGfH5Z/xt/h9iY+6mRZ/j5T02EyQD7297cSfQAawVNGsrS11OtVKdc1wU0SV3A/9HXDY1p/1q4NQ1wgJ4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUOweFJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUOweFJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A875DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765729973;
	bh=e5aX0JWpfdz6CbATi0bBhXMQhldBqEEBVCFdFW039ng=;
	h=To:Subject:From:Date:From;
	b=MUOweFJPm0u3Tyu8AraMGJmJEiQeDPE1+zVVFQ0h5tvnM1r7k+o0fwzsvxUAhTm8g
	 E6bCVVhcTk2N6G79Z6Ch3QrW2Jqs0ZKT1Dq8+DieWoLXqAKUv1rFCw8wtjhfKwuhxw
	 fPdUzro+8FNKFMn9+PJjnknj1QdGb3nsKaBnCTrvvu67GLzFte+JrDJ6N7DysmBrNN
	 1VDKHDRWWbxtMfbMZ5j8Ro+cJYL7oEkJ/8Bk9SYEJEdGvSy/Bcs8gsZIqlnzDvP8rB
	 unNRTk7Bw3+kOQbk2IzaHjERcCuKrbCjbbhj/4NDysRyR2jSdPBKAz6m8jkGxe1RVg
	 Yrxn4wUji88MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B9D5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572997358.17494.17746122539574496582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f9a6fe4227f505c9c237e2972f20ef03b63f38af9ab5aaa5ff799e89cb6b20
Date: Sun, 14 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765729973
