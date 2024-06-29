Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761EB1CF9B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719644063; cv=none; b=WB2s2ZH6AmOw4BTN948N7pnWM5bu9dk6Q4MXrDBWd4/kwHj5+9s9axKSVQoptdkm/hV4OWjrGkb9b0VYNRK+e4XeTBUtPIToKUkD0+x6gBX7FqW0wQg9o9BNcOcqcWhUfjOy382tctwFl+UVT7bL/sHePapwFDcCES2/QqkLrAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719644063; c=relaxed/simple;
	bh=GGBjUSawwCVrZHpM3uM1QEQqJp1a+LcTFDriePJwDRg=;
	h=To:Subject:From:Message-Id:Date; b=M+EKFj5fHDJWW/MLZctfFk90x5BDrU3XX5f6RxYP0dnSQ2LohuulKblTSFbgEboqY08bnMAkKAkMGx7pPwlat6XNee0ixv/U99iM6Njd0ReTGI+Slxy8SE2kfVj3SChp7aWbzxvepP1wsJjOo1M4o76VgCaNiUZ43kT9Ng7wvy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJ1Ey/Z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJ1Ey/Z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F05A8C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719644063;
	bh=GGBjUSawwCVrZHpM3uM1QEQqJp1a+LcTFDriePJwDRg=;
	h=To:Subject:From:Date:From;
	b=sJ1Ey/Z06frO+bFBz3SwMOK58Rh/pgOs+xX685PhOSesZko7mTa/gKR8PGPmDyDgU
	 bl6AqwBNmTRktfVNyLcs6BO18LSL3sDCzZYljoBRwXNcmvqX3eXl16GsnxZhjV1Ly2
	 qlwN1f3WkK57rnzA/oz/ipziNB8u+Zc88Ia64XLmljTlYw6OIbMsLo6hGkUjQaMOXP
	 pr6C7m8wSsjsSM+LDG7tHT5lsYE9yKapFC2+sC4/QWiBUbQkelfWZmggxdwpuX7wXU
	 2/Ty55uToMOMQHPDQhCHZKJfJBOuLeeTctYf+KWvc7tdUIVsYsBvCofb+Jdc7vjlJx
	 jpdcYssD4TFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7D32C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964406284.26497.16365716027371590827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba3accea54e9cca4bbba5595ac795a8dc80be7f2691193c0d4ab25ec580853d
Date: Sat, 29 Jun 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719644062
