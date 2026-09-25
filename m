Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0C34F30F7
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790368235; cv=none; b=NPW562Xa+fZhA4aDRV6hgOQW+Yv1N/yG3s9qwLEJCnCmJ5IerRs74b7FjX1ix4zYmkHKTBLBkAnVaNhCZVLA4MOHvCBTa66L0vPyCSxMy946+y83+9exG3XU57i+NAS+ETyr+AN0JV9cBq/4aEJI3QF+C8rclS1LYKVXDTr0EVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790368235; c=relaxed/simple;
	bh=f6yxjntAZ8+FZNhRnuI47pV4OhEwXNWWw9Sg0O87WT0=;
	h=To:Subject:From:Message-Id:Date; b=nEe7MhcabaELuXHlbKMDANoiY/smzUFftC/n6MSEMGAgiBUDxuDaOAzXUPOmA+Lw0yaFG0xZIsHR2/YaClyMXUqtCmuDk59w2Z1N2Zf3ssXiNmLqWXD+Ju9kKfHnm/F0Ks1azHhSAtFVW9gE+3tVIhDL8Wm25nShBchClWNyHtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxtfQ3sV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxtfQ3sV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3B4C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790368233;
	bh=f6yxjntAZ8+FZNhRnuI47pV4OhEwXNWWw9Sg0O87WT0=;
	h=To:Subject:From:Date:From;
	b=BxtfQ3sVGraBN8taY3WMMSBn2qlq/F7hw7PaIiyjQR5islBg9RHGwm93cZ4nrMsL7
	 0Xki7pb3ne1Mk3ubalUPUFz6GbEND2uEXZLBdzWmOnekrF5efXsdCCpS5OVMyPxS5v
	 cbpHj3xuBxLmXi0f1Rak4jA1ZV4aqKfWU+9ASmG+68iP7tpeZtiWuP7TPQjlwtoTkj
	 Y1gYWp52s84cMeKTeBV8ghhGamiDg2vdCyVdRBzDEu3WSIWqHwwbVcg/QgAdUbJ7iG
	 JkcQhswqfVnNXG/EF1y6+uW/tL2g4JW94QP15wPDjJRx3aLrjCnq61AdD/3ZDg+cCC
	 nNJKTzprlUOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC860C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036823369.6654.16365965668786174798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34f3d889e0054394ee6a2f38d158c7af9059908046be87b18e7e8df107d755f
Date: Fri, 25 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790368233
