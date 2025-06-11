Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392D3198A1A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749669594; cv=none; b=P9KeTPQEG7Ca38zr2d7GwQUmwc10ujExnY9JsZcg2TueUzR9sxVqSst9Y2m34akxL+XKlsJ7nRn8+45ywnsigGQlGGjvPEpj0R79S4gqyeNQh0vTVMXhnYDfM1t97NJtNLxPRsCvXjC25Pwv3mzQjr/BIu6WwuJfffTfs+yH5Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749669594; c=relaxed/simple;
	bh=dXm0V6I4nwc6FW2hAH6bhRaA9Jd8E1tfoNr7rQetkK0=;
	h=To:Subject:From:Message-Id:Date; b=GJbD+QBvSa1qm5xpx2hlXKFra1PcWZrRMyw0dK0hruGekUjZYVEnW+Ect/rTvA7XIsh492rCWgHqzt6I5nb+IOjBIvDYUIhzDOaVnn429tvBH/OAOi0cK8vsALKTra/9KRT9iZf0wuAX/dDiIMR42qccz4f1aFZ8NAj/n4FLPhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmgdpWVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmgdpWVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8429C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749669593;
	bh=dXm0V6I4nwc6FW2hAH6bhRaA9Jd8E1tfoNr7rQetkK0=;
	h=To:Subject:From:Date:From;
	b=CmgdpWVuDe7IxMN7sVoJ+E5O3F8itWmDhRQKjXcWaTPaHv24GFL2U6hngzLt/SK28
	 BAAqNl8+B69hseQXAtUMie6FnFE8jh1gktCBiOh1D+5IZKcw9NSN6mT1AFNb1jFN0T
	 7VE3HbzyRtFDZOs2m4+K4M8CjT3afITAYsFLcj72HbzQtbCo4HzWF+WFQCZKFY1qJo
	 X284K0a1tLAmuPBaRgsZdBIZyb9MtETJRDFT7Q2z9F1TiU+WQW8z2HPawKGdAswZ2i
	 08Np61WEX5HenvBwSetXpMDNFmcvaU6Yt5Nv+Cm4r0sPhJrK6gwvgu15n/t0GrEdGy
	 zvBU1IfYEJREA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F7C71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966959359.30915.11606601392696527169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fff32c4c225179eb6720e1beba4efe11749023cb292f6875a5350bf5426e83d
Date: Wed, 11 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749669593
