Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEE82C15B8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469634; cv=none; b=a6GCuc544/PfcvkhQGmCAiTmku3WTaKMHJ8VZasRS1iaFrTCY7EWBSzmjnIoSD0GgLpkH7DJAaXMkHAqh/ZZqwWzsb1j5QAEm+yUlDAC746YMVurx91FPCWq6OmwVdWPB0W7+XvPcMczAYYEliLR/aMuKlytK18NIWzSA8BMu0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469634; c=relaxed/simple;
	bh=roHoBGWOKkratQgBVBsoNQAQdl0AAwGsUHOaA6kTcf0=;
	h=To:Subject:From:Message-Id:Date; b=HiVrJeaiMkk6K1olxe8EQOjo4xxviAHRZaFgxFWodfowlXkN//UO3eP6fOse3AYAwtOnRHN18TsiQYt1MEWGLrB9bmfJGyulAf4Zngw7jDlzZkLGWDqQnGj3GY2Y6K873FcUGxTMvqKJRXaud4lLKfr3EFld8EoL+TdOZhrfK6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD9NOf45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD9NOf45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCEBC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768469633;
	bh=roHoBGWOKkratQgBVBsoNQAQdl0AAwGsUHOaA6kTcf0=;
	h=To:Subject:From:Date:From;
	b=KD9NOf45pwa+x36P8V2VrbKISxJtOxfDdYk3QT+7KxLQvy931nvS6Hb0gVMxr8Y6t
	 cKqj6QAawIZR/fLPu4jpTc4SXP4nR73HsKUJWUtnSwDGAGk6YBpmqQlQIK9JMtuOhV
	 q86hvXX6+FnV9rvVM5hklEy3u7i2LloMHTPTpvzXlrdTgJOl9JPszk1onzKLb2f9NE
	 h5ZSa2MpridYymEH4x1+nmd94xR1g4DLwgGivfIKhJGeDlWoVLzE9Spg3clPln06YF
	 zBtAzZVzQz9jQ1uE2M+/ONW8aniEeztTizWzoJ/De8PxkeHb8ghIO+RMPmvIAAwhxl
	 xm+3IlXPoa3KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90409D4114C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846963358.30936.9007337599675246897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50185e35c0026f951f957d0ba402da4976efdda7d9ef4d6244bf747f94b2d044
Date: Thu, 15 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768469633
