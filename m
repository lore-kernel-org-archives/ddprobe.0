Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3122A218851
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754512194; cv=none; b=qVn2XF+C7L/l8ukiGZXe4vM4pk+fDcrqEYKl0rlTc2Ifr2w9XbL/wUQD+xfgfYippG5W3sN78EuTABd302RFa6V1Aeh4Tb/3IaGQMW1W/q4Q2q9vQv7NQsRHGQ3VtFFceBi9gvnhctf11OWJpSwRQl9LGPejaq9+tgYHhkc1+Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754512194; c=relaxed/simple;
	bh=TIL59nznZDudI5jrkLxWnOCCx/ay7+tAilcTvn0mtbs=;
	h=To:Subject:From:Message-Id:Date; b=fhOEwyYimHOUnouSRAnmkiIixofjhoNrro5RxRLdvwH9hSH1qZsXkxnMA7zzncfjYKd9+QwyalmWGdsEgml2I3ybRQHc8g871yWfyc2rTiINEcs1ZzO/n9mAqVjV9iQSJHcmdUDRj9836FR/1TJcXe3g4eX20iyrQUPpupW/K4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WG2nlndq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WG2nlndq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D54EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754512193;
	bh=TIL59nznZDudI5jrkLxWnOCCx/ay7+tAilcTvn0mtbs=;
	h=To:Subject:From:Date:From;
	b=WG2nlndqn5Bz+3BGx+xNRW+iKjTOwUvAeC9xrW3fYVo5Ax/oXgfpXSB2gqeYMVbPb
	 LFao3754O7wyP5YoigUtERGd3l3rpkyom0RFb8WpkKTHj/Rn31v1Ed5pmPid943MyD
	 SpiRcyIRvT767aTcEqx+J8t+g64v9/dr6LUxuRfHJ0W/CbrbYW3AZef3+DQAjVANcW
	 OqUERF1MeD7rRG5NW0i3nTxrSXV16wjRplst4hi38i971Pydojjg7zndwXZTnIarmB
	 PUJTTZrUFS/4m5T659w7wBcEuipZ2nKMScA3LnjqePLapGUC17NdrDydYEfoSLzfx2
	 qldmiSpeV19+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7BFC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451219357.6262.440579855188320536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dcd46bc0147285643497bfe9b6bded9c9a4bb31650e407cc6957b31068b1f7
Date: Wed, 06 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754512193
