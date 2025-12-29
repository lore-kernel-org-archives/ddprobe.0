Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166EC30FC2F
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767021834; cv=none; b=B2M3C+nfv6i2Dz5o/FZFeMkW8VolIzESwdcyVouHNCZ1HCmIC9QOe34hxm1yqGR2fuYBvVjxBRBqyAJuR1Dojo+D6ukbujVvAhSpziYcfuyW+XxYFFwqRS0PG1hTbifdJyHxHDF42jVM5axru3li0yLidl6EAxhY8oK+4/KGP3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767021834; c=relaxed/simple;
	bh=XPHK9lrq3iDuqwOBzeK/T7qUfeEyUgQyqw+bhKUnGSo=;
	h=To:Subject:From:Message-Id:Date; b=PAAQvDWZCpWlqY9084IaU15dq8DKvitXy6opzxaanKg1pe25c0rdtK16hymQcn7cYzKUFfLRPHjTzdQqGIok6lV8ow/ahrsa2uotX0pv69hzdQJldby4FFlcNNTpycpAHh/95ksFCq6qJmnBv7/9il9EYYEHPQEc8/BbYNeCr8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSgeNdvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSgeNdvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767021833;
	bh=XPHK9lrq3iDuqwOBzeK/T7qUfeEyUgQyqw+bhKUnGSo=;
	h=To:Subject:From:Date:From;
	b=iSgeNdvQzpNoXJF5827J6XnRTjjbTLxPrbZtmTP+CG1W04LEQ0dVtnrGTs48teXbf
	 Kghp5aqOEpQEGZhAQ+NW2khZGNsiFZAwT9KYTDRc0y99JrlC/OYXFGCbkU/M+WL04M
	 OCHGNNtz7dzCeMy3BNabgt0u73LOXefw+30leYlfpW8r2IkwKqGOtlB0gI16NkbJxL
	 jzYVkNKneM8w/3rsGm4lKpy0G256GSwHLZhAYv4akEVLbZ7OIrOq2FT73RtdkM+iXh
	 UXcxSpHqfKf9RM5S9mvCEuSdZ60RLSfNWL3UuGE53doIaRYJBP5XskjYJaOIUqXDn4
	 gK/4XSO7q9GKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCDE8FDBE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702183359.20535.13486041699393500273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c133db64dd01d09567621224e9db0d47260dcde3f49d7eb91c3558447a6d55fd
Date: Mon, 29 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767021833
