Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BF32D0C74
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753435794; cv=none; b=Jo89QxBxCrwbrn0TnuhKnui1hyMQ+06MOqBfnWJOAQQjAfJi8MkODbmw8vWNHmc6XLHwztGhkPOayGaboMTupdqqXluCwaszmbKmoGuLFQsC0WXvQgjpkjds/mRDFE58Q+r/N3/cmUmWe6ood8qFBsE7mtJr7FOLwTlObjRmrw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753435794; c=relaxed/simple;
	bh=Udx5kcicKkb13b1+rJNUXA3JkmRDfcK6Z5B4ok7EiNc=;
	h=To:Subject:From:Message-Id:Date; b=rAUVuMchk52u3vsU1BLUThI52aXIcKWUr0DhuDdQfBOGdp6dJYd2Spoa5FqB9D2RaQVEvgA5SZaG+iEzWK7yrM1kbYy50Ag39+W5mI+9budMhPALo8LZuzJNQQnvYkVDAcWeVspefojFeUpqHFEwLYAOMLnJv1HMn0Sx30AmkbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOt9ikLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOt9ikLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753435793;
	bh=Udx5kcicKkb13b1+rJNUXA3JkmRDfcK6Z5B4ok7EiNc=;
	h=To:Subject:From:Date:From;
	b=VOt9ikLV9pMJ9RUKc3toXQaEI2fnwjVvWmcF89Y2/QSClbJTCS3skcvLrlflkR3fb
	 guXE2PwmVnX6sH/ND3qb6YwC5OvcFbDaoCnaldYHlN65exeq6JC54xjmL++ygJtxec
	 DDUSn+X+OuxqkxO1d14lVMulPkrVP8jDBjs7lUH1mmhUQPnC+FTKwDHRPdgQnXJurt
	 oHOA058vafNHT8ZPQlyFWYN2ygSQzGA/+5g9acRc+c5JJMwGBQ07YDxFnUKNklxP1c
	 ydxbufjprn4QFgRUOvd2wrp8MOjE+WIfveX6u+QgkhooSdT6JuVR/RYCETblSj6L7w
	 jMeFyvWEFSwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92274C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343579357.30639.13375143619820487078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1947032d02a22a7b9ad6811c977b32bc76209f33ec9a259584a6f2e48c11b326
Date: Fri, 25 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753435793
