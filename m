Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FC63093CF
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781087134; cv=none; b=CZlIGMmVhZG19momkOIiOAVZJt6hl9V6katLLsQcWzQnYWMmmFJNa2UO8ZzQHyklbRI8W4IgE6J30FNkU5qZYzGQWXy2KPXySyUvwG+rFmuYVqZHT6dQhqad9HYYckyCW01mx+bWwvmC1vb10VtCpWmqpt+01gTdrMPSogln7p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781087134; c=relaxed/simple;
	bh=HMGaacojX/BQxretPAPPi9be+/kf1UI/eY+VLd/ErRc=;
	h=To:Subject:From:Message-Id:Date; b=JrzEBzUZe8Z1dXuFJINYNPlAZtTbTu82hV6FrWbU29b1Unq5BkdD7UEVInISqdJleTLISNFacprI5fJwLEHm/y1NWImYKM3NPOD4BG1DiicGTS7UfTBb6pidOXqSIIGB3oslC6GbCzRaCGJcqggkCJ1nTwKJqagtawyaptelOW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rc24pyxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rc24pyxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC3CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781087133;
	bh=HMGaacojX/BQxretPAPPi9be+/kf1UI/eY+VLd/ErRc=;
	h=To:Subject:From:Date:From;
	b=rc24pyxxtkvGMYRZS2xm4yIsa6Yhsefhsfm+EpW8slme1zFCb9kcj1apN1Ahbpewe
	 n7W2R3JWlK8DoufBt9yylpR4cIaB26ZtLFr1VxgvXQadbRq6K6Fb/V+WRJGCiowj3b
	 yzycTzTMgH+HZV/0/fHNADR2Q/WI48t6MpzMZ6oddBk54XaeZ+8yCsaFjSdBLrq0ho
	 Pi441kx8SY68IisAGMzbswybUSWRKMBH9ditzQOoOFKdk8nXo5eHI+bi687p7IV5MQ
	 mkgKrLSR9Y6wbqF3TO75jx5TUq2s6MCfdSEieDjlzaFxRy+yCDD4+dXtAmf8huhJuP
	 JiffblX+yNxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A3CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108713369.2949.14842189884041945911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352510f25dc963b8d680b331d29172acda8c93effd47f9fc408203ac255478f1
Date: Wed, 10 Jun 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781087133
