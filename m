Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B3E3CBE6B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780697074; cv=none; b=OIgIlmSPGsh1BYwZXMp47gMpHGya4csUboHaVNnvMObW0fS08z/X2ZuLbdPQnVFfbTLgv1gzU0N8LNaOESPmZsrEsYB2aIJDmMkWedsOCJmBa3eIGfL8xo0sjW2aqZmY7qHasKabvR5Sp0F4otMClxx/NE+aobjtsLf5ayNOb9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780697074; c=relaxed/simple;
	bh=00MoBfHryhIFi4Q3hS8kWQrZpLCbvDKJdqa46AWCS/E=;
	h=To:Subject:From:Message-Id:Date; b=B4JpWvxFrM7sVkLoKQpLdmLztX8uqMKpk3oLO/7h6DaPFB8OeZhIYRe3ugl8iMEOWBOjODQIfp1KqOTpn/cVr6mRhp8gj2IVeCFHQLlvvvgH9tMASZzYhMsi+ICBQo2+1ewhpL+2Ul7r26shw00umZdOeLC4MB7AqhCegvdzTOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsotwvK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsotwvK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1B8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780697073;
	bh=00MoBfHryhIFi4Q3hS8kWQrZpLCbvDKJdqa46AWCS/E=;
	h=To:Subject:From:Date:From;
	b=jsotwvK2D+8THbL3FJ9an+Ed5zyYYN5NxRsVYaLTV3GAxhx4Q2hwW9er+1rIz6KF6
	 EzmA5iyLHj6z3EIyZfH7gTyDJwICiqk9wo3PmPdtqR4WaXET2GUuLIQTTm/JBnW49U
	 jCeuN7ijf9rsvGApC/MEvXJGGmSUnmGWzvbVcNYbdtTmzEqgzNOLMzIvWaF2xsNYi4
	 lBbrPB/41/g30E6lXUwTwzfpkwvipUiKY4/tSWTlhBEepccTYDzqCi/Zcer9Kclx1P
	 tq9TEYxPAlV5OKFJIl5m0KpNFbGRnVnuyEUBqxNpJMVfpUxUkifPWsDg3/piInKyFJ
	 gYeY5p+tOZaHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD083CD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069707369.6316.12597117454667480158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff71555d60aae79d9698624c266563b018604959f05cbc49fc23db4961472c3
Date: Fri, 05 Jun 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780697073
