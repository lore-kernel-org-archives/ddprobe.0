Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399573E499
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738218954; cv=none; b=ki5rIt0xwXCq98LmOLHesv+waxdi/XuvgvMvC5w23mfDMeDofSlu7HuKNE35/fZ7qSSRKbRix3S0sp3FGFnkFqavPw5ic8IX+cAEtM86ic/Iv7UwJOTA2qs5GT+/8zLz8Nqlg/xTs+T1wzOeGEZOKA5T8tuX4nnxT0KaYdyNGWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738218954; c=relaxed/simple;
	bh=TfAKpjvdrENGx4H9cUlUsH7b0Uq1n9q19RtYyG+xZrc=;
	h=To:Subject:From:Message-Id:Date; b=Hm7t0m0HPb/rXW1dYhZybSwibARtldrKg/uS/O85+9quEfq4h+/xhuNwM/HrTqmS5Fg7UK/b4vbDl7m0qijIIuT4Mkh1MkxGl0N1WMAIBYtr6Q3tk3viUjc/ZHUynli9A7n8QSFsRZ3Vz9sV8cQNOZB2CcTuMCy6fb7w7OGFa6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r04VkFNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r04VkFNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A590AC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738218953;
	bh=TfAKpjvdrENGx4H9cUlUsH7b0Uq1n9q19RtYyG+xZrc=;
	h=To:Subject:From:Date:From;
	b=r04VkFNCAgzb609WlVJfDJgaYZ3mt4LXUmHK/VU+qFGQcvQ7O/BxJNBdYsybWPQhu
	 8+Q++V4i/gw73+cMYFqfzwC6AsASeFBbcofrFZ2ZkO7GXMGGrxSbje+9Jc0V1EPdG8
	 Yhba5vvyelWndAMTghRm32fo79zqXVadxSUolUTOhUWGZA5jk1RgT3lJ6Fj0S+Ozfx
	 ghxNcxersFsTaN/g6GA/oyZNBMq2i15/Oz13QcB4FqTZlXpD4GJOlJOaT4KHELw/0W
	 L+fDwdo6EZ4GccLQW8LdC3+UC+X7zXpEPYdJxUxb/9bcsxtFz1efVVtPRF8ZCW5WmN
	 V9+JTVFl2mScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9123EC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173821895358.8565.15081731391447716125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f9920eb2c81c316b92ca2aba0ff8f6b2bae67f10a56f622ff8e03c060b8aed
Date: Thu, 30 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738218953
