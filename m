Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59046424D6B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784890234; cv=none; b=GvEm+PauH6H7emMjkv5PXvnSzY4a0QSNv3+sqxrHwaCWCdc1Ibcox7Xl+hl/d2GNMQY7TfOwkLnbtqrC8ghf9TEbes2/fs6SsWmiCKsoUG7s3ETmgPgXLZ8ks+jLZNuwj4nQIrL1p3qs0QpO0qCWsiuoyUJQ4YEXzoInLvyP1GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784890234; c=relaxed/simple;
	bh=Rc8wTwP7y8FUpBbr7wyxdmAxi/DFEkRDAPlLFl8EGZg=;
	h=To:Subject:From:Message-Id:Date; b=lQf6UU12rP1WMszGu3zmsmwly7AYVPirPM0YZXcCIzYty94vfiTpewg0+/nLFT9cheFnaEFETTkABCoDFcuaNWFcXsWEN4wO+ujEqXZW2yUDNix8mYYhSik6pXKgztmws/t5JiHaU/mEXT2r5EKPgg29mebRWb/Vrm7yQPZrlQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUMeUA9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUMeUA9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DB1C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784890233;
	bh=Rc8wTwP7y8FUpBbr7wyxdmAxi/DFEkRDAPlLFl8EGZg=;
	h=To:Subject:From:Date:From;
	b=BUMeUA9xKH70kBMXBQhmRQmzPvTzWvjzi1tHOHcW8hPRkObqdUxzJ0yINnAbKn/Vw
	 qewnRpZ3RrchXodTfisRVWBCDguEDAvy+T1A3O86noTpzAyogInOu2uyB0cLafVsfR
	 cvLayGdCoAGI0CjaED0a/AE8vtDim3xJLJvjpGQ24lNesQpbybmtX0Yv1/abdpZATK
	 pjNc16kvnmLYV5YSLZInHdhkLTtau7k2R8STTimvTi8x1pDUPXfpvAYJzCLX9KcCmA
	 Jz96RzbtCzu+2t7mrpC2Lav3dA+eyrc/ZSUPljRfH/ZLf6K/5Gr78ateVg65IqHqGT
	 hxJaQuYpo7umQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0904C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489023371.6263.9571076149139184421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47053bf2ce8d98fb80087a854c758e21a068dc2fb1dee0f1411b04e7b38380de
Date: Fri, 24 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784890233
