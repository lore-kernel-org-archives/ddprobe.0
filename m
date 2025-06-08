Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16567635
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749379794; cv=none; b=TwfS/dSnMNEr6Gn75rj3cB0oMv2RaVEUroHHtuBAbw3+VxBejULVEo12on2bymtz8jpQHSTEoaayp1vbusxc42K7UD7KdjSqY5jzcoY1hh2YKhpNz09jPlMeCs1jyHUGKb/0h8O1yz+Qi6EULbLp/xAkKz78xs2q68ecLgCS440=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749379794; c=relaxed/simple;
	bh=aHsyUo92O4RSWAuNbzDNHLDqsBlwIoZiZP0PXhU9Y6g=;
	h=To:Subject:From:Message-Id:Date; b=o5BK9HD5URvFHRAWtkjXSnEDU+TzQ66UTWwEz6uCEYY/5nowkLUDillpjaPgNiTmbiZcxXImUvR4XXYcuSXIEbWJXO9abYtd2Rv9IXQl0WGxwqiEtRh/ec2GchlGQeSlZVOSkGDd1EwruCLfPwcEQaksX1/q24j86l6ceCeEqIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ou94JCrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ou94JCrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3074C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749379793;
	bh=aHsyUo92O4RSWAuNbzDNHLDqsBlwIoZiZP0PXhU9Y6g=;
	h=To:Subject:From:Date:From;
	b=ou94JCrhB3JuYIPs/50O/1rXx54rzHhWZmNq795hu0xj4Fyclbf6yslocSvuHQ6+G
	 9A21V+NkCX72/L/oZRK+Yw3bTiLkuX2Dkp9jTTZVmZ5HKIMERLIF+W9fyjkWvTUm/v
	 4a09wAWBJGgeAfWTkP8zxv0Pa7IAc2vzixJ3uHkIaHt1EkjfuHNXPIEuL08oEBjJhF
	 5JFJkEC9FDIXkLp35sGVFUUJ73qXb31x4Xf0Skqct+A3qGyoPW+jEyU/fmiuGoTmV7
	 qPZH74pgSWd9zP67reS6cjAXtZrc2ZU6Rm+aRqTuTKMvtpOD9NojK5sxV6CtlHp1KX
	 hZXI4gcoke2qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A6DC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937979357.28597.18220057805436950569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75fecf6893a250c791c6cc9328167b2b7e8037d8853b3301d9d53479f3ecc82
Date: Sun, 08 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749379793
