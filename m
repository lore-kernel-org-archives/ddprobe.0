Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376AD15E5BB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762055394; cv=none; b=BhkXcloWUHSUP/flth1px0STphOwlHCME21UNfvxEMpZ0sqkq7YZo6lRUjo/5sGQAq8GHE7dg6rAOPwoM+I0P0fk7fjypWbTHnsStPJ9A9VRZbnshdTenuy/RopmasWS6feobh3svpfQ1/TN4ek0/p12S1jNY6YmfGuQxrxxXHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762055394; c=relaxed/simple;
	bh=NaC1CSffq2Xb/hoq7DMypkDEK6ufp4B8/BHDODlPhXU=;
	h=To:Subject:From:Message-Id:Date; b=aIhphTJKuZiJ2Tf+b/eKbjHgRVWDYHLgl5utRZIwhyXdug+Yb4jTCfgklddCRR4KDBJsAWA+FalxW2IYcZ+AXiYUjcSUhaRhE+f4Yv8HoCaXlYf+IkP3qmgMyss2DSaYwQcNT8Nx7kniXaWRMjKpJOKLn/mlJJImSgAebHiFNNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvul4pLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvul4pLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC69CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762055393;
	bh=NaC1CSffq2Xb/hoq7DMypkDEK6ufp4B8/BHDODlPhXU=;
	h=To:Subject:From:Date:From;
	b=hvul4pLwkEHR5kywtvVCgEB7ccFPea32pf7JcX7CsaetLW3BYKSTvY1zZQ8E64Ffz
	 0X6lu3MUAc9AIdJVSLXk8WuEWXwB2RWoz/RUA1gSl6LdGbtuGXRAwvJUc7wsBfg8pE
	 Rdpscd8y2Qr444JRcEJtsdaPEQBB0Z7pwE/m4NxCcqA95TY70cUx/aH96gf6lPjNnI
	 QmTjBPbUdG0/98OOPWYgpvb3VSwLl9yNwecgdmh+5uwuOzSNBOr7Mnq32OEHB/909N
	 05vnFehEE68/0iJUe9OLr8Sf41qLMrkFCZ80prKSidkWLFx28HpUGe4hW8j4SYVlTE
	 rTfaqV9buohJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9597ACCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205539358.26905.16494285663340722528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402ac2bce7712c358760d8fb24d1a92e1cf8dad45010917a7bb187bf282ce261
Date: Sun, 02 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762055393
