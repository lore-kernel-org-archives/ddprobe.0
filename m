Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C10372058
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783994314; cv=none; b=FTUu+lEvKkYiEwPcReJBdlmcci4E7KFJgtkDPOovrHcXOCRIJU9Z7v/45S5H6nbGlzXIJSdc3h2spLCv3utlymEFYEtnnfnM2RGr4nLsGwkHdYUlvPpTi0EVamaz/gtK6rELeHSgY+66SvCYF8kbZdoOhnLJ0bPVfW9l67GiYLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783994314; c=relaxed/simple;
	bh=JOfwTLjD9yckX6Orb1kekU1d1SlodMaK0Yl2jPAZZ2I=;
	h=To:Subject:From:Message-Id:Date; b=R2j/T38Vj7UlX7CdNbjmqFNS6zlgr4PtwxhIz+oVpgFQ/nvULMkTFuyqEgr7G6ktKSC017oTDlT9fA2jnq/iOFNoYbPmQvgwx1tTtQZA4yz0a1NTorKUGxiAaa+9R0/9duqPE41plaC03oG6e69U+CmrscJDhBHf+eOgj2x3kXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdrrNt9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdrrNt9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2BDC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783994313;
	bh=JOfwTLjD9yckX6Orb1kekU1d1SlodMaK0Yl2jPAZZ2I=;
	h=To:Subject:From:Date:From;
	b=MdrrNt9quSIuuzU/iebYyegDtRYeMP9UOaLox8246y7axqe7aaaYQUgCoQGFg+Hyn
	 Q99ME4QhjtKqQ9OyKke1YkixKgT6N5ZxcFZsI5kuQVXd3oE31aSKx/7sR/ZvzRaJSl
	 lvsccVERjIs8zRmzbr5vxxEzJL/hbAx0N8ngkn0HDhmNbvUmlcwY5ErLQCZxvtiXAp
	 kVu28/wASWs6WAh96ob8zn2DXtJ8nmkfQg+JJTQFVl20DyqzXPYcvOoDsPru038y2I
	 gFVEQqTuXg+ztDiEvrvvtU3LtIT+A5FhBb/X62sb/8o1LQxXjZf+63MbDgYlIOef7h
	 wZ5nAtXcMLt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B26C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399431368.7364.11916020414836679342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9aed48bb886fb1cbb4d32dcfb93c515796d5fe4a8df8394e09748d9c66e195c
Date: Tue, 14 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783994313
