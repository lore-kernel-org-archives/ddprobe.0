Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD542D12F3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779484954; cv=none; b=FXWY/M+BMOaZgNc7oXRxVwCscgISwI2Q/NclGSgYhIRyjSPL5ofGIneVClspi4HLz1P5HGoE/oh8dmothvVOuIYxstMjkxNrz74xfQvIpgBV/e3Br0zPUh4q5AjY9mGhaoC2RCod7L4dBeD3wPNcf6jobiun2L8RPQ+eyW/PMeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779484954; c=relaxed/simple;
	bh=tObm4afBvhOJwitPTMvAzYFIYIsCteZ08M4v7krVK1U=;
	h=To:Subject:From:Message-Id:Date; b=jR7CbTo2pUufWzZ/Ud5ziNNnW0tyrP8HA3XNtl9JbGmncrIsrfzCol/txCvsu418xrrbKDosfEeeMzabW0EoGd/17o+iNjzQer3ZESvyj+IKpXrv+sHpqo8jW33mpKu7quRx2OSn8giy9qtHVZj67AiC7rVsj07q7Br6qpXxrL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgMxzDo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgMxzDo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D1FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779484953;
	bh=tObm4afBvhOJwitPTMvAzYFIYIsCteZ08M4v7krVK1U=;
	h=To:Subject:From:Date:From;
	b=qgMxzDo52AAjHttcwZ7yC5AZaH7giekqJhGVgvbWfvumAygPJhjEnCwq9cL3CVe7J
	 acAIqaCjrBsfO/ydP2yIZ7/GCY3iXcNCxzl1/xHS5mnYsH8+wKq8jkcm4d0CzC4beH
	 N0ZHH2sy4rmKMPrMSfMBt7tW4ySvR8L373VJ+0VnVIx5DRM8Vbhf8VyYpxq/l872k9
	 PWrWAIvvaEs85o6w6sqg+dLbyfcu7CQvo9ejNVYDK+IPr9JQIWgt7betu7+Dn2j0aq
	 3M9b/RG3o1ZRCsQKTnJMo7O22R0StQ7cSl5vKH/R1mGjH/LiIRNaErwQAFDx4M/PgV
	 wtOhnn2ZUI+nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF3DCD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948495370.21113.8009042006504240618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d0c63905905ac3b2473bac1a84d634fd518d574119b4d1d93b14414b083250
Date: Fri, 22 May 2026 21:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779484953
