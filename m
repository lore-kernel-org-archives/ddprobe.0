Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC53187862
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732488354; cv=none; b=RTo+BahbZFxQLLJuslVg47HYidfN0Jwckk1dck+/aoOUjhRQeGnKSqSxbVz8MuGYtvKk9P2THvzjdqAam7iWWzq6E6OgCjXwQOF9X9XDY8qDHGLlTQNvOcNa2cApX0GiWlHLMWolEcnyNuyuMX/hJY/5QvFX3rJer2BNm30bdnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732488354; c=relaxed/simple;
	bh=+DxpygmXRkPvWwW8+Zst5NXPdXwSAQ4lOnFdWNw6lwo=;
	h=To:Subject:From:Message-Id:Date; b=kpD89MzK9ZVDdX3/v9C4SuaLQdVSRKYKNKoZPewHrX1nZ3P6kWz+NA8go4QZ2xOQOv4feWviBBvbLjOsbpGfeihYm/Jg6zsnqVxDS5ZayppXpFCnt9rrAzQIeQKZL8DVdHBQZwKjuw4VXiF/+2G9RS+Zc0peJ4YAYsz+9gZlSzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKBzFWSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKBzFWSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F5BC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732488353;
	bh=+DxpygmXRkPvWwW8+Zst5NXPdXwSAQ4lOnFdWNw6lwo=;
	h=To:Subject:From:Date:From;
	b=aKBzFWSoZJ/+JPWxsVAMuG4/4FEu7p8Pz3oKMblR8mHvyKp9xjRyC1isx9v2IcIO8
	 5bLFe42na3qTeOSVW54rOiBQvcZgP1l+91NXwXn3FmdUxxBKLbqNtHEFWFAAGyt5q5
	 oJmNOoxOGDGBXkNQNFQX6waY9XaKCj/5AqyT1WfpKRqv1e9S80vLRedV/wI/VNd+Q8
	 WgtResY6R/A5KJqTDAqINUDbMKxf2k+ESXxb1iyyx7iuDB8ZivJPDJ25tCE/M8iYc2
	 Q+W9wDpKl6Jqy0nIFUhwjSKBqIDZdQVhrZt0C7LpcNsr+HARHPiddQ3mmPZ4QSX4L7
	 MVD2WJ3zXN52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F50D3B7C3
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173248835359.3043.8366257872693260829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37eb891f32d49542e3659509f810b07c181ff34a2f4b97368dbccca57a496acc
Date: Sun, 24 Nov 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732488353
