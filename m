Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F633955C8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779699754; cv=none; b=IgWeZYeLgzfKgoDZ/Kvd2YLmFXPMkaXkRyH+ToCrOw3xAl2dCtI+/dyc/yTCadLY0efY0VmsVvlBYlzsipa3ZCYKiuCM0WUv7bz1h/KUzUQcx9AxEdLkHXguyvDRzJ9MIK2MF2oFg37PyYsc9yT6H38yR5Wv3aSTSSohVXBxTKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779699754; c=relaxed/simple;
	bh=6ij9Viact8r/jJMNa96nB7EEU01Hj5F4zD/D9j5Rg6w=;
	h=To:Subject:From:Message-Id:Date; b=ESj9RqIO5NPzUAkMFDPthZtoBdR6Vz3VTP1b6o2D/8JGiPiSdZ9hFhfnB1U6zvH7FQxe6n49K+BWKAnEyNQn+w+9yHbsPeJ2XCp0tVz+CPfHt0bi/Ey6nkhR4t7wTfGR6Vuuc+EPyEQyRY7ccBV+AU5qvzobmkc9pJsDjty7Qdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmZF91ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmZF91ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FD4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779699753;
	bh=6ij9Viact8r/jJMNa96nB7EEU01Hj5F4zD/D9j5Rg6w=;
	h=To:Subject:From:Date:From;
	b=bmZF91irx1olNlkXVGltAuPEsqG0C/nARlICwX686Fjb5Oy4BlKXqhB1D+qS94ish
	 21YuVB9sGtvhCy+ERtKq4m9cE0/qv7VBavqtrVxNvni1JAWaPkzyOrL0pfoRPLsKVi
	 cJROiiOgsKJejCKnn7Y2gSzQB+cPrZAEVjTDnrLz31G7J6OrtmvqFplKjnmrRiuGxY
	 AVa067qpQDJOBF7hsOii5gKzMWkIEETu6ovGEf3KUz8dFeTvWlYTvod4sTkpY32Sp+
	 mfOkTUh3bM1Dy8dW8QfD8ewW1xycqzrMicU4I2QSls/oTaxI2O7Doqynk6LytxzLAo
	 tdV6ixl2JnPnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF6CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969975369.27285.348833083296671416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7155b133ee8a8ad151db21e9d83ac21904fb96a36314b80252a7a6f7849f04a7
Date: Mon, 25 May 2026 09:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779699753
