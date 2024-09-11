Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246A01AF4D7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726074354; cv=none; b=DRHdIgTTxC0zzsHhSdysJKX9lNBF8m1L0J7EdJS/hrtTLopFFWXzuYZ09I5E1lh9H04uQYCiSd5Vc1UvL5x9qBVTFIfJNMkB76uHhgg6CiSHr8rI+CkkizYjT2/sIsSa58xP2dE4AMzXnik1hpf8ODOK0qKYduzDV9SZiDDWgyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726074354; c=relaxed/simple;
	bh=AGN33TpQsfKNzyNReL0F8i/O6IWQ2kEAQeuzWqIfWD4=;
	h=To:Subject:From:Message-Id:Date; b=Uk66DuZeYUd8LarZvPbfAfcJrG3vVvc79JL99qcCPUcxdZtc9TwzQENiHiN+k7OKACfrUcclF96HERcNm4eUx3F36ckJNnSBZXpqqQpqDFTESfjWkienB3k4KF2jpIXeenGZcTmpIl9WY7drYeF9m+iJSoiYpANn6JexeLBhKec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJlFNfci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJlFNfci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB54C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726074353;
	bh=AGN33TpQsfKNzyNReL0F8i/O6IWQ2kEAQeuzWqIfWD4=;
	h=To:Subject:From:Date:From;
	b=NJlFNfci3jYMPwPHc1M64mhqvAPZZcsP4O6mm7Q44WxeFy9PCnx1SZAX2ltcfGDhP
	 fgEWnY3vHoBU3iqWeBlqG851Uv1HSpNzj1YJv1BcSyJydOSL+gVrcOmVnZGAbV5Pan
	 dgQU/bXF5qTpNc3Z/r7bD7oiTycOt+byle6I1a55CRTF01CRi5Js/U95PI166V483+
	 caa81SjO2d4JdCFs8ZdK8WY+yb8Of/IXpCjevsW7U+arxry90d0AdSFvW0QE4PsLAQ
	 C4HeRdqUBpRdlBAYgV9/jbd2JpaGOyqbCZFSmLEYnl9UGtefqEl9TAuyw4AXmI6VKS
	 bvRDm8ejzNkiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99734EE0208
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172607435361.11984.2195793548752979662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d0a14bdc8b5c86b4806b8f8d18482cab0a80d19b2c6001ef0e2fd6fa164f9c
Date: Wed, 11 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726074353
