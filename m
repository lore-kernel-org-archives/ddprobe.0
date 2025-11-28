Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2A42EB868
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764319374; cv=none; b=Wjv+GwPSKkxXGc5sEi40vCeq7EaEoyP2WljNaerZ2+kaGZolSIqIsyCN5myVlrl7NDO6kKqKaF5gktQRFe/Jpur+1sLCB57CJypRh2rj8xgmg6/8NtWsRXQu7k1MOOemAK6uC/x6DI0QbwEaBu/XZ5BO7gqXqR0HV5Hl1/PVjUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764319374; c=relaxed/simple;
	bh=Ann99F5SYEDHpEyrq4+EF2X0scx7ZCUxrAFxenQEUYg=;
	h=To:Subject:From:Message-Id:Date; b=M0CAm+DvLkcuE4/UTuaRx0MBs4x7wd9siwcQprcrnNT814AfcdRjdP+U737p3CoEatzdlV5HFrqd1YcTyOK8/4Rgkk+Jb4H5d88Xa6BG4Bn9272ZrfJSlbj+PLGgGKXSbbyAJp6SkkCBy+QduXFZtPUAMRQg1hoTm09WCUOb9ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx0+JzMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx0+JzMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1344C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764319373;
	bh=Ann99F5SYEDHpEyrq4+EF2X0scx7ZCUxrAFxenQEUYg=;
	h=To:Subject:From:Date:From;
	b=Kx0+JzMF5LCoZ0AgkAPsIF+TW82Roy94FqD8F66yl8+F1mAL9myq3DyIcOtnrfHDf
	 +BPfMxBTITKfB7d3CfVsm02s/ITOhjwPaJdrB7HNTmgu2MwXiHlzZ4exl8anoj3kTl
	 bX2HqWo4eUD3TxDu9SKmiyF2pGbH6EB8o0wMR7cMVFhYyVZDgKJxjpHIOMxYyUfK0b
	 /r0q2VswOGJzBOn9rU/L4JsjC1gbXzf2vpvzZAlmwUNRVuz7KpWjFyfBoPF6FiSiqF
	 kcnIMkpRnzT0LenEuIvl4ZDEYJSHlIDZ57auBcmUuzNEBZMWPenr4oRnIeE/6J+o/Z
	 ZpIJgTx7tqBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90693CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431937358.10388.4677945974860901697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd77f6f6fd2c46447ebb4e8db8f462994ba3a3db60e4b925c26f50ccabb83f43
Date: Fri, 28 Nov 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764319373
