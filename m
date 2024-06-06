Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4C01754B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717651643; cv=none; b=lxKyH20Q/BaO2yOlg2qFGhJgB+aq6LJiObacVa1B10w7rMGmpRSdqmMCEVe8xPD5mppLdskoMEIApW7RXJEID6rVX7yjuvSn5WLncBDvfT+oKUgziSuOqvJdrLhJ6HAoBqgOUe/AOTZ8EpuMc8j/3Ax9Cq8WkEVUw88Y6U0JFKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717651643; c=relaxed/simple;
	bh=pzweD/d543IeRkn+wZpTwPgYo1RKsO56E0y/hErZpCk=;
	h=To:Subject:From:Message-Id:Date; b=kQGA9A7tzw0PUY2WfdTs6+0re22Y+5HF86++d4ds/5LfdGOeue0HiVHjaF0PQpI5FdYu5bHnRBPhqYDE7qj+CA+h5Rg7bTbqZvXbaAwHZsCtC8HBtOISeN2nQ3i8wPyg1fTTAT1H1PHEjTMrjQHvzIGykRRFyJQtW34ZcIZGa0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+kEtdYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+kEtdYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F32CBC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717651643;
	bh=pzweD/d543IeRkn+wZpTwPgYo1RKsO56E0y/hErZpCk=;
	h=To:Subject:From:Date:From;
	b=R+kEtdYblq3foylslIO7s2mKM4+ZkHtm7UCCwy/cmqgFKPhDa+dWT5ELZIswDE0qA
	 LWkQpUIsVhLU5q7oa907LHgWq4p7KQ9g8hrbBn/yaUc4Ao1XTgWz/WtiF9ETscc1Lv
	 DQ3lD1KaTWn1R1XUj6iaOQHVbtNbddb6sIvRHzb3+AwXGud7mS6F507+AFcb/wA3ZH
	 ZRba3HVoY4gGruEsnR1AtS/xV14GDJ8rGscr0TVOWbNskjX0JGlIEpWwa8GAdPBGuj
	 921ABOGO1PGe8+WK3Bt0+k71iA6WiN8h61YAVStAJG3ZOMmJh1jbYeTEUqHKBTdDUQ
	 fXU3NV9i5KxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD96FC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765164286.2046.8078722727700709872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e1e700fcb81a8380c4f85fa1077eab6758cb91fa58de52ad05801fce7fa089
Date: Thu, 06 Jun 2024 05:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717651642
