Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5177F8BEE
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742546994; cv=none; b=ZUY7xdqjHFJFBbvfzSgb3j8xxRIwiEqsB2AyRwWCnfjZBKmtTbc4hP7U7IbG/Gk858DKsUAX9o8PDf8eTD1dYOPfYQQPAxJgsDKA1nbfPhS3Cpmwhs6vTzLoblgWc4CQQSrwV+2g6tDq22TlbC+yRDmz1zqLKgbntD/t4A9O+Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742546994; c=relaxed/simple;
	bh=ZQsZqzPwDlKXmzNtKOUmeli8ch2KbScbCk6E6hzH5So=;
	h=To:Subject:From:Message-Id:Date; b=LNi2lpznOzhJd1z7dPqxcjmMPBqd523Q4apFrgYrBwP1VHUU5ypHC+JYeQW1sePuB9LpqX7VigoHyIQUp8ltnC/edrY2ZHvV3UPhnFnisPjBL0rvQ0l6tPoOKUKKx46cX6wg2Dex6Xy0vao6+QH2ujIkD7IvyUPe5PPDpe8e9rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKz0xcoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKz0xcoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EDEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742546993;
	bh=ZQsZqzPwDlKXmzNtKOUmeli8ch2KbScbCk6E6hzH5So=;
	h=To:Subject:From:Date:From;
	b=JKz0xcoC63p/oaoklFTDqPX4fYc/BYE7r0i8wTxf1hX27S8VdN0bnZgbiBwRyyiFj
	 xlCP9AIcik6JJmBvSCwfj1R760ufX0icDCj1cJno/3ChNpXGgrl/7YBAfF3AS9EZDS
	 svJ+Zup9bmhA51Z83v5Ae0rakfJIyEwqTSjcb6MxOsArsa0ROUMshlPU0/IRV3so91
	 XUqpS3FOr8XzlrEc/XavSgbEn2R0/qrosRV8AVHqT2Sk/XvTjMG/DeXHGe2OqJPtbt
	 gX8pu3KrxZlTDgQHhqZAfFgBHKu4b+VvgpWN79gIGqLI6UIaB0BJIQJypx/AYCrbrx
	 Q07JB+Pz2EfdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B708C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254699362.14574.16696420227488551805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d836270ec065e96445c39f3e031545b3f84ad1191d5778a3f818cc63277e0ae0
Date: Fri, 21 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742546993
