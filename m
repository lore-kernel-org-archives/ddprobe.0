Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2E2375F67
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777045054; cv=none; b=fys2d8IsbjKT1PrNM90dUcAARCi2yhkUDhmmsDAVKBuoDAns2fE6J7IxZp0mnxbADo/yDcy6jbSdhXMl1khprm9HxrgV77ViIk2+7EwOe/RUEHbCOx55nHCFa+jVNCfmkdGfgUeARvnF05aDOjwjs4nVqQgMdVpwLWpR6hctm40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777045054; c=relaxed/simple;
	bh=cuzcHW6L3xDBKyJfta6Bt1QHAbPJvnkHJTvW+rI9yG0=;
	h=To:Subject:From:Message-Id:Date; b=Lwt49qWHToHK41LTL2qoWS+JA9rNt1eEICpcvpB582Tyqoo4VDrrvAE9SbhSAl7VKUtFM6yHKuYpZbdw88gH2hnwBLKGUaeMCRjk8WoFUo+eFcGWAMqcg2jUNgDuT63+XMtlcihWQeOU/3XHf0o6+y/0SeM9HgU09lrD57YCsHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF/VvXQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF/VvXQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8490C2BCB2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777045053;
	bh=cuzcHW6L3xDBKyJfta6Bt1QHAbPJvnkHJTvW+rI9yG0=;
	h=To:Subject:From:Date:From;
	b=gF/VvXQYsYtH8kV/kl97UIvAD1e+9PLs0PLgukQYFBKpQ0iwvyQNlqp71W24EgKXY
	 vaVn0u7yMFCnalHkblEMxYM4325qMdoNLZrmvfSgWfl4lvUZKp61KTq9jO+uZtQh1w
	 6wP7LudMUAlEWbuSIu58esWT95N0CpV+N3hHTfTkCLmz6qpbhJHcHQHkRt+sz6tRCH
	 JCUtpoXqJgl0TosHJ6aTAFzGZnSKBwywdQBmHI2I1R9NUGqA4j/2KD/QOOJXEhoxNM
	 iTngpFK4J/hVS9XQ7d9FaWKIpRptVRHykwn1Z7uRLkr9ObIEFtZipDDNAjvTVhwLsZ
	 s5G1KWj1nCkMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA99DFED3DF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704505368.22765.4568852904005812103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eeb6bb4dd8a3f54a99591fd06f9810e46aab3df8531e401a422bef8d40c5b96
Date: Fri, 24 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777045053
