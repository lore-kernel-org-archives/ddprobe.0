Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BB522F767
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780128214; cv=none; b=QX4QP0vHZyO3sEhVCaxRfw3+KOTQORrH0irMaEyLJeFbzppzMy6gpqti14N7WiKrhsyS0HsyBBZcnNUPvtJR2wBVhLaMJiRKyeLBMGfFh82d5NPkkqx6fQT/OTNKZTKO17wEw5odez3hOLbjqGJ7aRvx3axT3Pup2m36LkkJASg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780128214; c=relaxed/simple;
	bh=OpoYa6GTnbKLq4p0HldXV5XVSdWBIe44xVBNa4/rR+Y=;
	h=To:Subject:From:Message-Id:Date; b=schlUn5iCU1067ETIcQWkBsFZjT9eBr9vi14dAW5JKVE8XtpAosEhHDmrDxxQ1tf3EnOORa8Zw3Aduf3IxKJwofUEGyP0RgATw045LAF79nqQOHaWDTc2Hmhsxl4yqETfaXeThchjtPL9aeX+LodmD6yuxEFnrjfTP7sF/AkYuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mzq7KAld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mzq7KAld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4195C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780128213;
	bh=OpoYa6GTnbKLq4p0HldXV5XVSdWBIe44xVBNa4/rR+Y=;
	h=To:Subject:From:Date:From;
	b=Mzq7KAldx/r/xBLP+mE1hMD1m+b8ATXj65ztt6/lqYtDFy8Fp7287i8F0/i5T8dBz
	 IQZhn01bXAN5wcGsWFLdrgcXvPUwHjwIz5ovGpyBo539yDYuftwEWvjhJYRkOFizuT
	 X2sLQrQoPZjKVncE8GCYHwCVpR04sP459bhkorb4ZophGrnIPRTyWt4rgnGpM4VHTA
	 BIGJv+PmsMM6CgzWtgAoSV4HW+xCVKUagZfow926GetOWL3LsFOMqjqxhSpnAruEha
	 pGlb9dHDz3jM7pj8dBVN84ntoyUjgIZ/f142rqfMyUBNy+aQoYlUoxJyaIlKqZAF/A
	 Vf7W7ykOrLRHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B6CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012821369.15156.1286046114795749706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0b5b5bcad447e68736064d15ccb291ff247c30f742b1302cebbce1fefae24d
Date: Sat, 30 May 2026 08:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780128213
