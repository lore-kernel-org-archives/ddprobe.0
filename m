Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFF519DF8B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745696993; cv=none; b=nlXbNvR+kUP7z+xvnB6MvcBb/frsrvk86LucrdIGL9k80du6GG575vAAS4CCiJCmA6eh6i2E9DJnAxOcjNuYEKAwnnBETOAkrkbJeET3f5pZgSqwMd2uQVqai7kfZcAh/SEDB6AW9ACNB4Dr23X+jilzEcoI+KV6Z0o+nuy+ZRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745696993; c=relaxed/simple;
	bh=ANsiCvXHWaTBUxYhJJ8Ih4dzUte132oR10j2Fgtg1mI=;
	h=To:Subject:From:Message-Id:Date; b=LmmsG1uilD1W1WZRsoGnsJkxvexlCz5mCsMnSZD+GxL6tDT20dEgcSYtLi0U+ATmXGtaLv2F8ZbOalEVkqGN+J/BSrXkzcVVgzozlgQ3J8RL7ZHxXo/xhx7xqGKy9KbyYMdFOnAsiPiHZPUlz+mB8zGHsSSFvB257OiokpbNSRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG687ypg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG687ypg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B71C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745696993;
	bh=ANsiCvXHWaTBUxYhJJ8Ih4dzUte132oR10j2Fgtg1mI=;
	h=To:Subject:From:Date:From;
	b=SG687ypg3OmKWevQRSlq0KiYZQR+6PEMlYtzQECLj3adqxelkVz7wIlGleHmBSijz
	 rVLwCz645Xzfjd7gihlk4CPra5u6Jvs0B+CSc4YW4XGYYLYnnHdMf9CuokPVZWzdTi
	 9z5MZHPzLGJBPkgb2tnEdU8dylyOoZTTydD6N7vjm0BImYw9gNDA6RB5+vSzakB+ni
	 XKSzPpO7rQxTLlZl6nOswSeM8QKw/RkBjQmqpfxwo0Sj3KQUopm/vP3bp66zlViQzI
	 slrO6SiMBWciHsRrMxiT3mHkJ57JIB4ICWci1hjgzvbyGp4FUO7lmnkOUiZERKB2PI
	 AVa56PwRy23Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9263DC369D1
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569699357.24101.16659227592525043808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1b89ae35a635e290f0011d9394105dfe88b70401ae1cbb7c1f56b19c04ebb6
Date: Sat, 26 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745696993
