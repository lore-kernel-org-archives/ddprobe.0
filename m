Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29132381AF8
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776007654; cv=none; b=Ic3fortWdm4uHBmL7Ub3EA1juLxvlDRtJTEG7ahrbcwzQWog3V7fj6OgqPEnWOAT7h/X92bKWy1ejXzPDZfdY/mfBK05Nmcnx2CULRweUDZ1RuyTkBj8K5kcJVGT5F/TPCrYKalCBLhVXGiwBrFvSVl+cUKC0t8It2trhpB5jIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776007654; c=relaxed/simple;
	bh=RXr9/epxV5elX60bLWcdHkP3GvCn6E6n2CRIJq87gK8=;
	h=To:Subject:From:Message-Id:Date; b=Hs6v184uMFIgydhSQERVH+7pagMfX0eXYkR6yUCE85YjcwCQZ4zYL1EM7ICnndeGOsyDVqbE3Vd2fYVSt0tOyHE89TU/wJNo75T3gc7KH6cb6wS5SvsyjnDvlMMOTCy7IR09xlYy7ibVHeIBD/xkvJppJ2Uf38sgk6jw512i6w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rvua9vMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rvua9vMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC29AC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776007653;
	bh=RXr9/epxV5elX60bLWcdHkP3GvCn6E6n2CRIJq87gK8=;
	h=To:Subject:From:Date:From;
	b=Rvua9vMzza4/ruaPy9plefcpRMpUKu4nwxR+YS1PlMxpTTDtKQCYQctwxnv6tzMX2
	 vE9ztPfIq6NpYXGQdS0YlL6pKtPMtKk/FYKzGFipRVB3/dnOdsWYv4lfxhHNCAVOqW
	 NkW6R4DAxiHVYCatorluN3w0suk+nP35nUt7AyFtpAQJEsyzl4Aeh7lOmlwP/G6Lua
	 bjHFvVeLSLDgFOClAWZRCqrICWyZ96i5O1ZjkN985GAo9MzzVuMHroDzqW1ipGOS16
	 fiWzI9PZuiKjSrV+nAUwYWMtR/5/B8PiE6EjBxKGQYDUd7eACNwNX0XIluqfCIymfq
	 Lh7Yv/HtlCNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B035AE937E8
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600765368.30976.18359110616412324821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2507dad1256fec5c3c4c2a9593a9e30ae3d8d89e2ebfc22bff31086e7297d770
Date: Sun, 12 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776007653
