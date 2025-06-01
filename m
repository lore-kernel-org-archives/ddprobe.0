Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412823BBC9
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748778594; cv=none; b=XWHXghxapUWFRf40+VeUnHeGkWJ+arrII/JEM15XnA9IbwCbRPi6ByrvKdhXP60lx2/xaPneUCcff1VmfNuQhUrY9MbHSO5733kqpyWLhEp9QA6PYtqx3bRbdlynNNTbQLZdW8fjvOHs6+obFIXYUNB856LnU5WY3yey5WwWC/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748778594; c=relaxed/simple;
	bh=UfTqKld76m4xToZu9dRTDMEh5hXn0HNlIGJ4Zd+nTEU=;
	h=To:Subject:From:Message-Id:Date; b=smCbOoey5nXW0vfBM/TQGS/4OHyj0jimm14dOvDnVcngbMPLu3s8qtYhGaiZChuFGA9IJ7+IPBe85Yilvm/oOkyzmkPaM09Mw9cs6tsuXRRBNNVPItfEBBJ9ZDK2WSdNQnay5PP1Rq6e+V+OarY7toxNDVl7xvo6U9thy1Jp5sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvJEzpRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvJEzpRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748778593;
	bh=UfTqKld76m4xToZu9dRTDMEh5hXn0HNlIGJ4Zd+nTEU=;
	h=To:Subject:From:Date:From;
	b=KvJEzpRIMBJihojAODZm9WFonqQghztC6sl/9pp0s54SnFvnbNhnV6T2D2PsSsbIH
	 ukdzjoMqb2YppTf7zJ+gdlboQ7/sk2UDs5GmJ4WUGTi32GPkjFEB0LZ3/h5ybc5bZ2
	 r7gYKuIy1AYEX6CJx/+0SQgYGtKbh6fekNGQXGgJYTt5l+9HFXWpiKGQ319Ag5Nh54
	 T/5MhrpqPwIZ11T6lpLfgJY1NQgrJw46Ye9wRuzzTuN0hNx6Afpv1umzCaGDivJl9W
	 ldcHsbIwsq8TWqdsHe014fB7lM/6+Qusp8GpiFDC7nPijguomN8Obg9iPLrq5icHeL
	 cdX0xh7S4k+hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925FBC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877859357.31198.5966792517111073046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d416ed0c148cc99a6cb40db95915c2a98fc7dff5cfbdb02e6462b350690f206f
Date: Sun, 01 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748778593
