Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFCD13A3F7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768801434; cv=none; b=hkiCtUqeVQQaHzlxBdM3S+daY5qJe5mbW+pnd16lU8osmKXN4c3E73QelD6nS9Khoaz4S9On9O8ZZs8ijn7AzOltS8xYcefiCxmxx9LW2b7fD7rKc/xeH9Ph087pBxMlr7mDNqEMNUQgiPFasKfccdPUMY5apHLD7SJXzDMS7zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768801434; c=relaxed/simple;
	bh=QaBE52u/S44ZCvE/UJXvfTEJStJdPEswH4VLaAVYh2U=;
	h=To:Subject:From:Message-Id:Date; b=pSt2XJCrrw+hWKhn0xIPPjMXrwS0tTAUuXUS7c/mM4n9wIQjedsf79qCeoFxA/2cadOI5xLzZzbqYqjB/87dBNWyffjbe4EgbaeH/bgVa9PPs2rT2rN0176ntDpi6p65b5dTxyCGutorNSEL21RBHUBNOkNleShrKPPecoUtgJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwvjG2ZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwvjG2ZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396FC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768801433;
	bh=QaBE52u/S44ZCvE/UJXvfTEJStJdPEswH4VLaAVYh2U=;
	h=To:Subject:From:Date:From;
	b=SwvjG2ZMT2+OKtgL39WvQiKOTpsVz7gjaiT72UOJHWUlS03uSzqz98fr94lYfpH/D
	 75ZikcLo9oSrXy/2BAA40hOU6C83qbkNwT08+uMTaFYFfGQF4MesiVAEdnoxCsQDkb
	 SFuhz5I93vMnT1E1zA773GbKenz+qST1APLJ1YMSeVXZbJtdB/n0x7BOZroAomX6y3
	 Hc+FhZ4BZyiVBYkpaPnAtlTI+D1qJFNHnE6VCBtPW2g1ROFyPbgSonTvpk5Ag4L+/l
	 4kv1sXHj1SmmgiOyILHsf/Zcp+ORM8zvKysH5QQEIvKoNE9LXLXT7+gHYLg/J0bATm
	 ZvmIyylr0HzAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBCC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880143358.30220.15298118931932119812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c9ab475732e99887735957698edfc4bfaf4ecb051ce1eadc3c7d28ce567c21
Date: Mon, 19 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768801433
