Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D5A396D14
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773666894; cv=none; b=oOTyGWsdubE4N3tqeg1Jd8YfGa8ap1b1+9cJ6ygWcdaT1LnYIQtGV2SUuvK473/KLXiwR55DBzurPcaJAaGV4GlRNLrIPvzFJtrypa9Lg05aMz7WW5ZtDq2E37jc4Z/q8kaX+tf3ppuuwziD8SzcaX2g1z5arPbXOail2RsiM9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773666894; c=relaxed/simple;
	bh=90hbafRPAkQCwYcsG3GjhiQm6kLFvuoisPGUxolVM7s=;
	h=To:Subject:From:Message-Id:Date; b=bzx6lEJIE0gYt0X3CuIM20adcs5H/oAV79ikFOC9EBZpXjADecMlL8tKWdJ0mkrC16xea979Nd64eysCcvReSz1l0wNbBeH0X03/FiksnHJCtXomePz32xGF0LrBFQff9zM7cXi6ptBjc1b57uxrU3jiVosHLPbWi5GxuEDlRD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usKU8vi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usKU8vi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF84C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773666893;
	bh=90hbafRPAkQCwYcsG3GjhiQm6kLFvuoisPGUxolVM7s=;
	h=To:Subject:From:Date:From;
	b=usKU8vi4F4t8IMXcf/F1Rea5LMatfz3qpBT4NhSEV9/1oJZkCjLEY7/5/mKRG5vEJ
	 uvkILeTNXf9dkU/2zJ7wju69KbphHBV+cwH77xslPJi2pzY2RcldcggnOBL/dWEhTh
	 P0q0t8w2ZeroLyCXXB65mkfioAVtQU8ZYk3UV9RqIp0ISjLvOBwljbNvA7ypD9kjoe
	 qc0a64hEJuV/cXOhnTSeCfG1mkRg0SAMq/ruBuDOJ06jIYlvmfk92ZQbdnHhTRCZAu
	 ZGr1aVzVmd+Hl+OeCAq5LDb2jD8SeMZdlYE4kNgZomWa6Bp/LE/H8WsMNvu8AeysbN
	 QICfFJ+Wz3OnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4ADF506CB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366689362.25531.9700414507876850877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97edbdb9847e724bd287a45e7607936949a2edf6312822201806a84c8476f400
Date: Mon, 16 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773666893
