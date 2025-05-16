Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCD81F956
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747357794; cv=none; b=gWEOoclvOAim1jd+yBjxr6+HpZP4hQXsJvJhK9mUBm9Of5A0xmZzMrhPXazauvn5VDCEs6gYpoQas9FqzWLyMXJinvTSQuV+PF+na4DnvceMZzSIaoLz1CoN/PUGB3QnqJD/n8usyjnoEHRp2wv317wT5JzReuZHMIbcjTuiPNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747357794; c=relaxed/simple;
	bh=Xj8dRS1zRZT3jphPRxirypnWRkavptKtE6EgmQfdHdQ=;
	h=To:Subject:From:Message-Id:Date; b=U3fg++TnBQueXTTO17unL9B5b2zHDdZlCp62TWzyk10S9c+b5ulJnFOQzkb12/3wpuqqcHcu0aTlRXsJ7I9F3Bi5I1N5/m6/QVPz9rwUGzSxnUQQS3DmCaSu/bLJgVOzo0402+m3Gy7vmsKhkTX0xKwBx6hn8qL4Ps3meGRyOiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZfiuunX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZfiuunX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12BBC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747357793;
	bh=Xj8dRS1zRZT3jphPRxirypnWRkavptKtE6EgmQfdHdQ=;
	h=To:Subject:From:Date:From;
	b=hZfiuunXgL241J/bR3pEclgiwQpu8iX64ezb++3NwKEjN9cXE4w8eYaXcNpLHV22J
	 QCdum32tncAKZqBFE7n1gN8mTD82JD0beMdx/icc2uap1Oxoisu8OjUn0soGHfki2Y
	 7sHGv91oQq7taCQBkQ/0MxoRgANMa8UzmN/2t4AcJhAvRD9AM+XEKd0EL/vWi0b8k2
	 Sp9YFb6RHmBzDTmaPh6V0o0HLiwBkMHwt8HS5bFR5FmnOiMDet3tBxoWuBnwlTAacJ
	 UT5yZ07XkbZVyDfEDHqbA+Y/WvkLwAAlQS7gtGFa7NKrTG/lP6Vshs22ykFmBXkIk7
	 fpnXQurBY8iyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992D5C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735779360.13717.15467645835070064514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad0269da8dfc82430bc9818e44b978d621bce0b548d449bfcc00e407d1d350d
Date: Fri, 16 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747357793
