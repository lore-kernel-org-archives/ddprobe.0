Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDC12E03E4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774380294; cv=none; b=pZ7TT30dCmjuDgV5puOeMbD7ABUaKCD4WvBj6DUeO6csZc2gEk4+5ogC0KqFsZ8+Wk7DxZwwJVjc0VWRCJiET5rL6RIuMV4kqAJ+spRSNxPhZ41biMSVn81LeaBSzWAa6ae0gUSFH7z5Dg1kD4LP52fAqH2VSYf62R8/FMLKtRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774380294; c=relaxed/simple;
	bh=y0b01H34XBdlJlZbfmqBJpeIu4MN+XU4cWe4ZPdb39M=;
	h=To:Subject:From:Message-Id:Date; b=EgqI2LmymHdLpunnyc66+XVNYaWQp+cCXB9vhHgdRJF9YZRuChyPV8EHBFJnrDlVBGoZ9QsB32yRE1RnZcKQOcSQ5ybETQAzT+7+awXLRGvRAf1OjSI6fGPMtGJX3GjNTqSAtFRSh5oRRJZHpY2VfzI7oXv7XwFLwJpwnl0Ib5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlXw858B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlXw858B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC1C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774380293;
	bh=y0b01H34XBdlJlZbfmqBJpeIu4MN+XU4cWe4ZPdb39M=;
	h=To:Subject:From:Date:From;
	b=GlXw858B9un5OnPjJPhIpwfplK4DG2hWBslpxXjkUL4hF+/DZ1525QulaJycv0sNj
	 3gFQaUzfVCAFf71JpvBNUoXtaWwPURwquDWsL/oXC5GK9XL4yyaGnpHH849S6DZcf/
	 biSEqxOH/nhQ+Q+6Tw+VpYoqFmg29AC6XSyZufKHM1tSUz0sia8z5/A4lyeCf4sOXD
	 tKWTyLv1cqF3p1k/Yx2DUN4eID5mQlY26k5wVtAsm+2iI4qSkZOinRF3h2oY93IEcl
	 knt8lmxdRPF5vddlYW1v1EKO1BmFPwJ9n1rJuHY3CyJCQBlpD16YnNy9lxVN5EiLyv
	 AqFrfnb4HfdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201AFEC0F7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438029358.14203.17541228806782340244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214da529eaac8a860e52f20f6a07627db7672122ff005cb8b241cd1620bf5e60
Date: Tue, 24 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774380293
