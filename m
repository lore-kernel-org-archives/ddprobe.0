Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F50B2627E7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749535794; cv=none; b=YwHC91sureoZTbS4wa6UArclc6F4dBalKjPskH/GkKDcdxPI0sLOSkmQ6xWS/i9nHAfbcgtzk5BlE7c9KLiqDBwE6QCdXMjMGAmLhd8zTYvu3xdBxPtL1AU4nPDINmRts8b9xeTYL/+2a77V7Wc1jG+71lAOsnXwQSXr6anNHq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749535794; c=relaxed/simple;
	bh=c21Pa42ks/LGA+Rvm1LTxoKBQBI/SLk4+Xha03tIZ6A=;
	h=To:Subject:From:Message-Id:Date; b=Qe+hVKmG8lHJdV4hjEKsr807xfd0kOhhStrDhbjFUjbH42an/hRHAht0M05EPAxGr6GCTMp7iGtRxFnQ4+DV/mZznRASamrBfl438gUKphPmU+noU7bGNk57hR0dE5IosXS+hDgTKSpir1tX5FIGEbQ/QfulcDdqKblSn4DAcPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr2ZEW2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr2ZEW2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A628CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749535793;
	bh=c21Pa42ks/LGA+Rvm1LTxoKBQBI/SLk4+Xha03tIZ6A=;
	h=To:Subject:From:Date:From;
	b=Wr2ZEW2qfNMHDL9OSGOy+ZZtZt5tE8pgW3v6bvUkhGC3pJlhd9bM4KFMYCiEhzRqL
	 nqaf7S5vXaE1vAZGGGZvo544sWzRTai8oFG8OGNmLN7AIn3ymxspv/zddlwIN1JbBU
	 Z1RfWjwmsxmJvAn+WJYoAuuFI7fcmgTwVC7KZlT1PicOWUQfGybYFmfrig4Ulm8DyL
	 u8T358EhWLv9CChQhuAU2AQd9QNvGnV36JiX2b+pUdaMtp9MDs5RAquNHwWpIm9GgA
	 vD1gDiCw5uOfWgVvUo4+rl1B7h8MZwBWrJl5HY1fVlfFWDZybadnepUwIfaVi3mR8I
	 c8URs7nkAmF5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935AFC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953579358.7487.11885357811507109428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9410182c90a64da322fd6285c3f8dbf3ba7e2bb43e2ef4f1a199e388328a59
Date: Tue, 10 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749535793
