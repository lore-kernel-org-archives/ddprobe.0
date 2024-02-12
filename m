Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4C146549
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707760698; cv=none; b=nGlDmjAMZd7G+6Fbsk59mtb2btKND8vGxz8Xs1hLGjrQhz9m3JNEstwHwPCligyhYAKqV/4ShNO+VoH7+9d7fieUEPCoX5nXyJNJw5PRtJc+ZhEdEveWmTBKRUr15rKNLZazzpAweatufx6kmwisY0n4iGzKUPQwG5I279hgvv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707760698; c=relaxed/simple;
	bh=k6CRNeJhXO3WpoAAc0HL/sJM02H4epFSu1fuGMbLDgU=;
	h=To:Subject:From:Message-Id:Date; b=jAd10gxYyY+lD6+ADkajU2yy4PZraB5KGUQZxWmUfmcp6g7rqh7csoglTO+XbYO3JUDT5THlnx/EKPbCbmdOsSZjwUk4HzfEKH+bp6yPEImAu6TTNpGZHb2WNjSp4ALzxvlhlth7LXsPGudLyDEeIn1hQ6o497cm/FeawbcHL6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrupsYAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrupsYAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812BDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707760696;
	bh=k6CRNeJhXO3WpoAAc0HL/sJM02H4epFSu1fuGMbLDgU=;
	h=To:Subject:From:Date:From;
	b=QrupsYAMID0OXuSSPfaeCcuXHvtZYO05K5xl9uSrma67OiccKzNOdtSywri7HTsRw
	 nhD3ZzF38nDCSHx5tT2XKDyIAFb6UgY09W1246S5lXYFxIQykxJXJjiznWC3nxYIlS
	 wz9bkbuv0p1WKpAS1svahOK4vN8U235kA9FwuK0TdC2HF1WGsZE+xQ7u1pYAtDx74j
	 H3LqOEm0DBLC8US7QtuRPROPLpaPzO0hjQe+jeGaCmIDumPotgY97T5Tt4itBYf/+Y
	 nC4r1POMYcpyYGbmy05se+1wNRA89NhOe6AEYifmBEW7MRiWyMk5WG/R1QjXUs1qun
	 pWolGLV+XH1Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62962C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170776069639.19019.4380266406348516765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bbeaf3bff08bf9f264bba0ff8eab66b1327aaa4d9220c29913ed033b236d8c
Date: Mon, 12 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707760696
