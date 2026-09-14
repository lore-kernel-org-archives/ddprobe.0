Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DF6481669
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789414235; cv=none; b=E/A2J/UAXBd7cc8IlPFneVbhP9W6dwvHzHSBJuPPOQw8aY45AH6QHaUcVAMcmNqPwf82f/Kt+HgqMxELNw61mhegD5xlGlckvbHC6tcRqV0MliZMXnhw8MQ3lq5WM/5lmL9dn07bRIaUKOt4oeLqBfpVdVrJifElukI5itHHpq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789414235; c=relaxed/simple;
	bh=9PRXY6bDddnvjvFxAV02fBmtwYL4v/3Fvee8cMAX8co=;
	h=To:Subject:From:Message-Id:Date; b=iLoBn/jGkkucYCkSQc1Z+v6ja5KF/o2eWvaxLdjTbRGFKb0Fy58GvCH1hAxmGgNbyrPR/BlINSAFYaKlgjVEL9oZKgbl08WRUyPmGY01l0g5HXC1/Fo6qoZxG/oxeO4wEf6xAztV/izwPBskfFJ1xC6l3L5an3h/LYBxS2gyxSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABZsxs1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABZsxs1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F1FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789414233;
	bh=9PRXY6bDddnvjvFxAV02fBmtwYL4v/3Fvee8cMAX8co=;
	h=To:Subject:From:Date:From;
	b=ABZsxs1wZRAdKNus79XpUp82hYvgvm0djXO0smpSyYOwTknK+xTkBn9nXvMt5p0FN
	 Eiirr8cKnsuiNWV6C9w2gE7SNvP6r0WbFfgDEhWRE6VrD8CGCJcEFAZRvinqPcLRLk
	 hReq7ZDwZvISEiprbfmzM6HZ1tPMM36L8+2bbxVd4mo7Tp4dKMQinXazI+AM79BMLb
	 oJVOm1k48fQ0tfSrd+WnlqeDXJcBIPbhFSAiG2Y/wAt/I0r/TxHqbenJS5Ym6GHH2P
	 G2MW0JujuNrFdZ9OXf7CchXdvLIbpUYebKhNX/ax+1Zi+osyxJc8GJyso6jE9FSkK1
	 vuESNiEqyoLvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C33C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941423374.3264.4705549437064024521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199e1eaeb5f8c97457176330a01913432ba45161947d76985b088afccc045e69
Date: Mon, 14 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789414233
