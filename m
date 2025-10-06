Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE6325A2DA
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759781394; cv=none; b=IxBBXgBZDW7A6EoJeJ1PaiOZLmA6CgEBGPjZL41UFSpSqmHmpDwdDl3WRF6WaiUda5MMUUXisiNxNlY3l6o6Xj6QrZRjcFm7h/tqlujBjBfnCqtzyUG6G3vuaT2Lcc+xYMw6KG2IsUIC/04ZfclhzN9bsL5jEyvPghVhTKoFF00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759781394; c=relaxed/simple;
	bh=XYKMftSy9LBKiBH7O2CNkbnmAEY59C+v4X7qG6dofLk=;
	h=To:Subject:From:Message-Id:Date; b=P5rZFW1N3JkWynLBuptAZ+NDGmavIpknH1BYrA0w6SSBHWN2C8WpgDMpdn+CzsvttJNrAgBpw50ms+ACL0YZ52CZbMtvjXxDzFTcbWRj+GzkBpQfy/9kjDDYaEHuMVOMFV5N9xHMEB0hKtmGimpIQvFRh/2ABVGmMb7xsG2D8Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siuu97Kj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siuu97Kj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B205DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759781393;
	bh=XYKMftSy9LBKiBH7O2CNkbnmAEY59C+v4X7qG6dofLk=;
	h=To:Subject:From:Date:From;
	b=siuu97KjCR6W9ygYTIy960F/c5qan59aujet/LJDPwqcTZ80J4iWJ5uQbe5JMIDFX
	 t+3YONfgCqM2owQIJI6GBC3jE6fjxwN8FKQspvqoABMzZYVst+dKjTbBvr25kAyaHq
	 kuKQ6cCvXe+ZmuTo+JlWo+jV+b7PjwtjHp5sEa4UbXnvW6mWO/Gv0Ezr8AArPj6PdL
	 rtHP3Nk1tes2JnkTRJ6SLNWLDUTPph7Bxu3Uf8cFx4J/oQxWbIKoh7PSjxaWkmERwF
	 Uhu5s89jY9ssBcIara/Mk/U8xJPnjeVdhC9eGs1MyFeqpkf451+27VvSr4ND23H2zo
	 iNlqvMYSugVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9652DCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978139360.25914.2941503796458327435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403e940f1cf36bcd1222de0b131f8c1ab6140333dc16b4852eb8dcdc4b6d2cc7
Date: Mon, 06 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759781393
