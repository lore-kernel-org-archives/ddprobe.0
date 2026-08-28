Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426193E5598
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787912434; cv=none; b=nR9dhEHVxLDkXvMbkTNiCS7SleIjHqv5JQzdykZqqOncZ1eo1bBfUwMIPFBR7XvPK53rYYomSgWmJGIzT25qtUqSLBxC6+OoIgI2s0GaF6Dp8WqMxf0qP7HQY/590GAAlaFVgyb1+K2JXU9xxjK4vFGh9bG4tp0e8sY/mhXWM34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787912434; c=relaxed/simple;
	bh=FD1EBWq/Zk9ADX1NSgrOKvhi8oTrwCKCrWXNawpjJRw=;
	h=To:Subject:From:Message-Id:Date; b=Qx/C/0GZ2o/lIEcn8koGpzwmQ4d2M0UQP3uK28rTg7vL6XtOO+ID8sT30s10L+C3HrCF2iGtortqZHOyd0KMBrUQwzV+PsGo3+zaerNXFoYSOVgZl7AbpKVwkavNXz1ioiA2s3hY0KApKuSNHhUwnpAzsrQpru+iwby3sorW/Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/FgJZN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/FgJZN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59DCC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787912433;
	bh=FD1EBWq/Zk9ADX1NSgrOKvhi8oTrwCKCrWXNawpjJRw=;
	h=To:Subject:From:Date:From;
	b=Y/FgJZN6eOrjMUFoP14KtRAEjFLzQkTK0R2bqBnKK7C/E7gliUHnMHKhjraBzEHoa
	 WdX7JjCgNPE3hS+6ZoxLe110gmCg6U14GMp/UURAbjKP47ukt/PbTJhAS9wzwoTQ8L
	 0fo0gOcGgE7B2v/L2IunAIr60GsnkWROvxObPhsgSQuqyLUSTPmvq0coJdVyulXmpC
	 aaKfMFhB+bhplPaC9xnu/MUoji4JJdC1aDoHiReqjdwx5lzhiaKCLMS68iwPgc4Uxf
	 eaqiV2E/ZHiyFoNmfX2C9CamQz3IEhvtUkCWvdwVDJ9gZxFvzIK0UfZQIn9RtNOFta
	 x/sSeeCJNTB7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EB1C61DD7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791243371.10096.1260752736689884034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdfd2cc919ea9f0331316b76bebbe527707493f517e7434f7e9d16125fc6e7e
Date: Fri, 28 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787912433
