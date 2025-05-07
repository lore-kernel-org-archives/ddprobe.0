Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C1D1C6FF5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746662394; cv=none; b=REt6WFe0I7YAwJDw94zTmfntvCdz+oTaP0QO1PW2UnkOoW5cRL/xCQ6maQret+VA/gTkMFE2aGxvWC3ygGhmRO5/XlY/QrvAWRCevdnHU3PNPA0ze4ottfehoA8o4hwMKBg8DEdlucOW36qfqLKrNcEa806jTghDdfeag7+3XZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746662394; c=relaxed/simple;
	bh=GYe73p84dgxak29TpBp3dZB+kXCen0AqkhPtcycWPw0=;
	h=To:Subject:From:Message-Id:Date; b=E397+yNjGdNu0b6kIV2+I/ubuA+x3P4X9/z1m7IuwYWti3VfsGYLI/DupCAImXzmlltr+L7cnL2Db8a9qhyYqrYOkeXUwBF279QW2+hvskk2uTcz5dIX9EoXA0omwFqqKTEwunJwAxAWO60BblCOFVtS5DLCrC723ZHAzBxNTpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvOhvOZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvOhvOZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0B1C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746662393;
	bh=GYe73p84dgxak29TpBp3dZB+kXCen0AqkhPtcycWPw0=;
	h=To:Subject:From:Date:From;
	b=KvOhvOZ5ZSyXCcd/KfzilyNjW3aUoV1s/nor9Bbf4ebh4vrNvoJLSwk9E+D4Vle6C
	 Eiif28sIMtH6A3N5GLWn2a4eZbsnWZ1NlJJNZ7UX+UeuWTEIHqC1f4RK+Kt4CwJBaD
	 A9TMT7h/ayVbq+cuusZjAQEgKkSWnVYiTXeLP+0AjxqN4/5g8lJJXVLeuhDgwbHWJa
	 p7nMxHHZi44z9ADn0mUjPeTMUqL5JsuV30OROW4Lx26Mdy7k1ldGWIEJn1FtHmHB3w
	 f9W9oqZICOko/BJDntxhlgbNWsF7FMLHAFR/v/BU9FK9Dzf7XoINC63dc5FGr2BVKa
	 sYW4OndXJtHiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1A0C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666239357.8173.13584504045318617851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f33ae8e188dd13a304aaca86eff9ea299c5b5c7da3542a11a456004c17c128
Date: Wed, 07 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746662393
