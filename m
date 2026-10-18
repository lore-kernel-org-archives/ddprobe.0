Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B762ECD32
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792300834; cv=none; b=qGcF+9+YT/eaMbaJ+7jcZW9yyPOQSfaM4Y28MvQS3tQKVoUkOaj11xoGeHGiSP8Y9KfZ5iFZoo6Dkjn2HZUY05kjaSw8jFGX7bqKn14+07IeElW+B4rx/eErmkqc78VDyYRRbBkWWIcfkwlabqlzGjiZLa+wfO0B9fSO5OeKyxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792300834; c=relaxed/simple;
	bh=LXeCo2Qdfoau5GIMdTyL1nWaE6/GOS1XLYVZRDkwPYg=;
	h=To:Subject:From:Message-Id:Date; b=rYR1bwsSOUEwcJk5YBGqveWQH1T3OlyEy//xwhSYl6tO9sdnhJnPmSJlEIpxDO296ck47ktJ2AMd2PN5YtvIy6ocn+L8mHnTSP75LSdLBJm/WPPgHqLAAiYSc9+vIXPcb28xMmrINSGUm0A/2vqs5FECiGFfLx5TgWWNmiW/hwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYh9XdHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYh9XdHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C45C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792300833;
	bh=LXeCo2Qdfoau5GIMdTyL1nWaE6/GOS1XLYVZRDkwPYg=;
	h=To:Subject:From:Date:From;
	b=QYh9XdHnad0duwpFRkUgmn3cNj6l7VeKymvv/bFT8aUJRjCRwKyueRSK1EabY5gkl
	 1s6xSsu4tZfo5HXTLHhpUgKLJo9PB/RcYVKq0KpEuWFyMxgQCXZ5Vzq3umcTulilFR
	 bRZRTmfmNo/R6FQeK2Atsp55PwTYBAt/eo5Y+QNRwUiHFzzzJCy9EfXY01dgoNDjmn
	 Cu7pGbaC27vfwm/ZO+jlrEvR9kf/LoQxWnvvR5feS9dPLJE7fJzU3lXvsdmAWaKzF9
	 hZHV9iKXOwrh2tPHDQU/esrc/XpM7hzY633UZozaJxZK+b0RD8cNwxva3ZvxVi2171
	 uyJRoPf6gohCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D2ACCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230083370.5662.6062128157473795531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f305da085909fbcf64faa7ff91aee49a710c5a920fe073f2dcf5e47cc3748a6b
Date: Sun, 18 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792300833
