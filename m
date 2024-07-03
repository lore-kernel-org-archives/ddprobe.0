Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DAE4964E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720047923; cv=none; b=WifVOR0QqGykPb5z1/5JD9dKE0Kgu96B2cBbttGaArxq4spIa3NbH8k1IlmXnkutReJvLXp83tuIbvFZ/hyh8GYlKKWlnyHcmKFz6R8/ES1aqHgVlC5+d4uyIugGFSUDmvYq7dY0tAwg7ReiAq/CrLzswXRm0ipagedcToJyb7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720047923; c=relaxed/simple;
	bh=w97MC87EPHlV0ysVXseUXYLvs3hOUdOKJN9mEcfUQCc=;
	h=To:Subject:From:Message-Id:Date; b=A6pfuX4PJjS0S0B4RKIt87+bbi0lkbX73dyPN19f1LNRs+vYlVA+SujYB3KhFpvyt5sV1GflN7zaLtI3u8XMwm5bll2D4Pj0fHqAfhps3U6YU5PEoly253S9NnII+9+zmzmPx5Z+CAA9J32+d7Se/uG3jrvdLPpRKESNtXQfbL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGB4hwuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGB4hwuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42D3C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720047922;
	bh=w97MC87EPHlV0ysVXseUXYLvs3hOUdOKJN9mEcfUQCc=;
	h=To:Subject:From:Date:From;
	b=GGB4hwuAWfZTDZlMosfet52amcwP+VDfIw8LEwa3YpvaN9luydCGtFGv5vqTsKRIV
	 frl2MJFtglM51tvYJMzBlH+oM8wFi1wzFA06xQtFIJmkF5DEg5tt1PICh6mCC9b82x
	 smp+Wks/DN6+Z4YQg2DNcRnaUWAWY2fnLuw8XN7t9Vl6RXiVXvE//SWmlAYBPEzfcd
	 X4UiMS3hTqISRXnDxUQHhiQNgyVLMpN7AKxYdkUZfn4aIwAj1BUDTRIIAcX2aEUZrR
	 nlgk0voQkF+5JVEJzuqfjq4Qvzac6Ue7+l49JLVVQzG4JoCvLawoLfL4+d+0wtZCO5
	 fz27syyzchoRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4260C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004792277.24229.10942886324845843678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6dcf20a91db9d0fcf4a8a35ffb8627ed4f70431ebdd841e436fce1b6f45ea9
Date: Wed, 03 Jul 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720047922
