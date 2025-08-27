Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC18A23026B
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756285793; cv=none; b=soaf1Kjyy9m4NEetK6qwfEcQCsrC/3gKzk/m74Sq6bnd7kxXsWZMcAjKHipCeOxTGFCIJoxcslyBF8arMUphFEBQGoYF1hjBsswalxzmnODKqzsSaa/zeA1/LlCIBVY+y2kWX7rroPxmsTQHXGIXMbwSYe9jae4KBuoHzackQas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756285793; c=relaxed/simple;
	bh=ICu96o49xb+Ld7XyBfTUZq9fO8t7xdtfHwFJ9+8GG2Y=;
	h=To:Subject:From:Message-Id:Date; b=nlA6rN5o50+M8tpuJ5r+W+LbWlWLHraUsPPtFFEwOZjlorecSyK2IRRtM9otMM58LXGFNwTfB2l42B3qGcim0BxWOVqlf0VPmTvEOi/TWI82V83PEv9DLcGhdLFNr1/diR42ivK6YZWuC34Jj4DwZrt3bwdWT9OP0iEjj1OmG34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnnA0YN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnnA0YN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A357AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756285793;
	bh=ICu96o49xb+Ld7XyBfTUZq9fO8t7xdtfHwFJ9+8GG2Y=;
	h=To:Subject:From:Date:From;
	b=UnnA0YN5uul8+5UKkuJgiyaJvQ96oOKmL2T0wtTmYTkkmenx6sXi6cX/57vnp5VI+
	 yxQ15yvZysDtICPolmAiVa2N1SNiVJ6/Ayeh86NAh4ZGKDg58f+lcxcPdTNNrOv1WW
	 fMhOUMuUxRYy9Hq9Yrw419i6qF5gcEIys0P7W3FnWYmOi8fOuZnFzZWYiCcnT129EM
	 Ha/f5DWVv6CczEOyUNhwzoFKDo3pWMyiMjSxgDml5NcksseLYcWqAkuqko75v/rhiN
	 DHVawl7YgCSr68aMxVDY1UD8Lfdd9daTJw4LjaLRLyGRjIni3XpqbsSJAfjyzJWpzP
	 vL2kGSFY35QDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D4CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628579358.15770.11404229263099245887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63648a0ddd8ed6a388140982e90dd1b2c62fb5713959120f60bf26c293a89fa
Date: Wed, 27 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756285793
