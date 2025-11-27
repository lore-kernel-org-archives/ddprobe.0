Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334A830E0C0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764280374; cv=none; b=tVkbi84Txy8jAlaxCGN/Fu+ijtMfy+7dk+3HlzgCvjVMWjTgJpqpRj84e4/PpJbqzo8gA2fnsgvKbu7pesycz0kXFOA9UmnePCIp1pGZe2QDzzaolCQ4l6nC77UHx6atzi5yUkYYLCQKCMz9LTHuMZLWOakX4Mt/H2+/TUazRok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764280374; c=relaxed/simple;
	bh=Cv+WaNtBcVh7hnpXRSM57YxEiZfw4HY9dmF6OocDtxg=;
	h=To:Subject:From:Message-Id:Date; b=Ie3bJj380JxDfwvS+qm7jKPBO2FL5KGUM6JUjiA0da7R+THwUpOSX6XeO/iSlbO6+goGTPObk3+uwz8633s5srCE3R9GKJpEyh1CDCt9rZe3FChsCmhUxReplZlbWYlrMR0u9LSzxs0VYg9XL6YSPwAF8bLLbzpHK82aPRvgkA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uuu4YF3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uuu4YF3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1AC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764280373;
	bh=Cv+WaNtBcVh7hnpXRSM57YxEiZfw4HY9dmF6OocDtxg=;
	h=To:Subject:From:Date:From;
	b=Uuu4YF3U6LL2gSGiB8tuo+W47I35/au/kqsLBCO5PAh6XR13C5PbKMRf/hQwTj96N
	 tcsKh5Uo5zWZeDngV82ilkc3VSjOiICkKxIaln/t1SOTC8eGjhwc8Z2LPprmwX+iIL
	 XMyqKkeizbrSFWWt96MyyWofaeSIEef5avoPdOXg95GfhjJF/cOotppQ/WkOXP6JOz
	 tXz8XcrqG4nnplUplGncBiPHtzEyHtuF88QUoVmxaz221sMamwrH9YjzIxQS43oaKw
	 MXaLWuIOciEdbTsFN7rEGG8pUvQ+KWGTrVG0dxpyGySCWgH0UwiU6I4B4akB7sj8fJ
	 WbK8ydfIsPAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952FFD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428037358.2361.17827793652179229225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af3633d1ba32272de78b9bc69240c67cfbaed1eb1bb06ec15258ee88a101948
Date: Thu, 27 Nov 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764280373
