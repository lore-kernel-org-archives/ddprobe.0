Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D29AC8E1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720284983; cv=none; b=XwzRhw7yFfT7wIiTVXuA+R28L1H1N4Oy9cyMGxImANViZ2FQpk1mPLFZiTe/7Xi8wlGQdxG0fwGW2CqPFh7BdSG/HPQ8UvUQfPteAlqWqwa8el1n2PjDww41bUJL+byXlS10sD5wSxWVFnCb5AEIhpoS1N9Nboa3nx35QrlE2Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720284983; c=relaxed/simple;
	bh=q5vkwt6pj6vkFbnD4DES3TgIlSN6WkeC4YZDuMJxbtk=;
	h=To:Subject:From:Message-Id:Date; b=tMu6445dz4zjy8Xws4y3jJ4DjXtzABE2baj/oe39iK5xDKwfJB8s+rQlK6vI4matFdD0WCFrJU3Rp20ZQu4QcPAIJ2PkxCd8cktuOcC6pKi5A4lkmkcrPnNYdeJGl//MHyIC971MvdnaJN4KjAPIM3I57DTNW3LmEqqGfCeHFWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk1e7Shl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk1e7Shl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A3CC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720284982;
	bh=q5vkwt6pj6vkFbnD4DES3TgIlSN6WkeC4YZDuMJxbtk=;
	h=To:Subject:From:Date:From;
	b=Yk1e7ShlIyXz8q2P2u8Oj6IbQL60FK2Cl7KBVlzefnRa9dg3sr4ggrzX1D0KZ6AQ0
	 6FuYbeD3tZqgUziikKLjOfWY7hKpNvFSZ+iMnjQwrkSQYChlt9OhXBVkHZ0vnCtqfO
	 9lQFCgRGXD6nYEPB1Rk3ieXj/ZSnHPbEp7avjdCvBZgMzVVeAndOuYp5lP7fpuwsPX
	 hr1IzFfzFV2UZnESKZT/aKTZ551Pdbp579EO5Qoyh0N3RLSbGKF4kVd4exaIXYJtJO
	 t0mdnGE9azb/wI2i/KN7I74x61pM77VeoWIpi9wOPTIJbv/1zK4PwMp8YxSgIhsJTq
	 e2J3ATE20Fs5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C9DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028498278.30305.7846893105293326698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87844379dc09b04fdcab7735338cc7a2b784c341b36a5e260118689358f23eb1
Date: Sat, 06 Jul 2024 16:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720284982
