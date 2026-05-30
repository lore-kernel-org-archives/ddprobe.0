Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8B0285CB6
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780182874; cv=none; b=JLRah8qhH01PlJWbu6x+cTFYMhF+303zQIdzEMxclLulDGKVF6c9+pbeUiIpk4+GJprVWSFLPNZCb+ET8/dGuKIhnLVlzkkSwqVZ0/4vRAw0YnQJyoAa9CIBOtY78EFjUh/0rkaFpK0D1W69b4cKsMIbC+I0B+lreoAJAz7GL1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780182874; c=relaxed/simple;
	bh=0T//2dBxw6kladoucTD2w2n63fksitfgQCnaxlS0gwg=;
	h=To:Subject:From:Message-Id:Date; b=AlM7MaIuFXRC5QhCm+X6IqQJj7eRSwvm2GgWfdgAIzFb9rnfkMqlucyOwt6ux8OAdftE868b4sKxS2A+6bV25Ha/yDR7lf1rrdKOx+EvCw9OgRPJ9ZnpLlKBVxidplD6wg+EQQM2EbN5rR5+nhLYOACiR5/QfndjqBB9b0vlwfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJLUnTH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJLUnTH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70AEC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780182873;
	bh=0T//2dBxw6kladoucTD2w2n63fksitfgQCnaxlS0gwg=;
	h=To:Subject:From:Date:From;
	b=LJLUnTH7ssaUhZAv3QlFAVcKeH8wirxl5Y9yq427m3bFiELYBzHtTURCFNNRGgUuv
	 +5m2H1DTYAL/bBKhqEfSMmClvV+eCiaBBxu/tNtn4MizpBDtcOnghwm20d1OSVF8Q3
	 G+9Pa2hH68X6WEPoSqUO1IhHy8L+4sIWt3kr8xarg2IU+CQvVIPSGwuKeSQvSlazkS
	 TFfmofpQBoOWz0y/tqRgUqgWgLJWfDV9+oXxpQLICm7F6xITSFr1Aodjx1wyLjygAy
	 3zf3xGtGDMj/6p5Ak2qHsw5ptch1Ph1EcCohV6qmchHGjOuHzA8vlQPQs4aVnQEvje
	 O+2bUe7/WKIqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF2FCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018287368.14725.5637285033711993391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52210095d0bfb002282374994abf603e0a2291b75f4c1287c5039eb9204eae44
Date: Sat, 30 May 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780182873
