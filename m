Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF392FE0F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783115314; cv=none; b=iMRNd5IBob2vQ6OIkICTjGEfeNLSnCK9Sho/j2CMr0lhqxbRxjBI8sPtbNt86TA/qULMKWNsa/LgPNaYHD6VsyliT7wJMB2PiuQPICKATMkbai+kGnP8BGH7LLTb8Rpcn6snCvwXq88lgVbTNYSnn/yyWXlP+VPcf2KycdurwO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783115314; c=relaxed/simple;
	bh=ZW33pY1SL/tWe5AHmeV+vtOFDkUW0Jb35CheHcf5rZE=;
	h=To:Subject:From:Message-Id:Date; b=SBsLCi/c39Zy29YpNykkQaYWDyfvrFILS7DSeo2FJzbdBQkV/2IlLE9mMHCHU0ISRcvHFvtbkPVZezEQL6TARNMIhBdw8sYDPYJxm5a34RLK33SuglEcFBl/vfo5sC78Pz1SDZDBgf7WLmo3+Ujmxdw7Klho43zAUTVlTvxzPFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPJINFvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPJINFvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5428C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783115313;
	bh=ZW33pY1SL/tWe5AHmeV+vtOFDkUW0Jb35CheHcf5rZE=;
	h=To:Subject:From:Date:From;
	b=cPJINFvjFchoWu7Tf50mq3iIJPH8HVPRJrqje5HIKLuJ8YBnEjh1AqAyeTh5cHwJL
	 oWDPXPnCSWDKPE1byFz+nqOwUeBiLWx1Spmw/NJSaTt+kgkxRnMEjy2OF6T2YRhchO
	 wQ89XXH6m2xrV567DquxmAmM0/O7JCQCSXR8BOMUNyrdnJATni9jje3itP1l7TdXGn
	 WRrMUgrl6YsriYuYcxwSH3J8Zb0GQDXD5JmM/jqVv0rvAwmKJqhCmNyjV4t7fcCZDD
	 zYBs0/gB5BoUlEvXI9QUOY8VBDQRY1TALFCGbPB+FjXlSMbe1GGhXr+lR1BYFZhdlC
	 v7/0JfOgcZhvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE93DC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311531368.12207.9134908486480681974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b59b0a8e5ccc5267f8becf1d7a50649a4a5f545761ace35e9886baa4932e58
Date: Fri, 03 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783115313
