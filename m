Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4F413B590
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744997994; cv=none; b=kw66LoAbCDMa/K0ryjY/xdNwZaAUG4yEH7cYnIPnUhsHvg+rG5Xd/7SADTaq4SyjL1fJ5OV5XeVez+RkEz/DAFkuRzoqNM6sQ6YBZbun5J2fUJba2j4xHdvKFukqaq5+myMmvasUCjQo7zKyUK3UIl0BsLxCBrA0RN7G6sjAd+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744997994; c=relaxed/simple;
	bh=qVTG74xHo8k+VzMTsoKVRequijHe8x3pM3iJVcLYk7U=;
	h=To:Subject:From:Message-Id:Date; b=CW8cs9F6tF5usDoJIF/efw2ybyGpjBmczUhKqo6bnsooyVpu8FXafCDU5OLpEXGvpnBMXtrVo/yP6wlxRh1MjZllGR8YOCGgTH73rxduVojY0q2g8ZJHRJjQV7PblZ0MQCGu7eltzQPGNQrLQ3vtJlwfOwRodoiGmkkWjOjoaOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E//nVX/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E//nVX/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A222EC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744997993;
	bh=qVTG74xHo8k+VzMTsoKVRequijHe8x3pM3iJVcLYk7U=;
	h=To:Subject:From:Date:From;
	b=E//nVX/7KCkhtgQ5+nIkLgKIq3SmTGftdzMp8jZMKv1nC5bOzyRJOdbCEnT9wX0Ia
	 0AdvYBqo3UNZ/8xp0Jkp9hQIsAiqDNPmtrr9emqfejwtUTKhiIZP4z15LS9he9N0L4
	 I/Ex3q3q4768vHz2vv27kkEnfE/mhCVgEjNJbZK3E8XJLfCoEJGGeUUmrHGVpBhlIn
	 8QEz/rVbMqNhSg8CsQ+mk1R3xmP2lc9XXB0BsmDgkgz0Hsy3rocI0/WR4twvThlAcR
	 geaXfMdUq+k84ziER6YayDhKCIwflErJf5hAtAYp/lZ/sEArAhggH2m8gyFv/o/Q7r
	 Jq/C3o/7jEQgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A9C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499799358.25595.9933895840659219406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3e6b028723c9ebee493a20d237e9d28c141245f24ba303dfd4ecd499c72a0e
Date: Fri, 18 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744997993
