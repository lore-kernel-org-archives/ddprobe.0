Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3593C8489
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733123754; cv=none; b=fx/ZRunGapfzB6NVyFzx6bUs1hm8u/l0GMyMzHImESMj38LWaeXKlHe9JNPuhRwdMm9a6A7a+3kD4OsuV9qExD5TDnUaS3b6RKOv3ApHEFhxnCAekaNlQq8+4cJ5bxetuTSXbOFDV8wPMO6+vIEraPhTG7V3pYe2k2V281ZyVLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733123754; c=relaxed/simple;
	bh=nM7IPlPJndbzgM1JWslAFL/t37LmQqtO6y68B7NjmMQ=;
	h=To:Subject:From:Message-Id:Date; b=iR8yD9SbtG1aEX6GRqlS/a3VUp8MT9ndY7/e/MnNm/6fD+x1GBRH8RXiQ273LX/NJAEemW5SyE1mh3ETm208y4+x7BuzXiOLEMdOsMNWe+OE4mNKi2r9ZoaP1+MNtkBOnqTJ7RiLflQbhQci2oPGRlne/uUETLp2V40zI5TreGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFTkLqTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFTkLqTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D39C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733123753;
	bh=nM7IPlPJndbzgM1JWslAFL/t37LmQqtO6y68B7NjmMQ=;
	h=To:Subject:From:Date:From;
	b=iFTkLqTfJ/ieqCtrq83TBSZPM5m8iz3ZMaKCtES4PW3SAJcIb7/NjsthvLrLs4geE
	 lAdQlMCARGoM9YGEBknnBzef6CQnQv/KkBifma9MG9xFA7BDjNPsZoKPfrZZBXkd8a
	 tZS9mYOq+nuomgLblnXZpXBVCxBXUJa+uR17p/34VT1kvS/PByIx+qVPa2BKsQfv4J
	 hkBwjJZj4Sh18XKkwwJQ9yvkVMYDiUJ8sy2l+IuArNntT5r9U94BxjesCpntF8Dj7v
	 CuCQ3CsFClW41aUfVKQWjQVCAcd/pLPAs3d2/M+zmvQZeC/pRcX02HN3wcUhbMcDUp
	 KRuraUzONOrEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB78D10DA6
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173312375362.15721.15774151232581768993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1589e6e42318c388181ab1807c196b33060524f5f006ae50b1ee53beede0f0
Date: Mon, 02 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733123753
