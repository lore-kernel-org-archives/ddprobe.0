Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF8D150997
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779858154; cv=none; b=TNHeT23xvKMzvwVjH45EH9Mt1717qHtR47AqidnPYUgGolwEFyz7DM9hjv7AVGdo8H42BCAbWjcndCaEzNplZ88B2M1VKwaAOkozh1cobHlmXfAq9Sm7OALwDQuN8yNxQ3ishhoZfsl0HsPCtMKAqlapMIIvgTvc73vEca8w0Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779858154; c=relaxed/simple;
	bh=kReNgRR/2KcALWyE0pLpuh6gIyBH87eKN+EN6k1OUQo=;
	h=To:Subject:From:Message-Id:Date; b=TqgTgjOLiLNQLIfQJe9y+d3BH1s0DdYV07NjBnLkb66QGFRja9A8AGHxbDEhdhn8/GfOWp17Vf+1M78QpYYl4Kr8aL9PRjeWAkC90aUAG/oyPC4q/p5sjHmXsQlZHv+qsxUuSYmPUQowthxto13Tbu58/HhQ+bg7ismvQHM6pe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDh7BPum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDh7BPum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC893C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779858153;
	bh=kReNgRR/2KcALWyE0pLpuh6gIyBH87eKN+EN6k1OUQo=;
	h=To:Subject:From:Date:From;
	b=VDh7BPumyvQ/ZN4jEkvPbMtIEono3qQs3XLLtVH3C04cMmZDZR8KYyaC93wRVxtQy
	 f1+PJRFOMJMTbEmFNVGt0XQXv565J2uMaVdAs7woaV18u+mZydfFx3s4nICrF67nzb
	 Hbi/WdYi4uhjUK+Y3yxU+cf+PlMYG5/uyytbKhifcQQ9X8u+tztjTlmhBOssMCcZNH
	 s115VB3UYSIdalGZ3q5P3VQ1JKzimywMWiAHrG8al2um3DEJPmu+FnTR4oNYHoLO7a
	 I7O1ZhHadjIVe4KJ90A/FTyVxiJx8/CEkXXq2EK/otTmbRtNgmO9FBu+CVt/yQsVR1
	 Rn+nnfJqt/Jmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B459FCD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985815372.19882.16949173866642139396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8ea46fca9666345623c892dd55bbca5d42b656a3f02edaad12d8b1e28f4a88
Date: Wed, 27 May 2026 05:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779858153
