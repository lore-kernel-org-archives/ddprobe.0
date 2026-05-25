Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC4F1FB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779675754; cv=none; b=UeEL7Gv/656BAoZQvAIpK2z3+hIdzV0vvWDJ92uxnmThLk8BP9fgq9cvOZyrb8ADioCor0wotA7tfS0IGWoIdkoBtttN0YEkSzFC+CkoxgLzkP4v+2DzQqbcAe1g/ZYQejkkxTFLDCvhiIhT4FI3hb+ovsLl5Mw/viYFX/hpNbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779675754; c=relaxed/simple;
	bh=WhU2SCp4Fcj3fkZDHt0Fb6v+0Gw4fNaPkxKkTsp81C4=;
	h=To:Subject:From:Message-Id:Date; b=L13YVjyd3Kuwfe71Hr7aYxyVWsv0tZC0LrPkDTH6vHPSBl4AGvzimcx+oyMY2EqEhtCB1KML+E6VDTdo9NlTXu3C++FhaOmzgS4EZbwxwBlRLtJlbaUaFYDMM+b6NGKTSBuJtZIlBdeZflqXMwoJW6RW9tdBZTGPI4RTb4AuA2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bw1Gxzx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bw1Gxzx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E4DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779675753;
	bh=WhU2SCp4Fcj3fkZDHt0Fb6v+0Gw4fNaPkxKkTsp81C4=;
	h=To:Subject:From:Date:From;
	b=bw1Gxzx3RLpVKazza7WfqVc5PUqjGNdYTr2Cr+q3yYOsbVH2AIjV/zz+C0J1S6HbY
	 14xCMvrGTT9oisT2xYJ5VWxYd9kvCxh/02nJmXDV0LETf17/Ni4WICDJFRjUTkMHVS
	 jwfKWjLHYV+5qw7No1YHqnLnLXg/A6p4/YrQ3h0hpLJ6vgiXYA/007y2uenpdt30Ko
	 o4l3vGK5Iu32AMOBZ7twtPchekqwgRHtrRCiJti8MMOASgjf/UJonwpKKY2XV9zPgT
	 ybf/CBxU5G2ndUUwju5OtK67jsiTXWWKdSAbog0zL7C1mFs9EjJ8ArNAH0Lg/5dXyD
	 fdhxY5IB7gmqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A875FCD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967575368.15221.11672986173943992028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8706fa179d7dd27a6a172300011bc92a1c0b824368d9f8fee419ff1c56d5a7
Date: Mon, 25 May 2026 02:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779675753
