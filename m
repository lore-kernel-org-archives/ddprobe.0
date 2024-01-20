Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B90DF69
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705756697; cv=none; b=dHQGIAoqLNxuoLOXojmDGn5DuMlD9iI7rO8exz+C4DPvBp5QwL0U13kF5QqGaOnvj4a4Mp7EiSZeBbccLjInrPh5QW6I01KRu+Lnnq7W/B6EXLrTUVoOD4zK40jsOpFEZAItOVxSyQjcO21/bnVA/d5tCczABjZfmzYChTHbi7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705756697; c=relaxed/simple;
	bh=FQPEYwSXDCvSzU++5qGGX3o/Kv01FaTPBI0U4OuiNbg=;
	h=To:Subject:From:Message-Id:Date; b=DAuICTWged6EeYwubAnNgzW7Y3cm3+SCimSJ9/h4xcJhpLkUBwIqHAZD0nrBdO2Qf6RZ8TkWOyb4/46Wo6bqoJvlX5UubUIBspgQczbCxB7M36RmTAXIJBapOh74kd5i9PWj5uPhlXTVNSZPMoGcHB5Hhl8WqK51o6eI6BwYVv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMCaZURd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMCaZURd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6B8C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705756696;
	bh=FQPEYwSXDCvSzU++5qGGX3o/Kv01FaTPBI0U4OuiNbg=;
	h=To:Subject:From:Date:From;
	b=iMCaZURd5FcXC0BTaALi7kwF5N7TgtokHQNX2SVLio3JV1obODZiAYK9PZTT6/mKw
	 o6EE6TiUXVRSXlCaL/GM0mSTW7Tydt+rXOsf1eYZRsocws0Nd/oQ1Y7Ovv5rtZgcTf
	 vtRFeEE/3Cun1dbxYnjKc4hue3itqXEm3Xtnn3dg9lyuezix0M5h+bG14SORfn4k/O
	 TT+uVGsxQLm0iE8ihkMDBVOStuXhHsFlpHAc5oPzdZeb5IMzioqs4gzyPCdLCfrVev
	 MYUB9KSh7t9DtJV5wCIzG7Idp69mNvtzrD+gEVtwpRaqv3mYe43fNyHXeaICltlGYF
	 SfMsAKp5lcjGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA64C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170575669637.5099.16776351211169415576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a068455696b4846bb4ee5cf466418d536b3e160b52a4cfb667500e8f08f2dfdc
Date: Sat, 20 Jan 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705756696
