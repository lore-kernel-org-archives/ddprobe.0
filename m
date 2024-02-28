Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2259F4400
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709090297; cv=none; b=DpourGBvdHjj1f1ugWjH5JxYRk6PmRANBpxjtm68//jgmIH5JxihGOKu9UE1dyHVPzS1UJ0LlBgvsH9F82xCxtUtpkfWMQVNx1fEvBxMwbS5HCkRGbAxNhZUOn7aQTdCRFu6XXvAJ9GMrIXU/PdVYxmlfBhsjPxhl5LWUHTb2fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709090297; c=relaxed/simple;
	bh=wVUX743etkEJjF64BrrOGAkoXD+X4c8GuWKoPYVuCSs=;
	h=To:Subject:From:Message-Id:Date; b=JknBuzsZCTgeYh5FNmpS7yb1Af0gUfefo1eqai6qoMIWouUZdqAlvfus5lpksO7w25ScFT4rQWIb/dwobHQ2RVG4lssV60sxM7m9o5P/IT4igQFLUDHgNbarHeZ3JsIAVbIL4Ei4/junNJiB78lxBnZm3oFEvQwSYT+M9n0aohk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXob7LY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXob7LY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 959DBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709090296;
	bh=wVUX743etkEJjF64BrrOGAkoXD+X4c8GuWKoPYVuCSs=;
	h=To:Subject:From:Date:From;
	b=jXob7LY78u+qkDQD0yvJVNLV0csMLoL7CLjv0rpi4To5fE+EOE+7BNHYj70sodRPJ
	 u25I8dd5YfKMi9lbnmw3nKeNcx26SJoDlPcN+MaZE+jDqPgMiyVobxIH7QdawBb66X
	 QRilqCYQHg8fAgPjwT5g2AqxjKYRv+GgqdGDUbKmXO1XAwjj0m3thNtssHqZaVY3Ei
	 60l2WWeEAOu3/TqBXeXIDi36f5mqyd5Ax7tlTWQJWTbvhNNn9tC3ePlYf/IeIhsenK
	 ciqFEWJykZ/Cu6TeJLb0YCY2YqFjr2r8dr6kEYjLBXMB0xYKFVc8s1uLGqnSYxrApN
	 Ntrf1iIsUlvZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 779C2C54798
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170909029645.19036.13434020928245801415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc64e4c5b2b3d2cb5c2def6966aa72f52e62d7126f6cce2136ae8ef443202c5
Date: Wed, 28 Feb 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709090296
