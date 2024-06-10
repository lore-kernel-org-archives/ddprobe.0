Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618D917F6
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717998443; cv=none; b=PXDWjdraMoxvNM6TTr7vPQ1ux7baHBzBJliQMbGP6+C/BI2Omp7z00wPP7mFn/QYh8IRTDIYbcIInnmEEBWyuoniYoE+EjGd1dI9J0Mv9VNxfglDtEqtge8voiDwVae/88g96xeGPvUAUdEigq4N5Ye8xT/r9mSfrl3TlbeOtUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717998443; c=relaxed/simple;
	bh=8r0CV6fU00vgC942SPVr4Ym/TH0PSGu3Hbm4jtTzrw0=;
	h=To:Subject:From:Message-Id:Date; b=j6YBEiWcdfzDKLuop3vBwlHcdW6c675Cg4iu+Z9Wm9hBy3s2JqioyygIxyTvEpKaoaK7B/R0Tr0olSHc+44Bwd45AnLnExK+Xs+jijRUmIRnmiZX2B8qd/cdIkWLoqEjP/gAhD1mpRjr1kuMpdf11aKaYv9Fvq/aSznKqRTXocU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1vNduIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1vNduIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC835C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717998442;
	bh=8r0CV6fU00vgC942SPVr4Ym/TH0PSGu3Hbm4jtTzrw0=;
	h=To:Subject:From:Date:From;
	b=K1vNduIPRJWqdvCU4mhkwm35gyY+zWJZsMautUWR/nu9EzXiZTJeQQpWdp4DTf10D
	 +B9knxm4e4qH1gmjmSx01w+LnGHUIg+3KqzI8jvNtGAI8IuZGIH0CpCHi38ERLhMv7
	 ght6s/B5DJGs+C8UuBE8w0OANaeEmzy6rd2ZsIix+iUuynV2plMU+z/WYL8pHwHq03
	 CUq5i4kbrE+Iv2ACB+JKsYbVVyu9i18oKOF7yg2n9IXLCSDe8TXvXyBQCTj17NgWH7
	 sCBm0olSIpbcWb8Zf2pcXI0HxZxUlWw74TBzPCQB4ikwY4GUmGQZnDrUYFChy00vk+
	 t6yelKobbXk2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4642C27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799844276.30246.11267419649310273311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69299b9de0fe6f114bb289cd77eed9562daea35acd6aef9fc3b4c4fcf75037d7
Date: Mon, 10 Jun 2024 05:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717998442
