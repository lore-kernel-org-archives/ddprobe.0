Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0891C7D407
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706652497; cv=none; b=eC+j6kd4cUI5NilJKQ21h78NpUTkTxCXt56rflXjMVpfFZVrIZ9Socb60xZsyXiR7fT9JHeroyfCuBrGIP8SsjuEbXHuBmMgBBCmqPLB8mmxd5PKXGyYf2Hk5cwKNcYWrukOziHQjNW9YcyRGq7yAEmq91p7yh2fKdsjo8Q/F1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706652497; c=relaxed/simple;
	bh=Vt5utPT1cOS6GRSxLxdfoAcKR7RLIcg6CXPdjOAb35U=;
	h=To:Subject:From:Message-Id:Date; b=XsRJbaIRe9R9ma93hRfPoAEdD2XMzlzJ2226L21sH/4ZUJkZwVOTVxLRFL8o3KO2TAN4ZE1qG+GDCqx2HO0UGYYBBkslYyBbPhGUzDtxntRpZW3iuMSu7NlM9Qi6CbgJLWVAfzrDOO2E6uzvt7WdUSv/V9AzBwVewIBZgH7X9yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0OwCRM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0OwCRM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C590C433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706652496;
	bh=Vt5utPT1cOS6GRSxLxdfoAcKR7RLIcg6CXPdjOAb35U=;
	h=To:Subject:From:Date:From;
	b=Z0OwCRM/H9+CStQwpFAhP9fmU3yTc1DFUR7ygIUXqJU0er/mjweSaYnGAeGp5B7aL
	 jlGdvJqnW20olnCz0l2X/17GYOaOxRXX/m6acSlnsds2c/tOTEFCXw3LkEKTD+hjTA
	 9gBOdTx/ht4ACdwPErEuVbegh7BkMOgr8plOgj9ylrvw6sI1SH9Wf3KZUwXsF4sGk7
	 0JYg+NHtLJPYccUU/inDQatnaDv9c4XNxkOOkiv6x2933sufTg7G0qqJqjJ5ocgSBu
	 uZRE4ZXpFA8oa7Xm73LAYucCVPCRm3ERQwKy64gK4kymRlXlkhRXE4qnwi9hYcYiFF
	 oWivcGPsOfspA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64840C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170665249640.2528.2579791027099724119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b694eecce3b8f867d95918ebe09064c2211d863e5ba10d4264b24134ca1b35
Date: Tue, 30 Jan 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706652496
