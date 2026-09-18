Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B0E3C1991
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789761634; cv=none; b=adt+tBTqgnXCy2JfyqKUcmO8j2BTutZW+OVOHEeg3yDn2tdXW5oGSJ0J8AItoHgTyvU+sNpwznr83NHtHOgCeIop0NEqKa01sbQcmByrPX8J+JS3riBv9v8SYVNtAywRA9Hroo9Be3/2ihpEjrabWWcTogFf933ed4fvXJbVroc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789761634; c=relaxed/simple;
	bh=3FbPg/KFyn7TDzgZTAOxYYmSap8m4PhEpYSvTsr1rE0=;
	h=To:Subject:From:Message-Id:Date; b=BJAr3OJi/Vl2yuhtWg062qxnXslNHTNefek9++s7mOalGG+LY20uaTDae1Hw67R41vU9aJJpFi+WXVgdPS4+8+5z3qDlcHuBASZ6zLOUXCTTfEAdWPOT6XVP4PQ+I/5cT6/GQzzOECHCIHHQ4/dpWFR+M6yBXl5nBG1dKJDw+54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq4KYIE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq4KYIE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EF0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789761633;
	bh=3FbPg/KFyn7TDzgZTAOxYYmSap8m4PhEpYSvTsr1rE0=;
	h=To:Subject:From:Date:From;
	b=hq4KYIE4OfF/AtVw9DGaJgL1JJzPMuWs5lt47gHYv+2lQ0SmixemqeQqikfcZ0PUN
	 6Lk5X4n3SBjbzWId/AC7fKKnw6S53gN1DTYkJFPo0FFdvaOdDwmW7UMyby4a+Lh2im
	 K6X2orSKcy1a26kjYWu083e7oceEmQqhAZM5RsdGuP3dOudPXpAGeAJQ6dOxzN+JzP
	 n8PpBjGDwJJRhou3L+6hS41PIzsp0b9rmdJFnC6QVD+ChpVxbAjWf9IoLLB44rOYBa
	 cHkXSyMeBqeD8kTCDL9MIWX6o5zISmSgKP0zSPGHL75+F0wj88jD6XPCel1YsO1+vE
	 be87rWPBzZ+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC6C982DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976163369.19968.9487449598566393913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8376779906f47afede3d8e6871f9490928ea346b18119235bd9de46611917e
Date: Fri, 18 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789761633
