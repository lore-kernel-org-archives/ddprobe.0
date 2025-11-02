Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173BC2F5E
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762124994; cv=none; b=IbS3LQqRWifbPCr1v6nZXTHDp1kx00p5hoLDEuwLLQJBnOf0vVISiCg+6k3eSahGanVmk8chfrUXS0k+PvO8jPS6z/kzDvDmrosMbtb56ITLlIaHEQnOGm5d6d41jtYtjcQ07ZfDLK/JptY0Tea75NZz5vxcPujnQ80YcvAQzsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762124994; c=relaxed/simple;
	bh=bgxCa921KOhob1C0ahHckRjK/PGhJytqlkO1ekr+3xI=;
	h=To:Subject:From:Message-Id:Date; b=GNWeP1f9btULg+xwewlWozuEvI8AV5ko22yJlJLqSHXTS3uCQTB88HbZLmE2aXG6xv4iUrTTL7SEYE6Vsy3yYntsghvukqpzfgyC1t4sENyLZ01Kz5hOdnYLYvNuoyRTSEQCq/uXV70Nl03kvmLERlrUxh5u1ch+3to8j/PPVKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB5ZuifK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB5ZuifK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762124993;
	bh=bgxCa921KOhob1C0ahHckRjK/PGhJytqlkO1ekr+3xI=;
	h=To:Subject:From:Date:From;
	b=EB5ZuifKzEJrYeiYyurQVuLj8/nNfefXUoMYxhNO32mpMNz+pgNXxR0LWLBZ/D8QG
	 UXGImEG8vIPQmGmxfimhe+Yetu5OpIo66qA90zqXR5kHk53JulgbQ4+ig8JGXDomul
	 x05DfkdrcWS1cZJ0XX6TH08i+zbd4E/k0z5YdVdFROEv8PtIVIiKG4w7fupHyFCoFB
	 Kc7FgEeV65If4bODHC7OAj/A3HurMmBqJ2ZPFGsTq37r7wYatd1yJQ3rJnONxqZwrl
	 lzz2rrWlLNJNy/3KS0wZUz+HbRIcd6KDe5FfNB9zkR4RgkAxCtoulOG7E6IGnrM9ev
	 Cm6uGB5nxum1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C6CCFA00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212499358.30403.5292535602497688425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cf72a8c01ac23fa5650172e3f8170727841bfc8296104f141defa402e18a56
Date: Sun, 02 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762124993
