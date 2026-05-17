Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BDC4502F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779003034; cv=none; b=a1V0nC+YJ+ZK6X2SOGXiKoDr1bUHKZuNCU3o4iIgLdWZRw1lBivSpBjwGo2WUpMt8uq9YzTGYudsk4LUumvzu6DSIP8R5CAopkLcGzjST2LIJ6Skh6ni1tRouALzvGglLMh8/SwNbSI1XHS76uMpnwB+ZyhGSr0XvWmB71xcH8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779003034; c=relaxed/simple;
	bh=fpi79i4E4/b7oBY01amMcdrTjpnWQ09fVRM6CfRGPCo=;
	h=To:Subject:From:Message-Id:Date; b=OEDSGERKtlOchHMxQ/y332gEb57JQvZYMgM6jiMjG63gYJu+ZoYMnuaGODQXGDeJViV+6Y/GRwH1ceVV2ITSpLohNWG1fbdfew49pJmdSQXDn8lcerg69X5w4Xvdxt+D8aujqMfetuoHMVcTcBLCdZ4RNnzgWJIlLIY8bQC84YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnOsvWEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnOsvWEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA62C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779003033;
	bh=fpi79i4E4/b7oBY01amMcdrTjpnWQ09fVRM6CfRGPCo=;
	h=To:Subject:From:Date:From;
	b=TnOsvWEKu8Z/W5VY0AJ9EH7CpbATK5hSDrN+5vBThswb5p6kvDT3sA/aMD52kcG01
	 nsDymK6Qmx+UFGtXn9Wall1wXB+NJMaEzYYxVuBp7U3RsE7SYRVBv7mGOkNn5sxKFe
	 UlM+wNbIi3xsBserloZIAx444MzrRNyqacj0LqC/VPFeRGF0e9LY0LvH/gKiRVIsW+
	 d5VGh5okBblKsRcbv9RhUsf9KQNl3GdhAXa7z4ER1idZ1h5MEnca/jlLGKJ1G+sWTy
	 S+3XtVblDY8XJMQTmwDLfTpIf4XQKScEBhuYrhjEeOr5pfbmCzBkA41z6l83vj0BEA
	 vijq9NjQ1yMTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB18CD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900303369.13994.17498361184697659915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e3a6947d278ccb5e764b8f63198efdc899d2cb04df7ef25662237e987b21dc
Date: Sun, 17 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779003033
