Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4810914A60F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783553314; cv=none; b=EEAJU9vBbiiLXxiAm2MXhra3Sog1IZgFe0Bw839bQTXynLmByhRRHNdZKchyA028nho+hMGQHWyjt2SwKOwo/J7vw5y25wpUKcTykldXgC40YGw6PM+/jmku9QzSHi+5znNJZpM66ksRC7c1ObA8w4LhnRnAsoek26RuAVupogg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783553314; c=relaxed/simple;
	bh=EJRJ7O3IjhaPpUbsTH2qGQU66A3zWkHyWhieQPDdB/8=;
	h=To:Subject:From:Message-Id:Date; b=TeYUUHfXFHqEvis41W+TQcKy8i2xVJ2DAP5LR6xieQ84KPfvTjhIpd5HPjlliCad6ukSQuxTTUx5AiKE34NOyA5RN5PgC3seEOfq4hu1Y23oWceE8qRoubaswe960AQzFZuSWRE613iiVSWlnYShXuycY/RQ3bKvGZMrFt1DF1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXsW4IcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXsW4IcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2CEC2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783553313;
	bh=EJRJ7O3IjhaPpUbsTH2qGQU66A3zWkHyWhieQPDdB/8=;
	h=To:Subject:From:Date:From;
	b=kXsW4IcQcKYTRqQTYvZn6ovb0nsDYdG72WzHK7aEi5PffQaHWMomdaNupaMU81Tda
	 IrQlZjiKTMfUY7x19qybpa8UGhyrWWl8/m+aNBLLPCWX5hPslcYfneONGwuuwTPGkb
	 4nBwwXE1p2XnerAOXPpXrF8L9sSn+KSnahchFy9r2MpZfXgNoj9VTyZEluXSXDrT9C
	 xhY+zQx9m/N7jKelHUN2AM6mcEu919AO0ai36qJYKFrxJ5cEYw0qr8dlCL5EW8yjE2
	 xD5z3HIyYFKvVNSxR5uFz7ELpfmxnpVVtSigAACCS97CFP/loA6x4UjR5kkcNMC+Ta
	 VdFwYbvEd5ltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E86C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355331368.2076.9057826773151898705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa692d4daa07db3b5d1bd4369a6ca098cbbdb705eb81328bf53e4af0a9e428b1
Date: Wed, 08 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783553313
