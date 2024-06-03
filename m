Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D13F127B62
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717440923; cv=none; b=NIa3B0QVl0FDtjyzX2Iom2MlMYkuhAT9D25Lim8FYj4g5+cLUdL6ABpj19yiprK3yw/qIWtXjqkb4QicTdo6L0ZJ0Kfr8b3vWTMSMOhePVJHAay1hHRQfBdQ6PqRpoPbEYH2Hy/S7l1CMKsjCL3DGUwclyxrMzNhxSCOhPMLVKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717440923; c=relaxed/simple;
	bh=I+Jedp6B6HckVoMIXjXUB22sQtPHR/mmmOXcd63bmkg=;
	h=To:Subject:From:Message-Id:Date; b=i6MO3bwZf7cWbXsHHi8xejMMNOqOM6KKG7hrIFIRotmNDFwKLimRB9IWky7e8BxDXnENcijnnb6mVQZL4wOQ3l3oERGhyP8X6+t+7/n4uPjfF7AiTvjSaKvZ4M68BDrOsAlCw7ZHQmxN8KPRPKC4pOedWnXlZsL/GXqSKx4gvsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PR1sOOtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PR1sOOtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7EFC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717440922;
	bh=I+Jedp6B6HckVoMIXjXUB22sQtPHR/mmmOXcd63bmkg=;
	h=To:Subject:From:Date:From;
	b=PR1sOOtGel/MBWx0EIO3UcG4g8A81ROqcTuybt7aeODdwVpPJ9rfJcWe6oINjRtL4
	 4w5vhTwXvYefYcTbGxRJoKst/xZlAhk5JIvdY9dnCLSnxW9nFFuc41Vslh2Nezm4sB
	 L1KarhF8y1vXy/U22bV4YV2SKWwbOtCzq7Z+s4iAhPQ3biVFZyLFR9urjqZLpd9JS+
	 3LBCHbnkh9d/RC8k1GtgR6zb2O8MPjzw8Gigon+HgD4dUJaHWy3VCNdOrjCHaJTGmG
	 UKoacnrul9CcTXz/3v69YRIitydL36JJ214h7/fVC5C24pEFk14KsnquqBS+l+Nox2
	 wduQwUY/Exs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BEFC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744092279.15855.1092227109198443668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d984ed9475d5902f38c785f60a0978924c56cb3a96d8d62ad55816073bca2f2
Date: Mon, 03 Jun 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717440922
