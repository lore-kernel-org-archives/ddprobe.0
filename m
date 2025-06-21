Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6E242AB4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750486194; cv=none; b=evD6SEgWQ81FzPfAJntOEYNWxcwTPimz7YOtIgLy9l5LOTYW+yQbLHe0Ycf422198TaAlNYf1BMDFNmgaiXciyosC3ke3VazdFluzNRfsitZuENr5cGrxldG9wKTz8vkKkLrOG8/n30pMiauyRqNof3cJygqHr8+L7oX5EMa42I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750486194; c=relaxed/simple;
	bh=NqT75yYMStngOUkbqm9eFp41gFMjPt2W+DugvPejjlc=;
	h=To:Subject:From:Message-Id:Date; b=pLPeEr8L75EEaYoeRgcYks+2LB7Fs+iopAY3N6U/Y4uEL30vntF//CtWyFBpAKrIamwqlvq4d81zD3rVepe3LXWG51Q5rR5oYOEMPUigXoPAH09WzE/BpnJeWXj1SfaWGzBefcszp8i4aPTgeotO36ZulMkO0mOfv6jsAEP1e60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jy06hQm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jy06hQm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73C0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750486193;
	bh=NqT75yYMStngOUkbqm9eFp41gFMjPt2W+DugvPejjlc=;
	h=To:Subject:From:Date:From;
	b=jy06hQm9ycEO9cDSMIla+ktWku5oLVP8Uie6kEfrSHb94/I+wEVfWPvnueex+CxWR
	 B6WNU4puaG5WCRUmv1AEhVZ/RX7RouDQQ7S3SSPwC9rlQMroYWN9IvCBL7kcq9c1EX
	 h00cDoN6vLAyFPVZQShdvkrewf3NAaE5SBQrGSwUYwgSzcUltO8U7Pij41Wc7u0Mmv
	 fySkFxBliVgf9WifRbbHF/VJAKrki9Y4ZaE7ztufSaUXkabmwwXxjy/HkyR6mQQuLI
	 ZakBUbGUlm9jNG/tCFZZSkTVv2s2vnzqFtg80cNunR5SlTFqLNz10CLUKGwkx2OWem
	 quUBiq2KB8ttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FE4C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048619357.25496.11842004570657482466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759d4208185516d26e97f1b03f0257ae8aaa1f1d7c790a23c8350e2846f1ad5a
Date: Sat, 21 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750486193
