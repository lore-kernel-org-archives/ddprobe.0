Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094792DCC04
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772610294; cv=none; b=t+mEYmXrEQ5pXH4xKYbj9vWMRDKrr8u3As8YqTXbVvFrOPCn0Dfw7B429VKnQ6sDSiR4bSIUdy6w+pqTEjBmHETmWpzdK23/qKRhcjYGbVUELvGihK/nmn+PfCNj9tBCavgvh7GYzKai1p1b/BNNbUAce/APq2Uq5TlpHK6GrEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772610294; c=relaxed/simple;
	bh=vNUuhirs8Kuzdt4XRcD6PRXvWN9ZduXnDn5s4vzoZiA=;
	h=To:Subject:From:Message-Id:Date; b=ONdpwIE33yk6C+GP/NuVu64BPVUU3SBE4Oz9isp/3llNoNElyUtz/Ze9koFxvxBCo/NDo2v8R+/YV3vItE8LtWX8V+J05iu8Ssr8blgqoKcG1f3HnfQ6VGuGblI6qTuuGag7YsnGbcIaZsP6wDBKSzwlSH6JE480zsn4C8o6YGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVaLOeTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVaLOeTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD333C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772610293;
	bh=vNUuhirs8Kuzdt4XRcD6PRXvWN9ZduXnDn5s4vzoZiA=;
	h=To:Subject:From:Date:From;
	b=oVaLOeTyPggwbeMu34IIKXWNLuiHnxwpN4vRjCd2wKXuCzX9bfmD+fu/SrK3KqvcG
	 DAcdLpyKd9rZXDlHX77CodeD9DzT+2UT416I1VbvZwBbjDec5Wp8uLrpK1qbjzNNz/
	 wadxqD+AqjX8Ndr7qsXWeB0hjAnB+woCc5MblskLfUmfAF3YSyURSMYiPwRTvTgXsN
	 BBafMSoT0q3rv2ihroM56Bn2/kIHL6fdKwE5Rj6s2FbltE21HKKoF3WI4azIgmibuo
	 Q0b9lDu9gIuWsUsvum0At9tBkZ1Vl+BeKYq9bde851yOCq+4pc/hNw50fCCwz83Uwd
	 w7o+2XI7UwX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B199EDEC1E
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261029361.10097.610383820083455048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64702200e7599a2472d0d0f563afaa16deed1759c7854b5daa8cabdc44c41928
Date: Wed, 04 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772610293
