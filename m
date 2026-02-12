Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E7C4A02
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770855294; cv=none; b=tweO1+ufRXjEFQ79++eYrdaHkpQp1J18K4/YshnuqTzGdkkalsCyfGWfViEvYq9Tbr4sdwfyVm7IvuJxIGjwYkMXj8qyHngei8FTH3DeEX/pVjjS+qNwbzWNQig5P031JVaHa9qhfL/BWxVoJFgazY9HYx7Tm4Er3bzbaVI+xKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770855294; c=relaxed/simple;
	bh=QfQ7Lie52Z1P9b0km6Gw0xW6dMeOfE9PtitqMVy+7X0=;
	h=To:Subject:From:Message-Id:Date; b=mIS94Br9ykdMz0mBj78I+E7xYgx0Bs0Cr5t/8w4AB0BBaqqqCezu2Y6jPJrfOGGC7RuBJompQ6XHfaBFsPShhPzKgD75WP8vnlftopfnSQ0021kgpDghVFoRdql8V+Fo4szA4jbd5aVe8OtpF4cSmpFcfhNz2UL5yMm9pr7QoPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX6FQRKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX6FQRKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE496C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770855293;
	bh=QfQ7Lie52Z1P9b0km6Gw0xW6dMeOfE9PtitqMVy+7X0=;
	h=To:Subject:From:Date:From;
	b=hX6FQRKUoO1uzcGkukCGqRH8GyxWfENW9C74OqZxsry7453PtEy9G0LXcZ2PnLk4w
	 iBrITeAW0JpEfwb9Z2WDOztRddm/ytoHw6tPw508q7fJ0nvczes4mu2/o0/WEcxYJg
	 rpIykIfeHtvpDIfYDUZtWdq7L2sZSQDn385Bn2geOTLr/kJ8lY27/NuD+XCclmRNJh
	 YBh+yQQdqQ+z/kmHRniLF1HbkynCj+rXdCBp+vEP4/Q25KFHZlpA2Bfs0QEDBY50K6
	 H1Txy/o3wLtNWhrqGqCAdllfAzas7b463ttEMHkqis21zUcVu2w/DzbNrE4mTyQ5yw
	 8y+DQWRvX7Y7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8F1ECD6FC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085529362.7746.10533257011561682029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc394fc3d38b8933723642517e108d254ab693520c4bcbd721feee20b959c78
Date: Thu, 12 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770855293
