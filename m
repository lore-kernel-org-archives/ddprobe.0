Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFAF26AE3
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714115543; cv=none; b=nDjBsj0VnrtHCFvOHEAAFO1pdNA817eqJaz8cs3TQAUVT2urKHt8ls9VFFSkg8ADMwSWMILWwUVQXenw6Tk6T4Z8GLOjPhmJ7FlV1XAAtHLzyKvbyxj5/e/JPI1ZqO7hMpF8AimwG7srisb6BkQQdZz2silabipBZwsjHAqCaMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714115543; c=relaxed/simple;
	bh=D+0B652m+o5kMXWjaSGub4Zj0wBThB88H5ZYtmamiBQ=;
	h=To:Subject:From:Message-Id:Date; b=JRSV8FNZFJfvQMcHpgiADfQT2/YY/h9tSWNUjw7oRUzXPZUq05meqP5WSiFm+j5DHatnsHGBTgCnyMDSRp/Nj70JxOZQmwID9lOcM1nUZXWdYOkzNcbFkUrke/aipU4IZXmiLUsc9nG6zeDoObko32RA/n117x/nvfGFNsvbtvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6WLVfaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6WLVfaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1963C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714115542;
	bh=D+0B652m+o5kMXWjaSGub4Zj0wBThB88H5ZYtmamiBQ=;
	h=To:Subject:From:Date:From;
	b=S6WLVfafTCUnBbWEf0LGMFiYUdnbh2RYTJzhV2Hrh0B3bWptfiLBoCFIsAZDXpo7h
	 13oy2Ks9LiVY0B/AunuY8FsSEzbNRorNBA/z/Ji9EhZ8e22Wvd1h5d2L/DYSi4JqAM
	 h/mRG9azrLIJQ/ekPKh4echMRktGjinj85kQ7lrQ+m5HSN4TEyEedQuG8pKLo5h8tM
	 sLnh0IFEcgAfN6Jy4esOpmxdX23VnkScRzfiRw55tozf1oc++i31zzu+bzLfYcEntz
	 3j/9QW/s4T5O0Jips/HY6m3NzhzPX7H/oX7JUP9XH8rbGwnY8mIUny16siHdFUt+ZA
	 1MsdhuUJj9pPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB48CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411554280.17831.16811956619776970275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9bb7b35d5a2ff979197eababa6bb7e8177e3596308966fa20fd1d5f16772f0
Date: Fri, 26 Apr 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714115542
