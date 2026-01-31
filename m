Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3AC19D89E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769873634; cv=none; b=dA/xMSSdukCz7RCbVu+01hXf/xj47qaUvBjfqooLsC5T0TfHFZCXn6mXlLuK/uRC+z4t65Lpu342mNgqJyG3w7F3XRJGiAMSvgoyzEJrHlyluAu6p1wa5VqMgKXT1/sOkQznZxlYcRBj7HVbsgwu11aAUNTGRmV4klJp3UtY+3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769873634; c=relaxed/simple;
	bh=jQC0ujdrtY8DOcZL2A97D4eebzcyEG1TIzmnZi4aJUk=;
	h=To:Subject:From:Message-Id:Date; b=JB5HGstssF8vAMdCoXI+2YMERJJnOWv+5eiMWyOcTgv5xrSdsLgUZD2Y9VdQEkN3fnlTcu+H/GwzoMlK/vXY4dCr+cTcqaKwLocDeM7RcoMXbSujGYpLGn9ozU238c71yPvmVtCGGu8RtKD8MA8gEQU6xucfKuPeQJBomIaz2II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShnCOiK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShnCOiK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769873633;
	bh=jQC0ujdrtY8DOcZL2A97D4eebzcyEG1TIzmnZi4aJUk=;
	h=To:Subject:From:Date:From;
	b=ShnCOiK0QZgnm/7AGBO1SCEQjjItUv1Mh+twA1u/ENvJ2YGziKJYCkZzTsTwofvC6
	 fuppNXhL53COqQDdyhUndCU8/09Wp/sO8yUGaho4srnlNOp7ReZux3/mwuKakp9A0M
	 foP3e8arqZmR+3pCv39MnOOZr8NrqnMA0mu0e0TxKyU3gMSJkoZAjVHJkii1Ca997l
	 Vnn1qkR0Xu2MGa57346KM6+649QjI+20fLQ3XC8lXpgoB9uyjwvGng2NEUMYh8ws12
	 HVhX/iiw9u5uzysNQuoKCCgVZQqXC6kEO4gpa7q/yziGBnFyhxlC8/8SbQF9O3QHFT
	 Ft+y3CjuGtf/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38FD7977D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987363357.18962.10392303092952009856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70e259f2c37dba2c9424101a626364d169126f33eaeb56b8fc3c0744092db3f
Date: Sat, 31 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769873633
