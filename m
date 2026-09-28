Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F30948E0FC
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790631034; cv=none; b=BURAZZm2rxoYMb96bqw+Iuw2Q96GL4m9MgXMHFW4yQLH5tcda6q4bEMU2T+a5ZJ+2MZ5uXGUsG58YBS6seeRd1exo9iNIqjWVEWY6az79TOoC2ROi6ausqQmyZ4NZksJBtLSooY4dLGNWM+Y6s5EnZt9uVQTRaqAP/zA5WG6hA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790631034; c=relaxed/simple;
	bh=6JjLQBM1WZt7ZXFowRF53yD8B5tgCBC077yd3CVQPxA=;
	h=To:Subject:From:Message-Id:Date; b=IOtRelnK7m6pnw8w412EXbCxeN4cvfW19p+Eg1LPYHGqjYAQ0Sn7WgmccGbaVqxyt41V+Ijsn6mrUB0kvGlwH8sh3/+JHebu4A+Ys3PU+ta5WWtdw3nv9CvEmZtwYs6sY2Rvg4RDv9R1RzugfvCCeOX24/RpzcqEKjz+r4Er0Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljyqFQqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljyqFQqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F3EC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790631033;
	bh=6JjLQBM1WZt7ZXFowRF53yD8B5tgCBC077yd3CVQPxA=;
	h=To:Subject:From:Date:From;
	b=ljyqFQqQC0CmHoG7nfVVGoB6QhH8C6GnAwrFPh6VX07aElXy1TtWAkWE4PsFHP9/A
	 Dc55q8cP9honqIPRyZeO0SUWG2q7sdAinDdu9bT+xUlZlHJ4AWSoc9fbp8xkW+QuWN
	 t4bOW73TQCMBluJspJw1JX+IUNxr9cnhxhMMyZMQtmsvYSMnjtvdgtYn9ESghKDzDS
	 ducpp8/ZO6f4GY91cyivQZ/9v0PsUjA11KuTfoqbtV4GmzXuN0yvtQE3QxW5x9d0kf
	 31a5fBdLUSLd3TVhCtFGTdFMNrGjFWOX0EZL+3FpW0gVHgNab1BLUXtFXqa+YfRVl+
	 RstK5HB7Wxbrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB970CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063103369.3140.16695609275501063344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b9c60486e2c6a955b15f9cc871c0302912eae0feea4b88dce403731c3aae37
Date: Mon, 28 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790631033
