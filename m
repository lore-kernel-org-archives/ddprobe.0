Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD601A9FAB
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758285594; cv=none; b=rcCLHvNedT3E6xxDoWU4kQuThpEYDeOQOBwbfekrdLcdpWkJZHjGAGkzz7ZcCkQpRrp5kDItwD7Bo9lEQVouIsp6ndtzxITUO0fJOKpXYJoB/B9kU22Ya5MJ3q+Za2F9POUMeQMPaHkamCMpcw2Mocox5P3RHdO71zPtHdF70YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758285594; c=relaxed/simple;
	bh=l107XF8iP1E5N1Zk8SwzpBBVQAxbWYHL3JCR9NqAb4s=;
	h=To:Subject:From:Message-Id:Date; b=VcGxoVMd02UIEO7ehdbqIwlhSJo6MukuIo0luknVCdBLheZ2FCgQtbgZKXgdRLNqk3Xi6g3fCjQOGnEK4pwB6Oc+cJDeRwEfchxOUkzqU1+HykBCR6sSMDEZLr912+MzA0/vZVmlmnO2vSJqgIn+3NgkUeY9VivG6O1DTxSclmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE6XVV+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE6XVV+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8FCC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758285593;
	bh=l107XF8iP1E5N1Zk8SwzpBBVQAxbWYHL3JCR9NqAb4s=;
	h=To:Subject:From:Date:From;
	b=iE6XVV+TVF467lHv+bomstrjV4TFqia0wNPtTC1D3TV8vHk/OIdd/ZC0LLXqtrspc
	 YDbjKaWad++6F8EupcDAfMHu+yStnopDLVcCaqk854bJMmO8pXg6+LAUaIlp+Po//s
	 e3Hd8rAVB70EDWZH35hxJRYPPXM5E4GOUcKquoh+OucDpznfBHojnL3N69lA4PlUSI
	 GfO7qkhdMcLA50Tqesfr3YagmerTFJShC6I7+1UwmM6UNi8dBzJDkvpP6c+y48nDuT
	 nq2elfIr6yLt4+JQqCVMjhr8yBKKeZpa+s/cZCGZ8JGqBxAv/NCHz8GlXjPvZPTyjo
	 fw2h+/Al+zDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2106CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828559363.5383.15584208486630126281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4bb91e6a770d31ff00ce2f8dd5460f56d32e39a25283875400649d8962fec1
Date: Fri, 19 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758285593
