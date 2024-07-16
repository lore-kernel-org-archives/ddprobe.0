Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0904F1A08C3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721157923; cv=none; b=r/J2O8L00hW2cQkBGnV2OWU+t4E1vuj9uDlATY2QDxbF1rF2n0n9lYTewXKO/qUnUCZyqVOL5OcnirIQK7T3u4J3MjkfxE6ydW3mb65h73unhh42h8rfOFFyNrs1PyfhhGgGtOp1BLR9qC796VSy4TrzP6+8Ex/vcVRVwC18Ywk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721157923; c=relaxed/simple;
	bh=/TYuz5fzTHsSjsIwPKD7gU9Fq7MHzOemYL0WnSub8Gg=;
	h=To:Subject:From:Message-Id:Date; b=BsuUjQaTHq8k55iRw429veVNUFH46XsbjuXXPwNqCQFh267n89Cv4iQi/43nGoTt0jQtqKSeZVK0NyvnAM4CXAN/F0Gj28oAYFawGBoMJ0xUho83M6TIZWkRsgsjZx2SIOqimCvjiZlLmKVoj9/7T7yyrW9orndAfPbA6MqX79o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0b8ku3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0b8ku3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10EFC4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721157922;
	bh=/TYuz5fzTHsSjsIwPKD7gU9Fq7MHzOemYL0WnSub8Gg=;
	h=To:Subject:From:Date:From;
	b=N0b8ku3bzN9XOa6IqgrhrQab3JhuGeq4jaXjYfM1mBc9lQ6tG86o2tvnClkXoCM9Q
	 97LI+1aCmAjJmwpK9guqn/4qsct2JwpuzcB7/L/zzkjeIugd6PqzjeqkSx761UvIgG
	 IPkEIJwOyOndycv/IYT5+WyBOQnUS/7YSNjEYeTpXyXug9PGXXmF8rHqzhJ2LvExCA
	 zVFwf8BV/jRNqXL82l0iBuPvlu1kFd5584vq/zijJG61BuYLCPtaIOiNA6bQfsDN0L
	 7xhUglEPKNpgacRR09XC1PG/fyfejKs+N5ZJn7NuKwsApvIkYkiE2/e3lyRAfC8RFZ
	 rdJ+PlKP3h3Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69BEC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172115792277.27218.12691156082539913402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3998ca8bfb996166a5acfd0b27941718ba89cd73c36363a6a2df64a24aa4f5
Date: Tue, 16 Jul 2024 19:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721157922
