Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6B6279DBA
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753203594; cv=none; b=u7Ki495l+vcYkzSjuSAeBSbTh1dj/EYtRPzFnJn+fR8+ddQTbimgM48sbA7yqqidOByqbOUBoD5oZ3jZmA8LoPYuclxw88PYB/QkkvXw+ac1Q7+HC2eJ8SBhdrZedq5Bic24gV5DzuuG+2gbIXwUyZ+Wm7r4zIm9GX5KHMWebw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753203594; c=relaxed/simple;
	bh=gmYljmwDWao3R1Q4rPHMmgfeb9RTsk8dPPfufVEbmiI=;
	h=To:Subject:From:Message-Id:Date; b=G09t4TMGsUltyOnzvFw/yXYZp+zsyhGuDggRNSEFMmN67MRdBpeBdmFkT3k7gSC8nJo7aU2YkoZDF2NENpa29X3vZ+OupEMbx7rNFhUEM2jf3erDs2b77LONUwm+4zlWNUBVSwHL/IWtIa2YFRWN+9ewY2XVkWS3grYAZQ25sM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlMWxDp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlMWxDp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A142EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753203593;
	bh=gmYljmwDWao3R1Q4rPHMmgfeb9RTsk8dPPfufVEbmiI=;
	h=To:Subject:From:Date:From;
	b=OlMWxDp7OcpuBprSoh0xoOBd3o3jO2AnzEp/x5C1NrqjSG5fu4Tcjun8qBPQtVa7t
	 QKKzU6YTzV1ib/VbTolmLjSXZ7SGJeG2hwvaO+l+ZP9V8pfwHcqdESDE1nTDIuhTSw
	 RXSCwjZARJ4rwaRGVuJgb/7YFbGyM0FGeF7GiqSe6gMD2ikEINsr5vAWO0O1LZxyub
	 te7Q+fJMwe+ppE+ZWJosg14NO+u0gHIlwW4cRpjVfay560h14+QcGKom++Q4LBeFjm
	 SYhBNlgO3PKK1Oac9wf0pqlQzIm7B4RN4qRv3neRacwVmpEFg4cUd3saG82xwl6Hzu
	 exdFELi0++ehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059CC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320359358.4143.6694579856205927610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f131729d0668258d6933294985c993ec75b415a0464869d97136ede63c17e11
Date: Tue, 22 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753203593
