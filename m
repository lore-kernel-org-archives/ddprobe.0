Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02879378D92
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776938856; cv=none; b=dxn6wDgCweeFBBt1/vgQI9HxnV3k0Hgn2LTjIWAhC//ENztZ+KNMhORy1zX/BsZBTtTNFd1G6H6ay3vdpUuuY5uBtFVIMKkV1tGFEz3XeQvXRU/L22HhjObrSTCJTbnkZVSmR9+uWYTl8lJCWocZQOnME9qIRsrPsCYcRAN9AE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776938856; c=relaxed/simple;
	bh=qE7x8RYk60PZODr+sbTZuY9isPC3XBSL1ntvvMz0u6Q=;
	h=To:Subject:From:Message-Id:Date; b=RCJI+9b7rFLF+blzndjquceMVz+NB7gLtzMKTWXRGwVMwXiFhop3ZTbeCLYpmLMN2owN+dpMvZDfFeByMPGet0+stNNltfJlZj3Bc/3nhO7J1LZmQYYNLHgsJiVcZuqHliRct0zkz/6ummrFdHzQEFvEAuc5Z0T385qcPmjcmuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrbr/9Wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrbr/9Wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD78C2BCB5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776938853;
	bh=qE7x8RYk60PZODr+sbTZuY9isPC3XBSL1ntvvMz0u6Q=;
	h=To:Subject:From:Date:From;
	b=rrbr/9WgtYKgN/3DUZN4YFu9kUnCAJ64MVjwekSDtZhiaok0bxmge5SAQMTHWc+Be
	 a8aoxoJP2/a/1kLeajU1sH/R6fForItt1d0HNclZmtnDJO54QBdO89ahMWuHzRFe+V
	 TyKXU4chxmUnfiucPEe0Hkw7GvlJKPdnfUe5MgSUcT5XFn3+XIPqbV1lvSbBH2TW58
	 G5uW98adi6npi8aJVNQSSAaWHDmR/gw8vrLoiYU46R08Mmbx1EndUpAbimLEdVxj6A
	 Uph9f+8LcP2JGORpwXhE+q7hlJsYauJIJwr/nguRE/TPyb02RspnR+T6jBUPCFMZ2b
	 T1kbwyIb7DpwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF52F99367
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693885369.11953.17976228184496871448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d53d939cdff7f16277dcbfa03a82dce72a6f890d555446eb781c8932f81ff19
Date: Thu, 23 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776938853
