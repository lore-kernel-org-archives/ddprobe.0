Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4571E1799F
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778450434; cv=none; b=W+H5DyNsykgPCVMdhzmLI12wgISGA8/uX9iYz3bHE2no1D4nxi1Dj7fJhda/DH4iKeO/qn6Nqn0YbFEh8stFZaMJMZRkuxx+z6wwY17eKXBI5yjEEakCwCOiV07LZs1S+Hw4rZ0enc1nGr99CPy4V17WJeyfSUwgmN8zWrSyTRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778450434; c=relaxed/simple;
	bh=mtUBCJNNQ5cq2h+31o57q/z2+ir+jTwMg8s9KgyX5xo=;
	h=To:Subject:From:Message-Id:Date; b=p9bkEaZA9Y0Rv4oYnWeYMqRSnmKR9WMo9Pm7bDQvzVAljSMl1lt4N55Waf+UjyByne8OtviFthiT7BEBATF+UfHSgZ96nxD4UNZeNkBWVU8MaYXukm3pJ1+wRgF1XyebNnkeONkbwAfHoJ2GkQUZwGe1KGOnlwoFiiRkYRM+9y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uedkAL13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uedkAL13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C34C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778450433;
	bh=mtUBCJNNQ5cq2h+31o57q/z2+ir+jTwMg8s9KgyX5xo=;
	h=To:Subject:From:Date:From;
	b=uedkAL13boZ6jnjPuRLzeaXcGBloui1bZQAThClrYHNhvdSRk4zC3DogP7t8z1JsQ
	 kQbq+RN88JBHsqMjrxtjdV5gzF6pjws4KjK98IpF7x9D0XX7mH/UsrXUrMzUpOpeUg
	 WAsSA+NYN0yWPSAGuF6VfkXaPZ0lH6cNtnrFhDFb4OSD+EArZiG3uBe7xvyIuK9XdR
	 HIX3SmXMsl+qcfSk99kAqZCxD6In13qgbHkwCVuSJBGF7uySft+JzLf45yH1c8GjE8
	 Ak93SdYWAAeW2pUFqRDsAz2yZIFV7FfW/89FL0QxXmZzZfF6b+6N0BSVApa8boOUkE
	 f2F1jWWuWn0Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E8ACD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845043369.15368.8881896883480152430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa3817de2dfaacda707eb353245320535b003faa6d181547e622fc032bd3819
Date: Sun, 10 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778450433
