Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BFD8834
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758920994; cv=none; b=bXmopUpD+qAsNtIlsWbqZNuQkzO0SSIe+tn50iZiHiyKZ/O2sVP8nq1FLZ7ZiNH932VmlTbE2MMWoGJyJAmM8/Uz/KLAd6eKsSfYaqwCKYeZ9BGyJq9O/prY00Gqa3BxCFJytjGOo24lXllFKtzAu7w/3KN4sGiAYmTrliLHZKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758920994; c=relaxed/simple;
	bh=p52Z3+4CkPVLAEeSx/dmsgrHhFVY+H/NpLobWJuOmIs=;
	h=To:Subject:From:Message-Id:Date; b=eFFpPf2ICY4e18Q7ihkdGugrd0AkRIVri+W955rI+AVHcMJPoss43sgMdb0jBl1acvCBXcdov6JWgTmFPRyDddVI1T1AY6GB1oXh7kv8mIoAq/kAOWHkmubpkkc3p8pPcwUSRxGNxRKHL0yEpBrrr1hphvjskAmBzd35nXTkBzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPMZgkHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPMZgkHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1594C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758920993;
	bh=p52Z3+4CkPVLAEeSx/dmsgrHhFVY+H/NpLobWJuOmIs=;
	h=To:Subject:From:Date:From;
	b=nPMZgkHu6GdUIuKNxax4mPLVvdZUw2Zth5ACDxcFN6Q4TA+oUZUNKSU38yzoKtmjN
	 /jPmlsYhFkxjbIujgbyJyuDJhS+PDVYPGcMXiIKWN4NpeMnUweeE5Zqte/LZNUNUwH
	 ki54ElqzF8sAB8uZqA67leVltYpR+Uhm3xh5Wv2IQkyK8NKPWBeO8TdOrVsQ35Z/4G
	 MA0ci7sZ6MeOxjrHUJNW0KC+8/3irKclZulQJPU/qIqJweAIKFK0hVksS6VBsTufvV
	 66VK7zrvo9pj//lTimIhjOk2GQcX1Y+Z0Yzqy2Fxz5vI/LlVlHJaVB6ze/UjwnN/qv
	 S1SlsWe0OlcjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D06ECAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892099363.3647.1611864838729477255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d6591c491a74e903698824ad2e9a7d526c21e44aa3ddbda8a1df6528bd0ff5
Date: Fri, 26 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758920993
