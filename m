Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5295B266582
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741867134; cv=none; b=Oso6MPPZ/UJBidQLt043yYxVs6YqBb3PSbIqQu8N62IpnEPE4eQnQESM9diyNOQTVDAQ9Vlc2yTbPzj7KGpjULto1DWfaAVFFbe4ql1eYeiMdf18pawIAr/OFKhI7b1qEZA8bM0mo4oxxn/z9pLtDGZP2LigOs8WQBTPZzQYhck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741867134; c=relaxed/simple;
	bh=Qq8zcHxA3CdYegu9tlvaqmmPepBJyPqEsk6xDAx18Ek=;
	h=To:Subject:From:Message-Id:Date; b=BSkxwO/RE5ESfgrw7YW3OtjtnYrAnieFvcN5P1monoG8d5qT+6kZIGXWne+5iTgeis98J3I+GtFmgTl0gr9R6cwGwypDo9zNmbPbjD8Xv+7mLJgvFAaiatC3bDY7JUNhG3m4E/O4Fcy8aocr2REn9IcHBweFqAWKn8IQhnGkFpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSHtIcH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSHtIcH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C246EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741867133;
	bh=Qq8zcHxA3CdYegu9tlvaqmmPepBJyPqEsk6xDAx18Ek=;
	h=To:Subject:From:Date:From;
	b=RSHtIcH8RbTOdSuu9a9UH3CTR6aBqr3vwcjmP6v+19V5hhqa3EFbX044WyhxEBExz
	 4z1f4sRtDOmLoOEUuKzuKQmjQFvqCcGmVjUJNmqoIh3ngrkuNlFAv0EbbjO4Szpd+B
	 E7CA21SvVHurtiLI6W8qQ5vwHSOpfKV3HvkkSj2Kc9aCuu1l0d6619XO3Au+Jh+ZFS
	 7ZmvmE9Tpo8f3SchaoJraVGsikIz+i58YBpWpZXEJJkOtbmEGfwhsOQNEZbA+uViBN
	 VLv5zRZYHU/JbUfTnGyxTxEXzy1XJBSnrlgR4VZLx8Iq6Bqdew2hUBHdo7aI3ElFkB
	 HiYrt+F7try7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90494C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186713358.10587.15444366006691139065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796c37de5d2d59518a1c847e09b1dcff601c4b7506189ddcab56d54bcdea1f8c
Date: Thu, 13 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741867133
