Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153BC283CBF
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762173594; cv=none; b=KgSq7jhKabYjtaxZ/eGoNLJ6rP0PqgGOYA7CH8W+yGNt8R3+xpt8gVLyMgb1IcMBBWLe3kceRcrLuZNwcNTRLBW3/7MpAGiVELHSTP+QcVn3ZWonjgdFDMZmILWTrCqG6Qu7lmm6DgeROeAnCCQanLJpGds8m9bcea8llQJaG/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762173594; c=relaxed/simple;
	bh=jN9YpTjaRtoPf95ZTYm5K3DOtN6KGQH3+vHedy3YuTQ=;
	h=To:Subject:From:Message-Id:Date; b=aXJ/eAOzGo8HqGMXhaaOL8rAS4v4Yv3p3qLBmlIKqqel32/8Z8X/pCQwrHvaUN/IRiQI0ma2rLCwpsBM4ahHXkM4ZIXguGiN3ImVoRqtPPLEBYZbyhL6gO4UdSysLD70WthgnIUTzzIjhQ++Ek34pWf9VWnG1cG5kP0jpzmFBW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9jcjiXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9jcjiXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B71C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762173593;
	bh=jN9YpTjaRtoPf95ZTYm5K3DOtN6KGQH3+vHedy3YuTQ=;
	h=To:Subject:From:Date:From;
	b=O9jcjiXan9yJGTsqaNsAppPCmu9L9/l0Ra9PzGdN4xO5DPOI+a+YwSPl1Wx4tS0ak
	 fCtUra/27MdcaHdAXDMx7AlblNeMGc3ViR6X+UhQdrxCb3BlHWmxR8ZnlRQN+YnNVT
	 thANjWzxtevmU2FOLticVrz5i61ZI9XcPoWsWRpps40XTeVbCUuzXfAc8iZd/M7f5k
	 QmpOo42gQ2RJ7UK+OolCrRhyHlyiLk1pAQHQGwb1/xla6A28UR/orkt/GtDU7kwoXq
	 6VfigSSvUMsoeg5rMwtitdYDaH/hS9AuXjd/V2y7wHt69jPPxj9EMNaeYnBtm52HdK
	 CXDHm3U30W+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93389CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217359359.8369.7257875796931716906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3744a2db6725b7e720735cff42ce7c4dd1f3ef4efe0293ac1ff708296f61cfd3
Date: Mon, 03 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762173593
