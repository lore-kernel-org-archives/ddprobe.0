Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31D1173
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711486696; cv=none; b=LlSBYH/yHxcAYLruMOSRIiXZr8IrWEliwol1qUZSslXjqO1b9MfYYK8xCgwbWRD62whECG2pfgbVR2Xtkp3wOpLjxiSWzcpDhyH/DR/3kritUO+gF3UJRAjkYwKK6zEyVmc213MLsPm4M4X+EJFlcUgJKs51Ev2PH0dGA+9STbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711486696; c=relaxed/simple;
	bh=j4Jg87vw1FUgZFbm7Jsrq59Fp39b9n0PdJscolZLExI=;
	h=To:Subject:From:Message-Id:Date; b=VMROVknmqWjLlCMNzAWWN8tNkmb6W6+vZ8xTljiY6FDU6b8wTwhSwShlhr8emqOJsVsA327+xnNs8nBIKlKhYW7lVWgEAlWQnezmGi8TQjfG4gopHWO0SGGlnGUqjjSfOFcGGyoK+FUo5MJoqc+ELfNSkJrhAmTHIXvaW9O89jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcA60nsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcA60nsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7841EC433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711486696;
	bh=j4Jg87vw1FUgZFbm7Jsrq59Fp39b9n0PdJscolZLExI=;
	h=To:Subject:From:Date:From;
	b=KcA60nsHHqSOD2KY3ws+CiG92JC7bPLVc2LNbCmOeY4rYu03hUscq8z57gmm3YtuE
	 09J2xRW6QMEwdpQQIMlknf/SkwmxgkZi1fxfDW70QYWVDhbkWVlQap2/o7oSHite8X
	 tyWidmtRlSGzVPtNbrjQqXtZIO1t7NMfB2WvWfjESOewr+9r/o1BwLp858s29dQDVZ
	 WbjdIB+VvFA29+yEtHNg9JbOMtqbfPF28RdtOSfoBguGgOS7fiOexbRPLALC9Lo0n3
	 Nza4EHmp2kaE+eyq38aQ4H6MOfbTtEe5vuzpMUiwE/i3kRjOi6wnz7k0FprWy5iAiH
	 nqfwp750fMoJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6532BCD11DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171148669640.25688.4029802552179473306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790d583b988262b58d9eb7c992e8ad69710607d113477ea69cead2c442ff5e3c
Date: Tue, 26 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711486696
