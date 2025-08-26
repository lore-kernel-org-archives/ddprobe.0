Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270081DF75A
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756222794; cv=none; b=eWDlzlnJHS46wInCLmaS2PHn8OEQB7euYdp7+Am7x2B6T9pZnqLMYY2mw9E1jVNpGtKmPDshdvQUgqI+nUGQiYDuvlJDzFKNBm3P4W+U/gz8IYL6sHTxECLjfZSgZ5o5rD4+Tk3MBmt+a9cX/AWQnuN9ydbRnO/44T5Tuxq6T70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756222794; c=relaxed/simple;
	bh=B/WGM3jBlSPduWDntGRwwiCOEIphopcgL4rvlj0KrIQ=;
	h=To:Subject:From:Message-Id:Date; b=sUgHujkCe1MuUxx3YhpNpae0R2zA8L5YwdTJUsb/Ex/MLAvXc+SFahT+1xvnjKxOrZE67MI/q6BeKPg0a3+xSVY/Cm1Xvr9EvNgdZqLyrkTgZOLpjHfunCtZVKW/02ANJiS4q2JZKgT49eUOPsPh9KWpc0+ElR2RAH6xWs2A6ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3rb+8Ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3rb+8Ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A087FC113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756222793;
	bh=B/WGM3jBlSPduWDntGRwwiCOEIphopcgL4rvlj0KrIQ=;
	h=To:Subject:From:Date:From;
	b=C3rb+8ObolCqlUGhmkjjjNT4Rg9yr1QP4AdL/coD8dMHebwKLOJ0vEV2n0zJLkCtq
	 JQNCxqBtotq2cDO4B4oYyw3Ewj2MKr/nVU9tXL0WXmAcVWrnOWQDrr/KJCM6ICasRt
	 cZhMYeiPzonodupF8qJ2+d4i0L54Z0DrPAo2XCBHbr3ku8VAn5Zw6kmO5r2vfFFACM
	 yYBoBYK5C8GF01rjsosWYyR8HXHCYcpm1Y7I5l+sYFeHQ8b86/HF41ZYznzGQ6dfY4
	 JzFNM6ISVClD7TVvm4uRqndR9pHZqo9jbw8ewDXtJL9s2T6wKl/4b32/H5NEx7hya6
	 OgrIC6a1T7LPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A3CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622279357.11235.16751223626986562354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07b0ed3bd55c294161f6aa31b6a377c7feaf25e9277f4c173c4ff6d00be4d54
Date: Tue, 26 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756222793
