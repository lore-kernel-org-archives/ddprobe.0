Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B83223719
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746605394; cv=none; b=eC0fXARxyZJezR1tkmqZcYlvjsGCUQzWY/2vHiu5ayAIrZxvQ8pvAaKWo1MK/J+90WfO0tRviBpAxwS1WF1mlMwIQLgSx5rf97tEJ6lNQh8V3dBd/m/ykX/wJq0gzvSluT1nR9Gz9Lj9Rttw3u5z09PwIVSZ2y2HPxIcRkl+bxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746605394; c=relaxed/simple;
	bh=jKumcvSujfbEziZqFqaAJ3xcJCEZMbEE+PN7BwWzB9E=;
	h=To:Subject:From:Message-Id:Date; b=t/WH92at1gjpLuLNO1ShMh2VjALxOaH568g3LOyCm8R8fwRQe/p+KVL2GnMZxlamS5y0tD0pDr1fOhjqQxKDFJ1J0GG0lUzWKaL5iQlSjJyqJafxpLIbtMzQ3syYIynOKrpU/SmO9JW2X9LDfIpvRjmPvoLkqR8WqVV42GdrAI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+HexcJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+HexcJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB96C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746605393;
	bh=jKumcvSujfbEziZqFqaAJ3xcJCEZMbEE+PN7BwWzB9E=;
	h=To:Subject:From:Date:From;
	b=C+HexcJknuy3B3XkWsPSGKOTGHejm+M0vh1dtVehGHPfreqjiZON4eAbRMhpfpVP3
	 n10j8U4rQbCq3QKBntbN9PXBuNx9Afa1FXW8v98lxl7pj+GpG4zNMCc9iSR26N1dpB
	 NtYtVXR0ohW4HLjMGZRzmYCbInqzpa4q50M6NeC8wLX5lY7ClQboAblCHjXBjOAHLz
	 3SZoVsq0m2WO/ZosYT2jmBcr3/be6HrkwG54xGQWLXiSVHdvJNqRz+6zxGamfiSvax
	 RNL4Dhgmx46LWeUrs0G2tyaHBJNG/gHC8Qkgx0dRB0Np62VTHU/kPYrgLOyiUxKUDj
	 P9WM/I5f55OqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ABC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660539358.25140.12678557518740284643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695cfb9a7562b564737c5fff7d31ed9f02f9f6c0fc90143278decfc4699791a4
Date: Wed, 07 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746605393
