Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360DC2BB13
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746556194; cv=none; b=uIRAPLVPTqwZWTkdD/gtL6xIhMI/RC+fHG/NOLFLGntprxRvgLgtFglexSokRR7bUUlt7uCflZplqMjTV2tgUsRJmTyC7f1rixcoEq/xkCi09hG9otXa7keR9UdzqsA8DTsHVrwoMWQKm08h7xktLawnrhhjhiCSgkCRgiMqEdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746556194; c=relaxed/simple;
	bh=EpFCM3fzZvN2Mj/Z1f4r1sCmT6TivnJqnrSyAXwVd90=;
	h=To:Subject:From:Message-Id:Date; b=EgqyKyKrZB+uFtgI4+nRJkXKYYfghqT/Wg4a55WuVLfJE2dq+ihhlY//sHY5/4nUdHshzDZ4nWOCCUE3i1ylD2UWcjDzxpA9c5czSRnrlFvTxGFluy3jgZxDVRd2P+dk/Mh1lB3RnFd6TmjdcplrfdyLLngf1tA96VwxhzdD3g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEUlffaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEUlffaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0589C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746556193;
	bh=EpFCM3fzZvN2Mj/Z1f4r1sCmT6TivnJqnrSyAXwVd90=;
	h=To:Subject:From:Date:From;
	b=FEUlffaAp8Fnq6Ss4hrDSWCJOUFrI4VVGCCMlpSROKgIJQdfk5Kek/TsCHlxEro4a
	 ezYQ1BEJXEZFk/N6yX6VHJuuwwQ093OzLdaryfbvu6KyZrhNIK9KAdZ6A/A79V11ey
	 lV6Zd7kaztvg99gxubsi6TJrY9M4Z151LxYyRJGkSxFSkeyZkGwQ4LTR4F+JJcU1Ju
	 tBkv5siCeW70PLMbA42Sa2p5Cy90Ucu2QcAuWGtzmdqQaE0uw7pavru7BMy2csWZoN
	 +5fNKMM++8+pDRNPYX7oGqcw2sho4JewaP4W04UtJjKkkrHbmFV6rw6YkvkNcB5ZaC
	 JO+L7jtxgCUuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91571C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655619357.10523.14322352689236004705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5327faa4ae21bfbeb8cedd8d1eb7023989b8a3a7d5188bb854e57aeee881417
Date: Tue, 06 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746556193
