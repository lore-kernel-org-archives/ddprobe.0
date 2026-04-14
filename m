Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D99625DB1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776149254; cv=none; b=I7ygphXMZLSRXr+j60xWiv+EHfqMDFY/BkYzk4bUprmCojXEdwA/83JkMtndgOgJxvv1daQ0UtH2NTC6deBgDael18XlccQEUXBzsJ7BSRFSvWzbgKN6x2i3wzb/gSR+BkIJvj5BgAJU7l2qrKyVkYWGq5t2BxVXGJo4GouAX9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776149254; c=relaxed/simple;
	bh=SxeqFGsc6ThNZ58eH6sz0eBnRBcQMn66D8TvRcOMPhQ=;
	h=To:Subject:From:Message-Id:Date; b=mOGQdQK3piMPGA260UuIHWUzrUt0jduKkYIKso+rCqVJbF22sNkCvTD9E11kt/dClkx1u6fGdOw2H2B60id6MFWK3n+b5rRPRNlH7pr8WM9sGb9PCibXVRjF7QXo1eZKqoBhGinmDZa7cRRyd3jeIaMyaNVauHTwH2G1U90kgpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiWowjqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiWowjqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FF4C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776149253;
	bh=SxeqFGsc6ThNZ58eH6sz0eBnRBcQMn66D8TvRcOMPhQ=;
	h=To:Subject:From:Date:From;
	b=RiWowjqYZ1jSSpm1nnAVKb9Ny7iUpH6CIWhi4lusvrA6LuUmIlmLIxu69xImAabZd
	 NyaTuTm01mTZHkGQVyjswdhd4eFARRs/1lJeoP+gXargAoTFH1pXR39aoNNEllNFwe
	 hliA8XJEzd4CXfp6ydVrTS+3DljXPhmPcmnFxrF8Px6H8WMfghCgjzcVZgVBbrNyyq
	 74wPkmL0zdwGkGjcM5lSTaa/XkRzr6Y2kP/52cffbnXJdO4iEEZ80vd4aiDvWWok5T
	 B9Q0ZQzTPKvz7zN8YqWiB3vS5OzuO32nTwX7TfY6UhfXHTiyav6/cunGighiFuYEC5
	 K2bXvrytVsifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EDF531F4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614925368.25679.8192670906511146140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e5af7e95872da02ae0e631fce090342b59d6bdb5a8df2c2d024ce8795f7096
Date: Tue, 14 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776149253
