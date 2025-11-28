Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F92DAFB4
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764322374; cv=none; b=ZgB0h9XNTzxKmPD2jbiioDjJ1J7EPWaTj9x99jMm73Ff8Is/TA98p6ITdEA1P4gRQ0/unSLpSG9LNvicJ22HiNhR5V8UmW6miOmnl+1BgqhW/+1znvNYzsvZJDIcylOVwyjBDepsuxDZcPD9a7xTg5w+F2UmUv28K4ec6mzJwWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764322374; c=relaxed/simple;
	bh=UioRZ31wauOIJ65qe2gg8n8iTwQzOhmZrooWD2F4ERI=;
	h=To:Subject:From:Message-Id:Date; b=XFDuKx4BJVYvdn5c1h1szeZETk2l7OwHMDsYxnp0TFbJDoNRAr28nS10b9FjBY/rYe8oBZRAvlJ2BHeIVXqD7zPq/55bnfB+SCiMcPVMvchh/rVG5+TDBH7sWHBu7QINY2gFPG4E7Jz2XDEcibuLJ6XlEIPxwkB0uEQmWN2BhCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS06dde4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS06dde4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B544AC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764322373;
	bh=UioRZ31wauOIJ65qe2gg8n8iTwQzOhmZrooWD2F4ERI=;
	h=To:Subject:From:Date:From;
	b=FS06dde450464//MLehVl9VWRlUUhzHBOP9JBLZ7mdvGCMgFZTBzYBc0wzT1J91Y+
	 W05Mih5Ad65l+Ww6Z4dDDKzTk4/pp6JLtAsBFzfEQQ5LOr8gsjcPQsDiCXgN84aYRc
	 4V/1anqc0hlWje9yEH6N5tqgDIFxIUOzTO+oUpS09xCb5qjue3Qnc0ivrrLLatYQ92
	 1ifiCx8jxGr70AJtpuB3kQNWBfdR5D2hnA9eV8tq4t4Lj/2YYcfBkpsAIaGan33fIi
	 nhdhdBq4mPup4xq8kl0IwlBnwqxbXPudYuwROpKDrO0CupeNmy0MNQAEJubAnw3PEU
	 8ZZc6EY5kL0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6AD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432237358.8113.3057987372225741786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a0cfc5a7510ad177557bdd38d8e342ee22dd0af66c44e4e4715c5aedf1dac5
Date: Fri, 28 Nov 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764322373
