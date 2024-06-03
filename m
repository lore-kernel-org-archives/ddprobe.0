Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769EB1CD38
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717439723; cv=none; b=tsRbxSiGCJDe78swszyz7me6n7mziYQfaWZObj+GYEEZ7xyws37oJ5VuYt43YFvm5soRMQjCHSJ7UN9PWBlmPnADYpsC7j6D/HKh7CphJ6hw+1n6Fv5sQmscFHjdV6hpwV0dZ/wsPXFImCl0GinxDJwwQfZ1HWuw7iht0IWvo5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717439723; c=relaxed/simple;
	bh=P2MZWS4QOy3WmPMOB4M4UXCA1ESjV2nsfH8GEAPTjR4=;
	h=To:Subject:From:Message-Id:Date; b=MmUKfEK0bfJ51+071SttPYyHMX58GGxKq7yLVw8vQ30eFrtCsravXLjm7/xdsv3QIx6UP5nbEZRx/9SHUaIWpd9vSIapRwhM0yxP0r7nWHYkc4AZMASPHeLAU9ftJ28/LMlAFFlaorVLhNVaXdr/lX/dCMloWPN48beHcWXI1IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjJ8YiCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjJ8YiCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB94C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717439722;
	bh=P2MZWS4QOy3WmPMOB4M4UXCA1ESjV2nsfH8GEAPTjR4=;
	h=To:Subject:From:Date:From;
	b=KjJ8YiCMC+L5EEG4bsI3/MwJNyXFgovD2d76/98+0Vg5OtAuvU4lsZdzwvcYEQVs9
	 a9FZSmNe8oXKOLzVyhSMSiJjDHtHXelOPxfo5xOEKMAhdeKxOabXWVnnw+VV7ESPTp
	 wt/QeUDDbgly2x9VKHj1NSwa0cN0003UG4Jcx97/RoRe/E0NFssYvaIzLDz0kL7omo
	 vYYrioMm+tDe0e2SefFfv8D22dMppNzKwrIhbyNI9KT8VXN/kUrIU06ixIntdtzpxY
	 jOFbyo82Idw/VjOdUwKbiQW3jtBvu3IiriurkAuFA9VUme7Hoi6m2PvxuenxBoVHEG
	 Q+R+vVWOrLWfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA33C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743972275.7928.10449129903288593657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce87b1b4da2f4ec5e1db959b284e3a6a355124c013079afdf2a9cd40d4be024b
Date: Mon, 03 Jun 2024 18:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717439722
