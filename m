Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8D0441D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721561154; cv=none; b=r/9XPuKNGn0BXgI+fEu7QGTdxLCZDdIYLJ0DW8bMbv8jzqLoSYMFAZpCr1OhPGGFHIH6rCqh1jbfFJqi70VAY7QIBc6NSGbnlEIwyLO67gTEryjkC2SSBTQgSnaXICMddOPBDUI6s5gBcIIZ+Td7DE3aDYym6DWFmFw5jKXgYzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721561154; c=relaxed/simple;
	bh=/74blJxsPj6jWK1gj1T7lU8dPNgwzAIxj/BBKBUStK0=;
	h=To:Subject:From:Message-Id:Date; b=R90F6s690PJq2VzgmpvL9C7vLOXvsbXW1l/dhEn2WjlQ32FUSYPvjJoz2+uKJh8FlW2imLKiYKHfR3qG0XEVM9jyV8BBWPNmrDA2PJI1f6WWq0pIN9/Fk5jLOxeS+jrMuY07nZv57M2STrjE000SQpdJyE0l5eXUGUSTXURDa7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sU0bG44C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sU0bG44C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4DDC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721561153;
	bh=/74blJxsPj6jWK1gj1T7lU8dPNgwzAIxj/BBKBUStK0=;
	h=To:Subject:From:Date:From;
	b=sU0bG44CubzjYqsaulk4DhpRstW4MGkSzJ1eDnUjBDUJQL25fYnP2Er/ikQJPd3B1
	 yza1P6bhqFwcEKBPJ3ulgd0QrRi+uIWrkBlunnlp+GedaRqoElVBakArDQ0zlAdTPr
	 kce4WnDkpShR69/tj2KAklmFp0p2iTCn9uV8aL8IqzrXawbCfi3HVaKn8I0+OGQjc5
	 qD1WJfFRjrCwQ9gM8WNJF7jhKAnqelOeGi4gTGoDx9HZcR8pOgqN+Dg1vjo5cdvAC4
	 cRuz+jMQ3rYchlX4+PxAU/ftZu6rM5tlQs+z0U9o5lvIFAwM2U/RxJsc/FCQHtGlL+
	 5Bt7VhurIDFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F3C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156115359.1739.1811142937374291424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83db0a2bd43a8fc38c0fab7e08c96b80a8fb498f90e04ea1c3d0878552de7b90
Date: Sun, 21 Jul 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721561153
