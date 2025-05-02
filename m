Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35384376
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746221394; cv=none; b=fYXjDywRssuMghX9IJoU9v8i3QzsDXCO1GIsfTrvuZ08EC4tJ4Wn8nelyiGFMdy/wqbyGVssP+Tj1XMilSeRtIS+Bpj1q+PU8YMa3Xikk6s/SIf+nUedLQJVvasGs0wuNecNkDvDh+41rqs6kMVh8zJoQi1pubfqg0V4LyTDeV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746221394; c=relaxed/simple;
	bh=nABCVzDrfG7+JLDYL1Z4Jlf11jRvY4uAaucQCmdtu0E=;
	h=To:Subject:From:Message-Id:Date; b=SWbGop4EM834vWsHRuXemw5aESqeflBujcZVSBBS8+7O6XaP/JbaRMz7JjIGj3NATSZs10FDbXvuZF90r+wUqyHzupYDC/liW/SEyKrpm2LOpj7yAh1oHw9ybIjj/2br1K6BW9ofFoBPjV7fk5FAZhgn7NUeZIbPRLdWn6F+NNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkeMdZqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkeMdZqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD27C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746221393;
	bh=nABCVzDrfG7+JLDYL1Z4Jlf11jRvY4uAaucQCmdtu0E=;
	h=To:Subject:From:Date:From;
	b=gkeMdZqEH8GQ74V1UwEs3NAssQCaoZxiVYNXNSWquFDInN9F94+ulIuejRHTUp3X9
	 LqwsFBJrjAHwIxBo9ssfBG1LhSLZYchHWJR7JWBtbJ2qeUX83fSb5S0ecf3V2H1OM2
	 TPL+s4hhLXGcOqcSp1yvIWnx6rwDCp5CmddSoAjhD08pU/IAKNwd7aiS+4wkGLf9Zy
	 wvF6iDs7l1lUaQSR0c+CAPVJjALI+9NH5JCO/rVgREmPk9qgQl99NS2H6bn+UiV1Lf
	 +nTJCYiV58zLLknQSKnrwBlDjiE6fnZ4pOb4Swq9j05w+HBAqdbyyP9watyFZEF1H/
	 PbiXoN4LWBVoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFFEC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622139357.30209.9120307963705386232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4847c3b7f6f55b035968a4e3dc284c8a2aad4a91373ae5f28b23c6dd0142b1
Date: Fri, 02 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746221393
