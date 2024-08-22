Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5EA1CB30D
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724333154; cv=none; b=W8hzdVPfLhunKN7CaSCXWRf+C0yhWOfGazKdxxl8N6GqrTdWl4DNYfclbXfQkM/07tJkOC60msKsYw6HU8mnrMLLhrgXDFsWb8zPPlB99VmMT48+i+lEqPLKWMmH5xgn019oESSWf94K+JmtduA9RArfyQ6DwiD3PPA+vBHIRkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724333154; c=relaxed/simple;
	bh=zzKSVfi/Tbea8kiW385qXl/h+TzyqWmNIwChiiATEfY=;
	h=To:Subject:From:Message-Id:Date; b=iGqlG5LpJIeUvmQRfYkMeHxGOdQojAkPe1Efy7a76Azxg0u1vhmAr/nFyAeV6E1AqSw7+JuXTpw1kuxOHmnTFMvTRAY0cSVxmOYv2Df24kQi5TslRgZSHjQNjIIq+/mkroOOHbjJme7DA0b8I2kstSYasBQAv4006Do5IRHSKJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L04yAhHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L04yAhHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D64C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724333153;
	bh=zzKSVfi/Tbea8kiW385qXl/h+TzyqWmNIwChiiATEfY=;
	h=To:Subject:From:Date:From;
	b=L04yAhHrAgv+84LhpNO8NNwfxMMiNAba2P3v4ckEra3N0CjxhQe0hu1VI2IrnJvfy
	 yL0JbiHPL9Ozg0g4Ziw5jgnlhiU8NK8yzQLEKNRcWeMr5CgSWNIJ6fi0RLb0r/HV1B
	 c47BXQV1Yx8Ar0WbiqJRwxAPY4RwwTIPcx19C/lQR2D9VthWbmZgaTXQYuQEktXfSZ
	 f4eazb/jD63eJKz2ScJ7UbU9sH2Z8L0Bk4tgzX4+IGyUmUsQ1EybhNq6m3o4EeiNKu
	 QUWMkeG1osnBLuZbYaKVu5h3aIOROhhzgQo+zn+m6wkKmefT8oMWwzHvWIikxwyUKs
	 b/Mlnz2CrL2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A14C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172433315371.18388.7569426956747023525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6f69f43b7e071cd127b1d864f326f27f2560555e86a775f9368e71181b26eb
Date: Thu, 22 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724333153
