Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA332C11C4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785977434; cv=none; b=HFOxXZK3hca8jJjk85P1Sj+kvP/Evw7xwO1Jh+GJek6OeouX0T1R+m0NAHT+cTuU4qKrxIGtfw1S1qOg3H/QkV8odrZtddQfBMh/Xuoc22qT98DCJ5BpURETPOP/0WW/9A+VvmwGLX7sq6ZMeYpHK76pVcJtWW3SCpf1ArUYTgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785977434; c=relaxed/simple;
	bh=TUMdvQtuBNvh1SD8PJuK85wSLOmm74oPCNXeogEL718=;
	h=To:Subject:From:Message-Id:Date; b=QS/jDkq4OkxP8+0cEZnOwDvUZAD0cLRaUff9lbQUNSNPT/AD7nH073jWeA6Ai8tkLtsBCwaJfu7p7WTd8B/a4kn89mqOOlb/nOZ5/JrYB+Q/iLLpfMxqEWtoSDjWnPM/7EU5AOku4bqU99hMFBWLceZTHOhKSLOE7pEU/ICfgjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW3tEMHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jW3tEMHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D675CC19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785977433;
	bh=TUMdvQtuBNvh1SD8PJuK85wSLOmm74oPCNXeogEL718=;
	h=To:Subject:From:Date:From;
	b=jW3tEMHdKEC8sSBlq3lrW42gnl8JVnOp8N261GjENAS4+3Sasnw9Q9hpJINR5uRoE
	 9Wrzt7v9R804klPPYZdJNIdOikCscUQrPMvVeayJ1gAWkcm/kPBBTmU86chT98ZrBx
	 RMN8QNGiYHOLtIJvf57NWLQL7ZA72Qfk0e/LI+Moq7p9flINNRZXNjagag0H3+rQC+
	 AlUhu4mSKZjphm26YAMxOxtAC8yCy45OwbSG+YKSwUYKiYa2vKM610Q+lnVgMVuQcT
	 /DqWlqKf+RXezLjDK/46jfXK9bmhpifcZK6p9Sg5o2qLkcKWtNlaQYhfpOcMR02GWG
	 0/3lVlxaj+HXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED1AC55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597743369.29705.14494564428943581301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca9ab4c2847eb4decf2782942e8aa87da3d11c1c79d57d6b576ec4339de4d87
Date: Thu, 06 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785977433
