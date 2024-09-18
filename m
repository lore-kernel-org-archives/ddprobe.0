Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCE314D6E6
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726648554; cv=none; b=arj7g66kRtUMzu/GukI9Zm6ETN5V48Bqcs3eEwynBa7EFJkVGfZkcpPmOQNB9YWpaZscDCnw8YO6iFw5w5b6H3iq9WOJhqO3MwxvONms8HiiH8GSQoljmcu/UlGSqkjzdfoRuhJn9GrsOAdiCfQdoaPiybV+wMiE5qSy7Iy1rVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726648554; c=relaxed/simple;
	bh=Idqy9vWWNr31fW/2Vr/ShVXdoXzuLx96cTqrRTInVU8=;
	h=To:Subject:From:Message-Id:Date; b=a+VuAnkSeScaPOMDpUQLJcj+JOzEc/hRy0BrzofE3bdLtSjs3uQs8Jrons3SpJE4CwyMrEvEfgPbJ1U/3r5O1772qEYGSPzXHnV01Rl+mgXdv14bnkmSt5zIlAK5PePfvNkr8JtrKnzE6Ov4GBo415VjiJaTDEy1ZVgPCBixJj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZ0omgJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZ0omgJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD603C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726648553;
	bh=Idqy9vWWNr31fW/2Vr/ShVXdoXzuLx96cTqrRTInVU8=;
	h=To:Subject:From:Date:From;
	b=eZ0omgJz9joDPFDGfx8Pbm6yKyLhnB1tsAVh029cuK3ZRxxC0hYzVApmV8QU+5K+q
	 Foeh4lH19jDAEXq5aHWd8U8A2V7ClW6rfrDrmkOdNvkGUkDcXTdkxW+n6iIzwC/RGu
	 NL3XNi9UzBvHm4Yk383uXBUX1O4Q2aP3bbFTxNqxKBhCVKxyOeJ8nwkTyQfVNS7N5p
	 yWQwZiVJKsogGNLN2VOGVZ+i9Y2wQPSNlWhOceFDIkk0da9bWVjgsG78Hnh975FUJ7
	 WNbM6ExTFN8gaIACcjSbbg8aVtxzCDYu4DJV66vLPZDYH6bbXgCR0TVOIdTGvxWEFU
	 8NgnVT5lBqNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C775CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664855363.2760.1780662264648130564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65728115d52f69ddedbbee93b4c04cffb79f7d2113db5aa72977bfbcdcae843f
Date: Wed, 18 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726648553
