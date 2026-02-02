Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6E5293C44
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770060834; cv=none; b=I7fkO86FeMVQrIRJkZmFxJhnjkmtlftYzfryflwrpXmcoqo87xVpFnhGII37IWUaZAVDbrQrkr2xqcjjpRMR5qS1zx9zPYwtp9xKGL4ZQ9KirN73GZ0sTHnuGsoY7rQChwU4xxg+FBLkatEwhYI0PvoXCnjqPSlynSUeLScqlVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770060834; c=relaxed/simple;
	bh=I2zsCbT/OWEMoRepSlcsBos5rlP+fSMb4TGemqFpwkU=;
	h=To:Subject:From:Message-Id:Date; b=gF0+WI43ycwokfcFMsyzKFNfBHqpoUtWmthtIPnmGD385Aiug95Y2I2z6eHurfyVH8eMaWahqsmHah58sWY2MgjIYuWNNVNIZXckYSDRVXAGbhbv3VaaUQGdeD5BKKIbNtT9Zv91CZj3q4IR8lOS9+VatE/BALembp7wyyDkrEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egLLA5Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egLLA5Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6433C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770060833;
	bh=I2zsCbT/OWEMoRepSlcsBos5rlP+fSMb4TGemqFpwkU=;
	h=To:Subject:From:Date:From;
	b=egLLA5ZaA/euUR/6E9FDHfHQLAzpEpeZtTpzKAo5E84wmMiUB/ZjcSkmG5rPGXnxL
	 lD+iCwG7AMfe5d6LYnhICcELu1EUtMQkiZNBB3sj39Ddyb3MM+bLlhoYJ0yr4qm7P4
	 U2B9YF8A+sfMWKjHnonagqxZ5+o2syvJPAo9+MjD3Cnu0EWKzTedfWebL1c+pxg5Fo
	 q7ockpw+edXXYus1Zc6Rf4dFmxuCbqXPZ35PcgHCwAg2hRsOPF9qsHFw8mz1hGE4GH
	 fVmh2Bggsq2+hwtbtY6LWcLOsLEDCRq3zB+nAfZ79NevSowbTMjbP0XG/uX6GOIvOQ
	 mXgg3ODstO07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4FAE7317E
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006083363.4003.5923227225453962904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7558e8059512cbfd7b336b46e7b851593abd3360c0e46e814a4bfd8cb8ca5631
Date: Mon, 02 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770060833
