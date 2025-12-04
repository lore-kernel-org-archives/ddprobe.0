Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387EE2F7464
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764871374; cv=none; b=o4dfp0nF5IpdPW5ArBri+yA2IGHpdHbrpdZpPiPRzhXIOnpqZ1KKhkOs6lAKVOEub+F3YQxeC0HatGxcxiSBj89u3DKa8bcpBPmq2aY9RzK4KgmmLiUB8dagH9hwLG9Q/x8l1/VYcC5RClooUNCWUIbm3IrCbThPjTl7z8mPgyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764871374; c=relaxed/simple;
	bh=dLuEWKUoeRq2MLcWg6BzM1KiLBYvDy9p6ITkYSmOGCE=;
	h=To:Subject:From:Message-Id:Date; b=jxI3H8vVTDa4T4XUPMZ+yt2x8dXohp/gIXVghoi53ZiVkxuPGxRwx25yG08i9Df/ltK5H8gbDbn7/wlgA0+LTXd1Pjz1OE1BILAnK+cykTKFeWX13T8tCwkuQUggGhwAZO4B9cGGEg/8alym00KfkXbFlKA966kE2yHKpxPqCcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD73N4Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD73N4Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1971C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764871373;
	bh=dLuEWKUoeRq2MLcWg6BzM1KiLBYvDy9p6ITkYSmOGCE=;
	h=To:Subject:From:Date:From;
	b=KD73N4EigpqDfEBypLfLDakkYszshb9LTrgYPsoDaKfld69/r2XGBHquGz/d31M+J
	 vT7qbKR5ncNQHDI0Z1NEVP+OXtNKsWAYDgF/WUwcJCry4NA9N6t7AAEPyh3TesycxH
	 z7XPu0Lukv9Om1YpBQ6D/x4fsZsMQ0UYqL1jJv0SzxQyXBINHMI6hXpiUNSm4KC7Xu
	 4vUyNZ4mysgFainzOZEVvA+jfczblx2WcBdJcpRLCnmJZQKHEeSt+04BZ93uMVNEWl
	 ZDK7nUiYMT9ZSqCROABuSM9vzqXtzJe/jRNXjjMJfBq4NM0DF26iLEV2vot/g7CIIz
	 Gm+aDLEnBhC2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBBFD24458
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487137362.21283.16160362543732096456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb844468a01b072c239525c1cc7143c5723f6cb5b93424da63cdbf855fb5545
Date: Thu, 04 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764871373
