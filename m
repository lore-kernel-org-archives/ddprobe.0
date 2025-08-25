Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2036A3002B0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756138194; cv=none; b=UM+DaB8iiZR2VuoL/ci9un/ZvkTf8f2kh+BRyZojQ1Ggw75Bny/m2YC+Be29TAyMZbereVIT7mNqOXqb3luRRHrpBfXO6mnpL9TKnUFiimkecdymSpsmoRzcwgxalqYpsd5bQr6iu0nEbJfdIcZsr+u6acNC/hqghtQcLoZPQ5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756138194; c=relaxed/simple;
	bh=Ov4aG9X0Kj11iDKZY/tR7msHjbkc0UBMBcfsTo4Hl2E=;
	h=To:Subject:From:Message-Id:Date; b=cT1nNCoKezSrdp5dORQrXWpuW9Uxw3eWi6YZhWHS2ZskG8Br+6x7GkB7sWrzsb8q+YP1g449ZJf0z+8AHHj8n4LNp3+9E/0smxfyjfhtS4lHWRk3wjtwv9MpECepOJo6ylNTC4JGgXkOeHwsQTO56fZ/tx1nS1yoJsGTBK5cpy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5bjkOQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5bjkOQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C1BC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756138193;
	bh=Ov4aG9X0Kj11iDKZY/tR7msHjbkc0UBMBcfsTo4Hl2E=;
	h=To:Subject:From:Date:From;
	b=d5bjkOQT+8K9TCT3KhS+tFD2XAzf1rWrYFKsR1LMiqKKRPxdNvNST4vJFNWpjFoZ1
	 wnNWO1B59ysAV2wxZK7YChrJKjeL7Ieyx3f0KTrHGT4LGvP18oVlG+QRNYH8oysqe8
	 VotRDlQ627dKOJAZJRY2oP2O9iIcEzgL5DNK+JkFdSarJWXkEJ+CM8NWDuB6Ih4I8B
	 82+sNsIfIZVZNdKbbhH89tIx5AofLUqaPOvVhsPnXGxTLbc3AQl9sIMY54ogi2ZdGn
	 YwNMYY1QBhbvIe/nSdEBbKfKfuGMNl8CJr1HweyUUm+GxKUGjhDACuU9XReak6aQV2
	 IZ7lxfXLJmGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9513ECA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613819357.7891.7751200350218284831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512a2c0d1b7d6aa7c1fb5d832eeaad00996580ff92428e3aa0b71e702db00722
Date: Mon, 25 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756138193
