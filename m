Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A9D7470
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718857163; cv=none; b=cfCYs4wtRpS2pS0NhkxcZ9Leg51JxqjjBkOTdwrtbPign0Rsb++F2AD8bGY7uiJl/NJIdOrEx5TCkjvtAFXdxAvPGGI8JZk0F/EknIoKx6bxl0bevJ//L52z1eooiwZnxrIl8C2aa19V4imE3+fwsM4stM0wNfMkFyr+7RNJMVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718857163; c=relaxed/simple;
	bh=b05AH9k/DXUMYXI00tvDODY3JMLPJweKEqtk589/l3w=;
	h=To:Subject:From:Message-Id:Date; b=n2YHjuZSQ/PXYqxMwbUzvdImESg1Dct4ZXauxJ6mH3a+0WVV13h3XTM0wv7MmRIR9hOqtPXGQHbvIgS1LF0ey5sd8wS2LjfKL4Ml0W0ke2J4TagYFhCng/sn+x6buSeFPwAM0fOfO6u5RVKszCNGki2Z/zgXVRThm0X4Ga8HBRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq6IsveN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq6IsveN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1DEEC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718857163;
	bh=b05AH9k/DXUMYXI00tvDODY3JMLPJweKEqtk589/l3w=;
	h=To:Subject:From:Date:From;
	b=kq6IsveN57gNNAEMcDSP9eww/Vz/6f7D4DFZlZNrgjwZtr26xuJr6lDj7C6H5+7E5
	 nFKdhX9zN+9xLEw35FKJ3gq8UMJb1R2D+i8R80foKTiebafnhJWfJY7BXti/Ko6EQg
	 9YUGRPISFEA7/IV8Pjq+xlFRxh3hzRaTabvdQGucgJy+As9f/AFYmOsez0MJZf9pXM
	 0LKCoVjMxTQntx5rLaWQKCjvX8q7VZuirtz02NXxXKbb2irpRnC0PqT89pNyU/GNEF
	 AbzbQzEuBXK+Wqs4IYVBUJzbl2wqk/MxFUSbnUKumlnGlyMNjv3izUuxwf0L2iyD0l
	 nyWPxQcF7vzdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6D85C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885716279.15551.12020107328367625289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb5ea0a5530a360c6d6e01b430b5961edabfa35bf5f2b5ff4f55408189111d4
Date: Thu, 20 Jun 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718857162
