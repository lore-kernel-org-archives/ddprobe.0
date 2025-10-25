Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D1D259CA5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761427794; cv=none; b=nqrBMdCA2CWTjHzxObLlK0xs4Dlw0V34Rj0V2CmfIkR4IWvfiInUMLAZVvuP9WTkLtZhjWsLCEYXhrX6v69LAeOs6cn5qFch1L29DZdEJivIUZISy49YE1Ev8ec4gPg8m4LxG2rlJ91dtFRnm/RLnfMhxhZI4EO2I/hVkmbMZ5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761427794; c=relaxed/simple;
	bh=hrpXvM0UtaJPRjRONWrEHjrFlePQinsMWYcxxK18Klg=;
	h=To:Subject:From:Message-Id:Date; b=dvBCcvvuXaTplTSIJj4Xw7noDOViELbNlkMe4CwP2cTUeY8wspcmFTJbCgo8dHtuQQoPR5BIj443mFvBM2U7DujsRIom+nJ4J//OFjEotbl2xyTKuGKgcQ8Pqg+fGiqLhjChxGT50pBLm9BI6D0FynGZ0zdmO2QA6DEbHo+0vFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXg62HDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXg62HDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AC5C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761427793;
	bh=hrpXvM0UtaJPRjRONWrEHjrFlePQinsMWYcxxK18Klg=;
	h=To:Subject:From:Date:From;
	b=dXg62HDd+eNwQOERzVYMU2MS0FiJbauabSUydDVbfCNIT2+Bq5JbcpAhjmxnd3WAP
	 MPwt7UUzjQuVb+cwBTCYaFgRtHXDKrH5is9rfgnfzoK6SOd8Z0Zb9Xzcr3C4Fud0Wt
	 GBA2ZHCd9YxXH8upJ1yfPOCVe1tmOPaXAQ/b6zQK/5SeDbP783BDrUlxQD6U6dybdm
	 RxxxBpq1UCySQ5Na3MgKjta6yaSKjf/2JV81IRhTWkw9RTsSRnQoK3iQ5cX3KjLtKL
	 1M1+KInQ6A59b471cvonr6msR3dU26PlJzX7ZFXLbRw9A5Y6xuxPqqHD7Ot1kc32MN
	 RKq/Jy1zwFzWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F7CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142779357.27249.8369269648759589105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9ac9fb8f8f4879d5f95f7e61424f8a6f9dec74e9f59db6eb9ab3d314c932c3
Date: Sat, 25 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761427793
