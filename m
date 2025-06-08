Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333DD17741
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749361794; cv=none; b=L3OKcBnJxIP1VaP+E8TXgQSGW2u4sAAi6xIRaF6H8bLsMDBp/96v5xll6yQneCIhj47SB3Yi+eRP4WcPZ42lvaG7+T+C5kdmQc608SPct/en+ablBoTm7QY0W9kg6rbjrl/rNf5eGpj7lkVSlcbQFuwOwfaI74pHWiIDOuGsNpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749361794; c=relaxed/simple;
	bh=mA0j7ErLQs7iAQJEe0RdrBIDKw9rT9PwAZSedNsMNCk=;
	h=To:Subject:From:Message-Id:Date; b=ObZFge3QXoM/fN7pFX1lB2zQDhJwQvWjYOgEj8q5FQgYMFIgg8VizhhvXKF7TTG25QSrbWmccwbjic1TK0rDoDKIOL9mNhvW6kW5zuy5rbBA/7Bt2wrzLHvQGXnDlHoALDblp7Qo2a0q7ur8GsVbIPAUJCFVbZNC/Fn5pBNiYJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQUBFPVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQUBFPVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FAC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749361793;
	bh=mA0j7ErLQs7iAQJEe0RdrBIDKw9rT9PwAZSedNsMNCk=;
	h=To:Subject:From:Date:From;
	b=vQUBFPVXxQ/RLeSI44Ui0hICNh/u0s6fpmFx2fa8jaJzXQhcOEuPc+0GV2GiU744r
	 xOVX6QgxLRzxQDV/k7NmxQOe2Oy4PixACDHvOiZg9bXg6xKE+tmY07816JCyu9yPrL
	 miQqVQz84F7AwRbHhuxk5z2ypfR4h3Ki52qdT3V2mpzEOVjPwWQHq2hgNhZK2pWffN
	 r6dXPRdW47hS+FkbYxSqzsRHX4iIMfQj6gpK+eCL6hAMhKUSGO8OHbOlMtn8IqmJUa
	 IMVG8IpUgDHit0mWokgxhlowamWsE7zGpgR9bTPahaqeZ+6pb7HJQti8eiPigRI5/H
	 tVrFQ4ftTIyWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933DAC61CE8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936179359.25711.797839196299446949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a458e00f290d356caf09b10ab7e7bc2dbf051d9e108b1632e2f8d3fa9ec7d0
Date: Sun, 08 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749361793
