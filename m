Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D8A2DF6F8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758100795; cv=none; b=g6aOj1l9MwQPDy0p1zmuuFgd51cOhcEC8E11o/WnEVTMvbd23qfg39qK2lign4o4bGaS8rcGkMY8Roh2Fd1057cgRv/f4rPP/AfTjNDvzop96ya+drex10nQiELSbOJUy1ivUkQKDBQQ6UKmKOE7Ds3Y8I7rVOUWF4U2OHo0Yc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758100795; c=relaxed/simple;
	bh=hiVOTHpYL4tAPrrMv5BhXT9ejrk7EqlkNG0suVcwRLs=;
	h=To:Subject:From:Message-Id:Date; b=jNmfzGYESkWKL2nD8NXME4P5W//APAd8ucu4Y6sNwvhYeZg+cfVbUfmsyEF2uUagXRPhg9u2HIsvuigp1LrFs0cGtmHw/1tXTLIF9wX1XUO5IH+YYIl8VUZ24HmnczvSPfLy7gLY5qhtyB8VQdzWnHgiNiex3pcI0Dw43sghxo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxNQ05jK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxNQ05jK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A457FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758100793;
	bh=hiVOTHpYL4tAPrrMv5BhXT9ejrk7EqlkNG0suVcwRLs=;
	h=To:Subject:From:Date:From;
	b=lxNQ05jKu8uhUl7WG8oHk/t2pMiEl6Wi9+G3IC40Z8akeKb3f99eYw4ZSmf85x9sm
	 J6Dh+zm34lYawK3lSUJ1EECgub+G5dE28QG+D6CjPbs8P8Tw+tPVihceVsUjG+M7R3
	 O+PEML/yntlQM0jiYrBnUmhr49tVobwUNaN9ZVFfdmX0MbsjDdiOdR8w8AIg8QImwU
	 H9HpwXqsUa6NccaiyHCWPrkx8x+SHh+x5EPmdNNjUDmZbjxnkH2cgvggrsC7Iz3BWk
	 LooN91O04bmJ/rTHmIZpwXHklTyK8P/yAQyhY82Y0khvGrHuzXX5aK+48M4nvxRM5o
	 DLdDDCB//Og2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A37CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810079358.14612.11241459206196633823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32292e9c9d101877a684952885d58a79b41f3dee636e2f05de2c41f484e0bc46
Date: Wed, 17 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758100793
