Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1C11A08A4
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754315395; cv=none; b=DCSjyM7t53iIdJ92EnjJNcP00UY+GK0VwFmaIoDl8zUJt4LTvOzSUl5WvChlQyo2QUTvCC1d9kuNjsCdZaVXkdEXj/2Nf6yvntUoB+s4s/+Am1Tb9XxoXXlOxr+Cupiu+6hHjX1tOPPQXjGjAW3ZSilwfHpAlkrGgvvRTukBtPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754315395; c=relaxed/simple;
	bh=9H6/LpF6hYmFngFR6KJMSNscaAKosnX9K4NyXrqHXNw=;
	h=To:Subject:From:Message-Id:Date; b=WlsLHuHj38kh9IjIyrnwim9f+gE55126vgfwbrlElrgMBdCW5232K5J5pcLMP0+ldvwOOTOqdWJ7plUFAQHVutlH8s1c1ZGJzti9ZFsedOoV9DBJ7dOV6VLA0NvzX06PE6j2rhO1irBm+zLv8fn/y1qwhbiJcEbKY7uz956Cf0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgiD0Xor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgiD0Xor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AD9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754315393;
	bh=9H6/LpF6hYmFngFR6KJMSNscaAKosnX9K4NyXrqHXNw=;
	h=To:Subject:From:Date:From;
	b=WgiD0XoroGibUYRFnd6fE4MYWtx0M75lO94hMP4CURC6OAD2SjsTL19pDm15+/FpN
	 uZICi2aHz3qP7QmprQ7hIPwQ5kH4s4y6TlMJ4OHy+32qOZ/bgatfuyN0amWsYWpw8U
	 2p7orjO5pv6gVDvGUxWj2Pm985cgg0xW6s2sWuWdtEhmcAKcGVHg0lH2OXdMlzekVG
	 6t/P9+swY+3Y7IN8Fpy/YuBFHQvtNyCwwX2fwyzOrJAnJ8D6cqIBkwNj9KuNejq7wZ
	 HPh0XhbgL5prxoNhuVeFdfeYkeMVW7stNzg0Y+E49W003UhouoPIjA2kysUymyoNCe
	 7ArPl7ITPU3Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034EC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431539357.3684.11644689614755842438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39c5ace5d93b2c2979ca91186eb4d55fd322d759f7e410384758e1d01616b60
Date: Mon, 04 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754315393
