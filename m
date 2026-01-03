Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E222405FD
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767474834; cv=none; b=mOFbp2ZrwnBS8vxj+TPg/BbXZrlq1klidfR3SE7hSqoR/j+ZpsTmYxaFPnFhksZym9zPAQ8cz0/8bWFVT66iv7NNRRE8yMLSa+u6TjDp9WRDDTNeEhGRjjWk+Wau9fbPFZbBFiFqC3p/t0B8sqSJIqAwE2lKb2/HJI/1JpWzc9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767474834; c=relaxed/simple;
	bh=ZuXy/Q+5pZ+wDHDejRs48T0fEiobhC2rU5yFOH0o9eM=;
	h=To:Subject:From:Message-Id:Date; b=eiudy1wuJd0C/10dIC8xE9eJjpqmOknpZSxAYa0HfHg5U428l65y7k78abN8derQvQ+NDO/RlNP+HJJXhgJe3QzOoTWXHw8vK4sUeqIuwHC8dJo/9fXEOoE3Cy+Ss7uY6SrUo3D7pW+5CrJtkRlfxP+MPVZLUP0QajDWTqsIkbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lS6XO0Gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lS6XO0Gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4362C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767474833;
	bh=ZuXy/Q+5pZ+wDHDejRs48T0fEiobhC2rU5yFOH0o9eM=;
	h=To:Subject:From:Date:From;
	b=lS6XO0Giq831N20NkRF2iM8vieQIeb7/9kRUfrrVb+gHgO+5st0V5H0lPwxt+yrp7
	 p32KPo0/e3BbQmqyfEDdjGKKsElZDiemL+SF0sArOepMf9i8BqTZnDwCOGVeB94Isw
	 Z7fTrRCVaXdPyM+Q3c6WWCkbkVpZy40Djns7PbJjkeeLdJN16VKDeqiUt2mbMZGOXD
	 4CBFSpUHZiX9k01DJsvpaBnaRvAGrs8v3gPZCzXlr/CHtIFUUEGZkJ/G+1EF68SI/y
	 DDfnCv2DITT4Esbbgc+pjH/yaFBf0rCrePHYXNtj4X20e7U3ufco3fThrsM8o9f9f/
	 ivPpDS5k3pzlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929EEFC619A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747483358.8661.5937124225887226959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fbd60c88aecbeb6ca69bc8d1b7bb579fe383c3253c370bb570b20b42d37181
Date: Sat, 03 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767474833
