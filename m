Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CE6181CED
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719164543; cv=none; b=F2E8C5EFm0GgTPK/lMdCdt9QOwwIwqoOBw02JNWcfSGv2h5ncl3HStZvnVJvoQbJ4F12Fa06pqWM+ebVsNN8c9NyPcEwsQyHxZ/KoQedeZXkKm0ferH4ygpv4KoBgoCd/N6xdwMMQjxAu/iVun//M3H1XACxUc1n85Fg1bfPYYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719164543; c=relaxed/simple;
	bh=5a4NPqs0FFSxbjyseC8umtuALBrZPVMZxvTnA92zM2Q=;
	h=To:Subject:From:Message-Id:Date; b=lG4bZcembBlnXuqQi2e3ZLe9DfgZRn4jRktAsOHjVjU5nZEc2JYRk9jxj7WlFqRkPBK37arsiOhKtmoofsBmBJYo2ipdvz7tNaBMVk4eAp8JOGQbBS4cZDEKV/yW4wB9pVTADiQJYhJA2THhGrEgGmd57bAOrKE6jRFbVQ0DkF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzJIxbmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzJIxbmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F28C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719164542;
	bh=5a4NPqs0FFSxbjyseC8umtuALBrZPVMZxvTnA92zM2Q=;
	h=To:Subject:From:Date:From;
	b=DzJIxbmyA9YXMH7Tp/CIj8LZMGX8hSbFufCs7VskbkabkemNHvaikG5Vk4gUW1+ys
	 dTFTOsoIk9HeEWlayBx81Hvtl2W8Uzy9upHgSidLiVKoicUghM2DSNizC+fSqtg0M6
	 tvbi+0AHvN5MRAI+tNoHiTp6N7pOFzF0YwRqVxGzyCFF9pCGakLG54X+sgdK21wG9G
	 FROn3M53Gr8P5e9LcabUB79L4FFw5tgss2GnynfMNgjwXVUKI+5tcMAE+V6UgIK8dm
	 dKT+T04UkklHIqyyRcApNO1ZPloSg9Vp2iHUoSF+Fs1Z5r8DIA43UpaLlhEGebTBUH
	 pbg1cIEJPRbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C225AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916454278.1953.4182501720675048559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655795d511aa11d7eafd8fb4a61d65fe37bdd1c01d71eee21614d40382ac9085
Date: Sun, 23 Jun 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719164542
