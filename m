Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295A833F8C4
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760727594; cv=none; b=swf+lcEy8ErapJQLG9JSOfoC0++aKJOXdnzRqoA0+8EyOHu2KE0g/I//2xKOlhMHUmPi9wm/PxFGC7TSi7MonwcF85hs8RHY9S50V+gLuTFdtYHTUJczHiZAP3Jx0GOHGbgtohwy2fLPTxYf5RRvzoB5+ksm+WvG5wpTAe+szcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760727594; c=relaxed/simple;
	bh=kZCKKXnLtkTgVMwCrIcrhYm2Iw0UfuXgB9XFpm9P3bI=;
	h=To:Subject:From:Message-Id:Date; b=UIpuUXLJ8fGb654KsyNVcrn6JfAXWA7qvIktrsEhiQtLtSYrjrDuknvWqfTm6hT2u5Fc4NUx02X/hHlWM/FlIpjpKRU19Hido27Fqf7cPOJ650SXv5oUZvZbCdNWIEY8UdzjOVkjRHVKY9DSSN9K4vc2zpaXADpTCGuK+M6MfmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0rx/qZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0rx/qZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A882DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760727593;
	bh=kZCKKXnLtkTgVMwCrIcrhYm2Iw0UfuXgB9XFpm9P3bI=;
	h=To:Subject:From:Date:From;
	b=C0rx/qZTq1LFHq2oH5E2zQlLJvwNkvmxB0m59w7dG33aK1SQCICTIVFqFg3+cZyNL
	 Al5l9X6+yj0J715b/0hFIFzVLOjQ2SLIlTT9cHe/KQuIBy1C33aCDqbI9aW1mLiH7R
	 nPTfDLoX9TR6y/cdMZPo1B/t6kZmG9k4e3uVggxC4H3OnJndMRdjgbgILA+w+oysdY
	 2h6gdbIw50SbBgM//l6uKswQjSJtgAZYznMGOSxb3NGfcnDp5oJ3tHFh1p9TjagCbn
	 ymBjt+ElA21rZW+r3HJIGSZ5SBZEbBUogHZHVei2WkCPToR89JX3OUsryYHi4IFEER
	 RitcXHamBMVQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2FCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072759359.1135.13368614832261292603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a3caaf5f585f10d22fca4586b083dfea21bd5362844829611d58497091f332
Date: Fri, 17 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760727593
