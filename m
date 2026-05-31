Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405B615E8B
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780230274; cv=none; b=OsGlzCwr9jk3ePqAPrqahjR6yMmjgS0mIwHyLzBBfcOtogZWMZjwSLF6N+qzaQcdO/B+X6IuipVuBdtRbCDrp/iyGEFY7BWX8tY/7xrvYEFP4jYZGS/NeGSo4V0sE9gEhsYcyRx1cHHv6iL//F2HO3zsdEZeMaqxm6+B9TT4EEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780230274; c=relaxed/simple;
	bh=Xpjmv3ZF5O7cHe9l1UGS77UQUU9eDzeP81ErZWZgg90=;
	h=To:Subject:From:Message-Id:Date; b=Br67ZmqjmaMsV5vrfgwb+mrGlBS3ZxpGQzL8X7NXpYg55oSkIid3Hh709qobDeSlLv2YZM+gAVa5CIppIiberP0tnzPFwLTVnRUSMwyHJR9gGBOtHu8L2nCiA/QaIqiCw743XGZdZjfqvI/tReainKtFCyMUUr5meA8qglJmobY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egfEYayt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egfEYayt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D43C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780230273;
	bh=Xpjmv3ZF5O7cHe9l1UGS77UQUU9eDzeP81ErZWZgg90=;
	h=To:Subject:From:Date:From;
	b=egfEYaytA7Uhrd8N2e4KQKM0nI41uZMzLITPtHFC6sfBOWgPUENxEI3jxfAcib2cF
	 Ab5NXWZU37fdy5c0duhoh/b5cto9zxkNm9qjJ6fC0ZC7w7DlJ1mAqKwcPNKRMZHk4e
	 C7jEDJbfnr2q6veK3Uv49HvzRj0Opyp5e9b6n9dy+v0ZH6u7FJUakrWHrPBxwKgC3M
	 VIeovox68wU/Mq/USgLbquhgwH2g4KFC9alUpFsyKWZQlmhSEytbvjGJwf/RhABGog
	 1ZpbfWhnp1+IrfIpxaZZ7a1QsLUdatx/RUKkxQ+zjpM+sYzBoKfgurxk4O7G8q3ZxF
	 JusKx5RytIIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA7CCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023027367.8282.728153252360754172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb2aeff2f2e9dc0df9d89dfe6427e00d46a2db3b3466890b3e5a1121cf63d79
Date: Sun, 31 May 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780230273
