Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA85224CC
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726082154; cv=none; b=ZLWhxIyg67CXkI1pbZGHbGaCaJkOypK2aPDS5loVpQHbZh8wdUoznf8NLTNOtkGI3Zxy/VsV5fFmfKwgfeqSTRFOwp5wrIgosh22NXmi1mJCB4dwGbKhtDGggrzJYpK9ONtAUZhFmEh6M+KWiS69o8p6dPSJh8neRE0lR/54qr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726082154; c=relaxed/simple;
	bh=JAcryKCew27C25MGVMk8zPSQh2P6yAYrKzILBerLZfI=;
	h=To:Subject:From:Message-Id:Date; b=EvoJNeeSvtoi0o0nP6oWTzvnW0X2ykfccEbWWrH23dFywIwGDdqZZ94z1hCV1ELapPpYg05XwmxgUvHqHG30iGmQpYnBjeTlOJhfRl/h7su+nRT1qNCI/ZsLFkvU4AO50gck38aYS9qiQJD70wVLj8aMsf7nLv7n/lxtaPQu8Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKHEWjyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKHEWjyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABE3C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726082153;
	bh=JAcryKCew27C25MGVMk8zPSQh2P6yAYrKzILBerLZfI=;
	h=To:Subject:From:Date:From;
	b=hKHEWjyR3wKdwK8VHvbyrfx//szsVCRd4Gax1LuR6Yj/n+s2nFJ6Nd6c3K+VUHgo4
	 1L1aoLKID+s1UndhKab3gkR4gTHhs18iGigXnr7kkhXOStd5vtaHyCfwYoe8Pf8EXQ
	 Y+w/tTXEDFPs9AmNaacvTsa846Py5VBkDUTyiOwanJg+FOpp874BCAeRoegraMLjJA
	 nUWk7VeAayk4U2cDqYY9BsNIIYXWEjfDcW3PPqW8nlWw7rBn2MnXkTxCYKrQChcJOk
	 u5RF0ukaoyHd1c5CK+QwRiNUM6DLrzTpwMSOg0gooktDsV5CGDQOzmTwqHriTZWllz
	 QNiu1St0z0fWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B9EE499C
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172608215359.15726.1172091647246057997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b800f031ed9141ddde840d4533d78017ac2ffee7191f5353900468385a20c3
Date: Wed, 11 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726082153
