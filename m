Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254CE3815DF
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785776434; cv=none; b=ih/oYVwsdbbLzj3s5ee+IeT3e74ka9ALVQK/Hd688dy7BYsIjV+JxfDNTAje1a2eSMM2/ZgXRZq4+Tr5/edbUGekrTBJzclmjQ2FXJ7PWvJtmMm+sXl2/72fRNruBjH7nSWV2haHfJOeQDd7/IFzPUeQGudd6bo1H4G4PaqtPw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785776434; c=relaxed/simple;
	bh=HzNWN0vfDLQc+7rbXrok9zjNz+pXXkVGd2n9yyOgqrk=;
	h=To:Subject:From:Message-Id:Date; b=hUxSBpxc03NOJ97Jbf1b/neJR9WfKU6tZvN3WxStxmMQZRFWhIhdr1vtNoEi0Kq0nvhXJjfjwbeZv1QogoyFRvUE6e/a0UyOSKZseq3mHIuR3Atvo1q7Qh2tE8Xm4C7/RLMMeFCw06LAzWKhumcWu37wPL4r9OHGAo/Gl+qVFVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snULFqt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snULFqt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8ABC2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785776433;
	bh=HzNWN0vfDLQc+7rbXrok9zjNz+pXXkVGd2n9yyOgqrk=;
	h=To:Subject:From:Date:From;
	b=snULFqt5WT+XG/wtNIejeBEz+RFdX2ivmBMaC5QREjb5jABCeVZ8XkVhwJF3ClB6p
	 gNqgn//+F5e86w50QftPrjU5jJQkvdMok5s7LTpxFegXAaTyCfMXaFHgEtbTWNGU2k
	 8oH8nFpxyh2ThAISMjootF3OfBkckpB5g2MUawstxQ+LOIjz40rHboBuh0UHAnUSPi
	 nCSnpu7YnG7ng9lObWH2EBufNp6GcEr/XqAd5O2Pb8oj3hGm0IDr+9PSGI+eh/Lrz2
	 rP5HlcVqaQ4FAbgJiKaajIXReeo3+OXANAoOKYnp+qFbePFXP6ftdjrSLqByEdNOyj
	 DZf2EfOP0TXCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0076C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577643369.20680.6594288879002820368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00755f12d6fa1a6af3fb585ae79beb869bc03fca46b138bdfe01a6bc6e1dc43f
Date: Mon, 03 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785776433
