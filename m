Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587EB17583
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741415335; cv=none; b=oc9BwQ1wNn/ZJRmmOB498b6ZUNDGDh0qCF0CiHABAiRElpvjO++a0+CsmknAJULKaVRQLHsa/mI9ogT+foGLr4yWjkOY4U3LGzRwOsJ/Ws4SMZjcFIJ46rNnDZ2G2ncqwTiDsYY/BUdsukYeO3QwQUC2ZnvdSLRYa668tLqSTkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741415335; c=relaxed/simple;
	bh=mOmhZwbCKeAYoNkYcHcZkoxhkNNYgJohgFr2eZB3MpE=;
	h=To:Subject:From:Message-Id:Date; b=Bc8PpabFoVoaLgcOVDVp6uadl8aqpVDp81iWlM/usdmx0ATxFz9Iqld9N6WX+Blnsr5JA9x75HstMvgQ3FTQryUb91otZABOaBm2ksRBLYLR0u+8tMgj2u1hKVbld3wC4oZ9Ok4iDWDpC0vkcCY0lmTszEngQPuGN+F7qKWc0v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W86CirSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W86CirSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E02C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741415333;
	bh=mOmhZwbCKeAYoNkYcHcZkoxhkNNYgJohgFr2eZB3MpE=;
	h=To:Subject:From:Date:From;
	b=W86CirSYlKDn4p5q+2nHSCw4PeEoexy+DiPIcZEXuzJSz+sVakseTyQkHoRfsD1ya
	 sUC+MvFnX77ydgY3SM/bONyu4Fsclsn7wbvSKswjlFkFIKmSCgqpIsmtWRCrsjTQJc
	 FFuPZyPXUXAueqbmx3GMe5oTkZxzVhk2zGOLm3EFnpF+BU9aoiN59SdHVvp4h03pJ0
	 uYk3yMY7FG/Pg29XTRuyDvv0tkSzTnQa8JVhNhTAlCXLGODI1/rGZGVDuk5tDBDvdV
	 qbq6+1lneWsZvag6UFIzklbjnFYRKEsXXFeb2copo1D27CV8ZVQVtL9HBU6mRErpYn
	 tQY26DJGgkdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ECDC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141533358.29333.3209001231278932102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885c13ee60283d988e750b04c30b7468494d2c5e7e1de50eb6c508bbb877c46c
Date: Sat, 08 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741415333
