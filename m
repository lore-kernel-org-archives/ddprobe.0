Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065D615A4B7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718711363; cv=none; b=CIwHKONcnpL3TeYJHQ5p7/ROhoreTIOE7VYtGdd5ayvfpJrifjP4DwDG8/2Fw/dgUvKflars3yN9oxWaBvRMNz29bpuRUvCIYDhY+FzD+yZTCb1c9VrT7Ox92PCQ7KSbPPRiEEpe/FosqoovvAgACx7R4DGtjIclg32r82yN4Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718711363; c=relaxed/simple;
	bh=CfDm4Eq0NrNhZw5kphTJdzRWZxEmkwWo3QQtZ7muXaI=;
	h=To:Subject:From:Message-Id:Date; b=O+hs4jdLrzBqwsicemWSd+fy8jT9106T9yiQbtLdbLdE+3oZJ7nR8pspgWYUasopEuLYSp8YZXZlgkBKRYeRq5t/AK50VMREAO0RpvgKdRRQ//G6os059lxsd5f1TUz8VL4jnW43kfrIWcs0XxiQLc+49IQJrdMnjbneQdL3rAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THb9cluS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THb9cluS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC4BC32786
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718711362;
	bh=CfDm4Eq0NrNhZw5kphTJdzRWZxEmkwWo3QQtZ7muXaI=;
	h=To:Subject:From:Date:From;
	b=THb9cluSeyXJNdtjY2QVzG/Tym3bEW6d0XbKOCigb4Td/JZsxtPdXHIwXogfK8/xL
	 Khj546za9e+5MXvOK4QeEUmejWMOxYIXmZpiy/EQAZmj3zIsCIjCYtm7AeOIPKYaWR
	 f7k3ti6rHmONS2J4FhjLIrnXh0N91FE1ZbW1D460WgPtw29zs4+q+xCHRQwzQCKKRc
	 0bzUV8ZTaKPnLY+t7ALzKIiBJVd0NR9b6xMEscmk+N8MJZQRbOW71FmaB4wvIhOfmV
	 /nc9aaKj0rd+OZZECkvpw+d0UL2p42s1K5NToLaP1PCNtpWfBbyyfK7JClhsiuT/UJ
	 alJLrKco2IUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93F3C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871136281.4592.2715050658965613313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4674596dd735f3ba854916ecc14ff244d597030a9f7e30bf2ffa5ec828bd07
Date: Tue, 18 Jun 2024 11:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718711362
