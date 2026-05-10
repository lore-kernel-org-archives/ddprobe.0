Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADDD1EE01A
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778401834; cv=none; b=DtEKVO+C2VpQ4mcfnIBMJEhGuMqdiuBwaXXnrGHKu2G5/wUK/e2sZThVMIuU13rWF1Znt3vKIyimLb5L6IfF1rhXM3HFOancWqiVIzBg09kfQisPZS/Ay3fJdk+ZTUEyJmcB7XRK1FE3UMAGb7OfoMf5vzOoizRjNjj4Vv30o1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778401834; c=relaxed/simple;
	bh=4CdMS8CydVXXdTLavXLRec+P/V4RPjhXQ5zfU7mtHxQ=;
	h=To:Subject:From:Message-Id:Date; b=mDJpRKUWCqHaABNhcwKX+7UJLchvWlRC4SUZhPJW8g2KhNcd2uyjoaUzJLesbk8/fLbhT5xPEneo6tLRnNoij/T8lqcf9zc8Ek8Y1xeNW6x8xsyaMtHia3uoiA2KluMMDmVrBPJuCo1HdgQkh+9kqU74pEUaeftChSeV+Z4udGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg68rtGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg68rtGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF47DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778401833;
	bh=4CdMS8CydVXXdTLavXLRec+P/V4RPjhXQ5zfU7mtHxQ=;
	h=To:Subject:From:Date:From;
	b=Rg68rtGdVaPtVYIYQWLF4alzQkH1MBfM7QLSt7eQrV5KylwfYcYLSw+Wy4a23TYAZ
	 G2CRDZF9La6wvbaJhEjg4eISoqLOp6q7iNutloZYKyoWUr2fhhdq1l6ZU9fRCvRZ2f
	 xpgPlt6QrFlIAMN4eZho6WnFuUpx0x5p+GgYNsjRdjJRFUv43pydTYrWW2ZItI0uxB
	 BQNahmLMKb/nojAUy6Lli7mjoK67GyMH+zornoYhc2xW+1in1WdlzQNUBqwW0/vHid
	 PKQn1zO/SA7NDNfnjYv8aA0x5Elb6gq+ioXoFIFU4F+6nlzXELsUpciv9gQ/klo0ce
	 7FSya2LCNgv2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B125BCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840183369.5561.4098767497603506964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c625c6c1868162c5fc1907f4d3f3bc19d798133a811c29abcd76a84fb04c2671
Date: Sun, 10 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778401833
