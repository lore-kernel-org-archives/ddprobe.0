Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAEC396585
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788246034; cv=none; b=e+SPDOJHDsjfBINCBqQSkX62OeKT2rA6YqGaFbQcUNZrEjfFSas6xWK53Xkn/tzchRuIFszRqadK/03S+RvFKQdQ2GxpUDNTjcPKoe0eCx5s7QP4C2ldYnkTsZOJ7BqvJy32tLxO5gGS2Prh5niMdnsOrKxzg6fiCHNKyd0ef4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788246034; c=relaxed/simple;
	bh=2y7293TQMe4WmV3FjpwZQCmRXIY+UN7dvv+mu6OUGt4=;
	h=To:Subject:From:Message-Id:Date; b=Xn3xcwn1PYvqDRnPkHDk5Wq1v2OebdXzJQGu9EgeoBpS4sHMXtgUOwHGWZOBcMORy95Pp7sUPEUWhl/qrw+6cKuwJUuzR0NfCXfkZxpdcd8lx0t0xN19Uz8Jy6LKW8V4xYQ0Wxii4vB94chb4aiGgpj3uGf7Xb5BmMlll6bnBd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux7GunkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux7GunkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1E9C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788246033;
	bh=2y7293TQMe4WmV3FjpwZQCmRXIY+UN7dvv+mu6OUGt4=;
	h=To:Subject:From:Date:From;
	b=ux7GunkAbXcHz5XpDjGY+Z8H7rGG6/Pd6rpamEjt9EOg9QhnzBfhbU9n3e2vJMogv
	 eYwo9f7OPCK0/dePdfH/k6xyCrqVqtQy0ukLsPEHGImjHVlglkdveOmM1IlbqNJk80
	 znjdUEUlvhyo5aiBVDMNXrb5RGGJPLl9VXirDuTXizRAWaJ2SzW/AQdGXH1wHzeZUj
	 zGvY7FeWWop6eBrdLoCktp/5sHO7PDcJEosHMdB96io2qj6uZLGSQRjPjXWKMaHULf
	 NkYjcGNKcgCAwtUKzw4vpDE1yDGzWaqhn+V6DyoMNpC0tuzDCVOWcGKPJHecIUksw2
	 OFwyNBlWs4s8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA002C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824603368.18876.2823971343444211986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd8778c54568c1ff6373d9334a1f271bf7c40bb420b1f3f3667a768a88ca1c8
Date: Tue, 01 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788246033
