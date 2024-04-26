Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612C413C90F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714122143; cv=none; b=fUkeUAW7wZFe6tLohx5wjHtdQdOysgAyhz57GkaPt11xKOFsy0zzR0VA3G8zaLq90noNUqy/ZfhbfkCGWAWavO2s6Wy+KRr25rrjnO/fKYqd9tim8w2Hsu5MO9MUodcEJ1jbIRHtRP9mmUNo6VkTEvTvQchf9taBagxqKAbfEM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714122143; c=relaxed/simple;
	bh=NCSCrT3PFBQAs0WUGAAquuTm/7LyUeS5mWOdzbQ68M0=;
	h=To:Subject:From:Message-Id:Date; b=uIJidnJ60+X9hoT+XS6gV1N1ZLpEQBqSPbWTQpiojPKYxRTBS5foaXgNLxmBJ4zHkbZ/yHure5UIa8nOjABUc80VpR3x+xXesWLMjt9OcAfOZ3am6XTJoBTE+3d65Ch1MOcldG0WWXV7ORedW2QG1AEhiFqg7ErcEgGmZFGTisE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3n4pWY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3n4pWY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC98C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714122142;
	bh=NCSCrT3PFBQAs0WUGAAquuTm/7LyUeS5mWOdzbQ68M0=;
	h=To:Subject:From:Date:From;
	b=g3n4pWY33bQJgReHUJwh6gjOPS0b/mEXg+tUZvH6Xqyrt4qmAIYefYftbd8w1nVAl
	 06iHVDHBFRgqO2MP+6ThExOmihN1idqT+Y/gstuRItygifCNKBLp/05dUMfj8f2II2
	 8r1pF9RePJKHRGhNRhho0hqZqpSxleTZ9jdW8NZvQENH1ezxpejpwW/DAOjvsG+PDe
	 d1ik7A26OykCI5fklP0RN+7Gk7sFWf9tyxoc5li/Zyr1MAUr1SYLglbSNQdepgqOMc
	 +SK4H2eR+AuSCvNq8g5YJYHparNxlcmccpxg2h8PvthN/Mz1KzZYtQ0VTNWx2OP2IG
	 GnQBVOggrIl5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF11C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412214282.17594.9647797234444383399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d62e160482180e6c6329be1e1147bca301e5f0ecadce4a601beb0ea29d8853c
Date: Fri, 26 Apr 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714122142
