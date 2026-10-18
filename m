Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3D644A414
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792325434; cv=none; b=fvISLvrNVuMBEdM2WDQ8ReScSmV0d5alJhSQ+WHT8v8EV02WvybWMikZtRaJTkcLjFMbE9NLbdTylvAybW//9m6AZ+W/n0ACxwNl3npRaKaNOBF4+ZzALZekhLPDZ4XOuf2SO3kDruYYhJPafRj18FyyQrHqYo7cuo3H+SgGggg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792325434; c=relaxed/simple;
	bh=DAJcEpmSIrP+u9VlEWVIzAz25nrFpuKM6dFvPCkgBu8=;
	h=To:Subject:From:Message-Id:Date; b=UIDuwxM0AjqQxh2exOBwJtSuwsq6HrsXPp0xYMFprKeOQabkHgEGKHe6Sm/L127lDXVuLZL/OxeE1CL8zH9dooI/yU0lmY7KfczPS7JlgpeeWdnBK7iZ1+RgLPxB4JuNJZ1AYSPsJpmCdePr7oEzn6VPyZdUVZwE0dq1i+Gqdoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X41EoljK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X41EoljK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7DEC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792325433;
	bh=DAJcEpmSIrP+u9VlEWVIzAz25nrFpuKM6dFvPCkgBu8=;
	h=To:Subject:From:Date:From;
	b=X41EoljKJz0952bpGOKcSzhicfHKiDph5AnisO3dTGUH2mNubbQUVJiyPrr1/ExwU
	 gg0O38YB+hk7rEeaz4WF9XW96Ryl8EgQyiKM1DF8pwMiThS7pK/hcihdokU62uVuns
	 q0ppau4lNoxx5EoVtfCt6ygL7kOtLywAKg+cnJJAjVgRNypo+pDRNW2C1s6Z5zCr+B
	 yM6EepDP1pp7DK9uN+fJ3ej4nEY0lFXt4Uu/YbOkH1oWC4j7kKN73+FGy0oKB4gjId
	 yxeMOaMm3dmYj5+cTdOzG+NbYNm0Q03BQ6Y3oQXQFZHA87mCwKPHTtmyttAuftZynq
	 c2aQpOZZECl1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD9FCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232543369.1056.16730519760128416822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eaa511ca091e6d79ff34dbadccd93a57017fd02767e106585f458200182f1e6
Date: Sun, 18 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792325433
