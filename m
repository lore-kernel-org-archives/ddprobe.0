Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2590B29E10B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786267834; cv=none; b=C02zADkZX5qXrwP1BoyNaKQglanueQfwxRQUcvVr2bJf61Z3ChKqAurEhjTCGCVlm+29eM7VFgGaF1vgUFBbRTy/ekfH5bOYaDiN6qKD3fMq6VnguJ8IYXYqFqcYu4SXYIZZZX0pWCa/YFt2upmWmxdAmYZjgxRehGyl8nQhMwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786267834; c=relaxed/simple;
	bh=0nek+K99Aj3aWlnGZ90Pf15eQrpI/YEgFC9SusMtnTE=;
	h=To:Subject:From:Message-Id:Date; b=LffDiF5iWOyRDeXo7SZsHSCIpZeVR9UdG+QAUaoR33cqRj9iHzefm0BUVaBGOSJb9+Q1AMflITyTU4UQBBRt2yeZQSE6x7oMXRhVJGn7fztoWKix6UTk9PFEr5O5RrnPAcpqikgp9lFxnd+AwFeR3ECQl6iquKHtuuz4sbU0yik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqYYnNCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqYYnNCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D594EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786267833;
	bh=0nek+K99Aj3aWlnGZ90Pf15eQrpI/YEgFC9SusMtnTE=;
	h=To:Subject:From:Date:From;
	b=DqYYnNCUANqYLAc/mQPDsLY9VXRilaLcx1+9iEUDiZgwYjBPktydB5eYfyWjj01EZ
	 5Eh3oa4UiayfuzZ6DDmTeNhDtENEtCyfa4tCafyVGs7m4Zf+BxkHA/hZ+O6hHshFhR
	 3bN/+nfgKBFk3ix2YteLsgUwApCeW5yWDkolVMcbeF8yMkDu6gwuMNKJzCralFVghE
	 uVcxOGFvvlUuzkpA1ppddfIGRtx1E09VTd5EUnR+weKM2yhHsgNE5qp3j0PeJ/le3Z
	 zfksgBQH0SYMClTSXcj6TRqsM/zpP+aDuLQem0o6UlXQKz0yVu58ouC2QeVbtN6Tge
	 6ysTLjEhKz0cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF7DC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626783369.30425.6985592640745740209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cbba32afbcb9077a748bc45365c340a7c666d425f02b4190f16e800fd096b1
Date: Sun, 09 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786267833
