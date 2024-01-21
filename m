Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E6615D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705826897; cv=none; b=n3f4Si7NN/hQhRhd5XBCppAeBlwCema2dUBlXzL/rBkrq+xthAeRkTgmq+dmCjg7rIrUcKRmgPx4tvXOwlS/wSWRvMZoNAGHRjtzBFV505cw02t3tyOLvwkMnQFMfcRi6l4x4OwGxmNqq4HHsJTV0W93z8QnhGTaxO2HiX+O+0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705826897; c=relaxed/simple;
	bh=y+YBbz+kKBuOvM/7Bxmu6vr6bOc0VgeGklStCooyrr0=;
	h=To:Subject:From:Message-Id:Date; b=chbQhu3dNwrFz6H5aEKsw4A3NCHWOGQSi97Hbe8SrSAZ8uhkIKdMYqtLfjDQGk21pM03VUL8aaPxU7W5Tyxi90vx/gkv9b1M5USgTyndS87K6x8VyH3fxsbWtcO/hcUFzJwUQsV/ihzdhfnXcY1l4qWLrVzjueZ4ZjEVdU/P3PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJB++ztx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJB++ztx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4A8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705826896;
	bh=y+YBbz+kKBuOvM/7Bxmu6vr6bOc0VgeGklStCooyrr0=;
	h=To:Subject:From:Date:From;
	b=XJB++ztx6QAqvSsTHZQn/PJruecWyDrgUzvEb0DKsPql7Ioh7XegkxmOee5lqfG+M
	 DplMuqq1QDysqo8f7qTPOAGyRIwA3it9ekmz5Xwq/V3wwHsxPepQf2pG+IEaWtcYjt
	 ktlYhdZ+xxeXoekoQsl8Boc2d6B61vIaivVoerQ5yiBLslzf2XDis+jjsb/og1dmKK
	 AFXyfSHyuhpB/8F+I2b819rxN+NIFN97SzRM13Q8gJpQQhpmSrkmHe5OjClPT8utPG
	 MQyIFaiBEVT3sX79crSLALN8eAXGV+lyxYRWWe5B2P8XxF+iSJw0WaYrkngtowbcSp
	 8U7i8ZQeow9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62232C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170582689637.17964.13404720453884227216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf36d9e6611c22722ac85b2d357bef99e5cdb962d6b57535dd7d73b3c56299d
Date: Sun, 21 Jan 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705826896
