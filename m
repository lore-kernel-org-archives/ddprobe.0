Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DFD28F937
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750147794; cv=none; b=n3ShC021vPQv2JZKs7mg0kg1uZhO/N1bf1uhM+ejvjq8GXERuSz916f+SlG/FLoM2fQUnRmKNQkJ04GS92NFVrX6QbxWgc3Pl2/RmR9hMsc+AUgxl4TGjkCVjgmKuTmCQaSHEiBWyDKfBBxj9xNXBo1zlRzboArZqZhPpcf4eFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750147794; c=relaxed/simple;
	bh=cG21LW4y0dGqz/CsmE8v1Qfzn5F5XC1DYnVDpXGGFR8=;
	h=To:Subject:From:Message-Id:Date; b=jsFGY1VTJv1HFPcq+FNtN45k/LYTmrT8hJogLBGruOTeUyCuwdGFlUPymjoKPY0EcK1BiH22E/r4SX5s0O8UzuLz1DrzdEK22Vbe8dOfkaB/kfVZaIRskClg0tOWRUj1h4M7uhaIZrPUrDsIrSwRZ2fKCyPw3uESJ77Vkif4gzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJIyEUEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJIyEUEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6DCC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750147793;
	bh=cG21LW4y0dGqz/CsmE8v1Qfzn5F5XC1DYnVDpXGGFR8=;
	h=To:Subject:From:Date:From;
	b=XJIyEUEpHJQ6CtSkNbzV9XAOBoxcSsM2iC4cEf7J1CE1KZ3cdpUAfnweFf3xIOxVG
	 n9ngZXdBGmDFuIFnavpbL0jSn+C7Pzx9YZBra6xCW3mp/txItH/MIxnGvQoU5Wjvd9
	 OL2vdjuyzH9wELa8FSi5N75H8e5VRgRwxVQboE0AyZaA2J5Y0yH7p2bd8de3K0Mi2u
	 xCrhkH8QJZELngWXLSMluAwMhGmpFYCPBgvHAfGctPDDTNO/fHGPFd6aUw3nrzbU9D
	 CtK8oOVCxOYM5ybvUCTt+8ygLKDNFMWHKRdS4ub2UH3D+qpB7ZO+MX13PHlAyQ1Eb6
	 iSXrbwR2DFQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FEDC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014779358.30560.9779922922154723888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329165751af7015442613ec3ab4d0f3ed64f0fe90a45d7f3ba75788263e6136c
Date: Tue, 17 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750147793
