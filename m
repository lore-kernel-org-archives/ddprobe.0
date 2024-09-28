Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520B05221
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727488554; cv=none; b=ALPHhyMFLvCCpNZ2tw9Yjo3mPuDL7UDzOrLcwI2L/ydBO7SYf26bNY5M6fsG+b+t/tYBSsyryrPYGOE3LnXdVMDqgyCzxFwExO6rjZ3jOmUcEFMi2KrU+1PeuOmMYCBzddoPH5zTbd7F8wx6R8XgW6Pbkboeg75Pqsiq1fT02FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727488554; c=relaxed/simple;
	bh=diYJLh9gtNeEWqwDars5Frun6pHzskvVBBI0jQdGEIw=;
	h=To:Subject:From:Message-Id:Date; b=Ltlqb+CjJE055DA/SZywAdUyZDsPIMxdFV/UGmy2fdEUD2fa/T2lOVDDGjLqi16nzW6NJNTLA5FAqZIhZ8okxZ82jUeMqMEp1cbdkdzXmLYDdiiFFATj+1XZbOssAguYmCXDsexnsmg7FLWCY+9e3tcxEDFEx2RMwdcMHk99WHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFemIvqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFemIvqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9306C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727488553;
	bh=diYJLh9gtNeEWqwDars5Frun6pHzskvVBBI0jQdGEIw=;
	h=To:Subject:From:Date:From;
	b=bFemIvqoGsYiSdnxXNfeFa0C025aNOOdMiOvglEaN2KLiJfExLaRSil0v7U3F93y9
	 XKQ7r/7jCpjZcCKwkvgxMbdeVJXASYyUxl4aW53GjKGQRVfXYTBLW2oBVp4uM55Lxa
	 Yfed3EfZXjI9U3IAC+me32r6O2dPMmVJJQhoOiLgzNcTNuzxSwb8gPZUSMVsc5Uz6t
	 u2kWBGWT2iTswyaXRynMfDkS3q4Xt+amBQQohNvX3enT/9PNOq6gsK6q2rsS9mqPtY
	 ztA3T1HNlJ4B6IfkN1tZvc7d5EMA6LUkrCRIV36LN28eVlr7MZBc+UY3XDVdxStA+/
	 xgL4Jgj2vwQJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9691FCF6494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748855359.13628.8169523249573787581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a2800620f0b80972f60cdbb390dbe00b20fd245c5e5dd1c7b1889729fc7012
Date: Sat, 28 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727488553
