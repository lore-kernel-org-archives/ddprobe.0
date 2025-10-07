Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFD71F3FE2
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759837194; cv=none; b=Vxx3VNmPpBbfYMmn5y7n439FUewXse1BC80LjQ1gHSsfRz/N+gotyXScVfSMpf1jpsZW9Zs3ArS9RfomCORDp+IuQkfqDe8E31/StGSv6LWTHYjKfY1B6mUKiKnIF22v4DeGB2bj85hwbw93FNVRuTlFRWreIsrmE/6w2S9JJJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759837194; c=relaxed/simple;
	bh=I0cve6b5sakvkQG42LmSCFJ4Z9PxswvnKN87jWFaJmw=;
	h=To:Subject:From:Message-Id:Date; b=aAT7BNKMrpI0Rhzs7UDHtF64mIRRBPsrq6bSlfbTxQlj78tycxeyauYXcFDmfeNPDp3Q85gkndUg826tEzoh3Wlha3J+lRKjZ6MwAyaGIenvQmReUN4/d3vLgL0u4K0oVtpu6kgDvbee5ea7nXVSPaO675X/SdnAUJV4dTehjzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLbyZMyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLbyZMyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBEDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759837193;
	bh=I0cve6b5sakvkQG42LmSCFJ4Z9PxswvnKN87jWFaJmw=;
	h=To:Subject:From:Date:From;
	b=WLbyZMyP644F7giHee6tl5k2i97FzMdJW1pDBNLFo+ERINmjNZAj64ZBgh2102Olu
	 NQ5zoLYOKJFg1Jm6yp9VXFSZZzzgZX8dYvDxAynMS/aETbP89u0GeOoAm6RQWOJ3kP
	 oDNTaZ29Y+NIQibst8XUT4zcwgcmmqr+ruiT7Xo4EwrZuko0Kix238R7cssbGkONgI
	 yC25JSRS7T9oiakuRfGt7qVIkxiB+01KP5uVci2u3vykUBpeJhaN7ezVt5T02pPakI
	 pnEuLm1+LYu9EX8nyW4w4Q5ik9AkzGaiXYLD24Bzxa6xjh86NuwcgtOzqPsXzOI/vE
	 ieAjff7B/3hLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C7CCA472
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983719357.6544.10472621545193494355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ceca6a9af2c648e6d9985ad62622fdfacd92520b57fe0e755c8d5b4cce4defe
Date: Tue, 07 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759837193
