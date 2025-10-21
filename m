Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2393033030C
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761047994; cv=none; b=TT/7l8PdQrdvC9GgTW1w99q6o5iIp8LeH/2nNvefmKHh6HNCMwoPspH1gZatomC8113ILrkYUQ5YuourCgIRde0MSH8IEVigEYQDOknOnNp9UAYzP8T0ZAazOW0Sp53bZZ3F+KHtmeOtM8MXHZNCbZ0ECln68Whwb6cf6SdlJeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761047994; c=relaxed/simple;
	bh=sEcFsRLrBi/5SaYx2jp7LsNU9DQDvGEFB7cu4aK50aE=;
	h=To:Subject:From:Message-Id:Date; b=Se0r2BYSmnQgteNLhBjQe8x/OAkpmZ8QZeHQW6wew8k2w2olcJcBEPlR8waQQibVuGIiyxL/zwBWpvH+eeSmju/0DjsfKqiVzVE2tezMt8scPLLV4EV1FSjSo8LSX0kr4FzdIFddwjn5oFsI+uyGobNdm5e7MBH5K3z1Cwvk+cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFIgHoFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFIgHoFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A321EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761047993;
	bh=sEcFsRLrBi/5SaYx2jp7LsNU9DQDvGEFB7cu4aK50aE=;
	h=To:Subject:From:Date:From;
	b=GFIgHoFU0RnYZKtaOBu/BcNDa2ljofKw8+jM0F0x7siLR2NzDm92gNG6s17ZxzZ6Q
	 kBNfLq67G77IaQE1/5koyfwZKmEBC1LpykWDMtHjqPc6O3OCoX0hP84ueKaVUIVvIm
	 Anb8WEv/LYmop3LWqoVwXKwTLdgVVsKELZYPvyEgKhBk51ELWJxGjmCPLaKHO/j8MX
	 9fHzfnAztV0oo8GSy6HbMbCvT70ONZ+0i00RICtLuYY0NF96Z+1AScw8iDqIK7n21X
	 kingTKxI6W3uPPmMcZngaxiiHmkJHIlE55fpnoHh90yOyuSMiYHtmQO88Oc4zo1d/3
	 rEMGOoTJ493aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E74CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104799358.22218.4515091830872102348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80560db995da67aa17c99902a840a006f25c479327b747c10eed5038a7716a0b
Date: Tue, 21 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761047993
