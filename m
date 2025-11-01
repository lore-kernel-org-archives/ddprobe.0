Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A1C2877CB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761977394; cv=none; b=uWLUHZD33Vku4KNTx5ekFw+1OPW1MByfc5H5wbst+tJJNApgsl1wyK2MlJ+07nQkT1FSyhpl/H7fxooPRTHCbHuXwl4pFY9nEGWp8Pjoo6TPjjU03xQnAYvwLKas4Pd2akeV3Crt06hy58KdbPKmMm7CeZrnU7Lnd/DJj9j8eao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761977394; c=relaxed/simple;
	bh=DtmtO1+m2NxTiCMrl+jAHK0ArFAdBKUU2CJT2bGnNyo=;
	h=To:Subject:From:Message-Id:Date; b=KW6mfVlIqx3S2BP9UG/LBRfuEohSkvmAzhcqH9wa/UnaGnSVj711BvIPCePGOFoCwlu/lTiwYqZ10QfZ5Eft1A7WU4DhH46a0L4dhR0FAvLPuOXoe3eZs4vqfZUET7WaOo8kKYMhAoOqDs9q9WTHwsfXDEDfg5t0XiUvGcETcso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJxcgm87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJxcgm87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D6EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761977393;
	bh=DtmtO1+m2NxTiCMrl+jAHK0ArFAdBKUU2CJT2bGnNyo=;
	h=To:Subject:From:Date:From;
	b=LJxcgm87dL0gR4ISv4ma5UIFL3QnX237UjXvhz5SZsstC9SHSxtNSv1fUzi5ThVLd
	 iA4CyWtOehz9sVf9piOKnEVkGODV787O0qdscZuBgdTrpnuCnr6VBGKlyKoEKvJKJx
	 2nems2F7657L4omjpZDd337wMXdGmFhIIcSp93GEQ+/KFSwj76HYNssOAShmE8Rq4o
	 IPOHZM8/MR6HhiWxjN26Ra8kdy+SOyKCDdZStbf2Yq0HcIftik0xEyHM2w/tORmmxU
	 ZXmJDgwEhxi6JcjlZTE+fW9Fxr3t1wz2CxPFC4iShJ9pUmR7mKJb+6qihk8xVOhKhA
	 G3lGdPbQY6VkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD2CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197739358.26144.4771114048406682977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a68e064afc466879eaa15109115dab94219a01ed2436f0c8d12b4cdf610c0d0
Date: Sat, 01 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761977393
