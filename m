Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156A91B6D1A
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765101174; cv=none; b=T/wV5MasmWdoUz9cdhjcPvi5LMvnYYlK333mYmXbsIcFE8KAxVrXcq8ObBMQwQ2CLXGqToIuWitNu5dUFVHHSFpmbLOrdO5ryru34hvK9ExeqDM0rMIRvM7Is7AKtsokBPLQOXOEa+Bth7fRq0qc04p8wgbLbjj36lnj6L4rBaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765101174; c=relaxed/simple;
	bh=auC1a100T0tEm437bvfmAfTZ0vnVIMPMWzuLdoKD+wI=;
	h=To:Subject:From:Message-Id:Date; b=sYEL/QgLKZbI2VZRuvT5fpYTpuxz9VmYoLQ/uH141+auMGUkrQjti71EWEuIUtPOQMNKmC31D0c8Ii5Tl+6gEfqqh8n4y0lhkXCV2tP+C6A8mw67wm39dgg3MNBabeZ3QBdnsmtQLCseIAfInhE+yC6gRIs+6IvJyH4EfndjLag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekQGdwNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekQGdwNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABE3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765101173;
	bh=auC1a100T0tEm437bvfmAfTZ0vnVIMPMWzuLdoKD+wI=;
	h=To:Subject:From:Date:From;
	b=ekQGdwNMlyy7LMie+ji7967WJzoTwDzXrhzty4lyHikadAgpAElc7Pdj/TOaHMdFy
	 BA2G+4be0Wm4Wtl4bWfFaXYKt5EfotmzE0kgNJ+eqEMjFXmoRSw9zXV7PN4U3AJL0p
	 y9qpTHaiPibSzwLe8qnuGkj47q4zkcco4j0YL+5qzqH7a/WS0IyboT7XCojpuIhZIM
	 4b+apKKfce7H0A5Uocz4zPJvzD9hRLsNDJPXB5BBfsCe9ylRiuKYfFG1nlUjE9JFBp
	 yMG2oNlJxuWZ1P0JwLcn/N0TQLT23O20loxih0tu3gNcBLPKp07WlctSe/bu+pB4Dw
	 MVQ+JW7QTtWiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EEBD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510117358.27771.6454631039272666673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2c9d84093d2432566717b3d184ec7976a044bf02f22c6448c7a62425ff7e96
Date: Sun, 07 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765101173
