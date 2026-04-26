Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6BA1DE8BE
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777235854; cv=none; b=Yz0kug/dSrGR3b5apPhveAQ/O7uRPxVF2aLIhiUeiX538i/OVS3uX5ZNoGAbeC+TU9IvgD4r7mAYyNOy9NKXTSziaNO8T9l1Gy9rxI+TeOCvdmyO6wDC2+tl48c8hTlQNgLBDI5N9+jOqzvNHjWbsSdHNzB4YMbCxNYjGLh+MPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777235854; c=relaxed/simple;
	bh=bDb3I4P1EPuAAFq3R8xr3LcQUawBbIg09sDYjMbLAfk=;
	h=To:Subject:From:Message-Id:Date; b=T2hlYBO37783EI+2m70iBVoKJDBgyLG6dd2dM+O+iJqOYgn6+f5Qyd6+jvuDE6StdO/iDVcYlIFMmv3+ckcMrOoYNEa3cL5zBv3kVwYZXQ2uhqmjj/bLnH3Tzo1xffZiHcXyw+1dqQ7+tnf6UEK43Evh8SRyyGX73fIQoUFuoNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXrm/kx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXrm/kx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B731BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777235853;
	bh=bDb3I4P1EPuAAFq3R8xr3LcQUawBbIg09sDYjMbLAfk=;
	h=To:Subject:From:Date:From;
	b=ZXrm/kx5GrJmSiD2RFyP1WMCe2CNaqgvAn4oWoJ3Doyjv2JxqJu0GgR1buV31XYOU
	 iD2xxyGowJy1+zOX0F4r9iVHBGcFopaxHwKjgBHrrCzG88FOlq343znyhbCdB7EIOe
	 DjbTLlJnSzO0f5mv6O8PBBlPJi8p/wwxclQNHYjvS5jgjurSFQdBBQ+Pm46GEivjL+
	 iwmj0/sOVvjejzM0eYJ/GhRiM9zpDRah3ef8jagD1ghXbtWf1kEgUPd2MbiOZAnRp4
	 +sOUzPELbfg5RzKQT6co/mHkLaKT9KFdYgMa0Z6rKBQkFrGPXJQir+iSTIJ+ojM3Vj
	 2BNlyLNpSktyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F9BFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723585368.7566.15013122305545875921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf28ad4f3c729b9cf14a347f3f632ca0a69faf9947c1e80b0fbbe4be712d92e0
Date: Sun, 26 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777235853
