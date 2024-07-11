Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E6112E1CA
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720728443; cv=none; b=H+QhM0P7vwLpJudS8EfI4f4nSJySbK3VVlnFECZQO87DhLF4RkOiuP+7WtnAVVCU5z8zPTf0Fs4wjIaBZBDPB3HA45/1AAkNdOyOm0hwwAhNs+VaBCBVbHGk4ecKgA+gv/+YDHWmtoLlrX+AoI7WjS68GSI1wZIWo/5vo9IDAOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720728443; c=relaxed/simple;
	bh=CmD+hJwGLQUrV6/4Yjs8SmHo8Hftff2R6SPTZ/92jeY=;
	h=To:Subject:From:Message-Id:Date; b=Y9miEiq6MJsAAJUC76DPIJUQPf8Xf/rrX09EQvuCsYmNuWTcm80arsZta0IyurLi9xhZi7d92+oy480YRTSAEy1pSCTWd0aQi+PoIKyGTYKa7JCIURNbQ/3DiCQhoaoDOwxoLvfE/CgzFGWIjvDvAODhv+N6vQYum9RoAiYurjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz/2A1Rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz/2A1Rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA8AC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720728442;
	bh=CmD+hJwGLQUrV6/4Yjs8SmHo8Hftff2R6SPTZ/92jeY=;
	h=To:Subject:From:Date:From;
	b=gz/2A1RxNe4HlUCPExt8XZ6vfTnn7DfFWopzdZQdnYLdiP6HjVNvh7o/AbUYUOz0m
	 8Pozjs3ERwphO29DWhZLedbrGHvzvhy/RNB3/fJIUwYOyi8LLyxggBEMIEYGG0tJft
	 Xjz1wsz6TO3V4zJXy2nn5T/bvBc5HP/KJmPCP0LEz2KWWTA9EDvrXgy3lCFEnbSB4E
	 u9HbdBVzUs7tAmkSpMH0RxJ2bfK1Jvy6SThxmuIoqL9ffO2s+Jfu4WxB/t4Rzmh1uR
	 KB4OXxVFCL8+npuFodz9Fu7BBRsaHUfwtPGM2dEk/9QYlceIMYd5OUf7P22SurSJ+v
	 TC4x5MyNHrjMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADDBC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072844282.18004.3962152377820190302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0094805572f7d22f6939d2a3c819d28c568214e0f61fa9d4af72bbeec222ceb9
Date: Thu, 11 Jul 2024 20:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720728442
