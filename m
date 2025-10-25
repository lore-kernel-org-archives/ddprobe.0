Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9B02FCC01
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761400794; cv=none; b=WwvV6r3Uw/FrdNG/cprYM9VMUpMm4WrmQIGpfggbsCuSafiIgynq7lok/WCVaFRSDDyxCDQGv2S9p56ni5vUGX7Fg8AIsmM9xsaeRFKrk0orI8dGy1P8eLvn/xUUGaR37oksSeNmD4sYkHzX9yxBU31VtncTT5BM4Yr5WiYkh70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761400794; c=relaxed/simple;
	bh=M54qC/ilSrSm8sN+4AfA3b/jVyyxGcfKYHCqeTgkk1k=;
	h=To:Subject:From:Message-Id:Date; b=UlQSTSc6zcueWtZme/Mhdc0oZunePKa84JqxgHIyu8laodHBYolEb0idL37u64qj5DwOC8TLURI0U6QWtAUhy57W93e33K6Sj+qNDDA9mZ2nA6arXk+xHObDPSdd4X7UTFoBQxd2Ia5ZHOJG56UkElpZCsCHg296eqbbdIlwScg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMO/tuPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMO/tuPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A337DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761400793;
	bh=M54qC/ilSrSm8sN+4AfA3b/jVyyxGcfKYHCqeTgkk1k=;
	h=To:Subject:From:Date:From;
	b=VMO/tuPi7eA+XBWITrdPLJnq1ShPGZbNy9U70jpBuPL8DupqFQV3I/Xg3Sfsd3yIB
	 Ft9dXxnyiBQf9+fKOcHHfK81utRivt9dhzc3GkKV2qZw5usOruGWFCrXweTSxv9Dbc
	 hGje71HHVbWKzR6KCQaPvrW2cOJp9z9o/kO0q6RiaCrouW4rV7kA41DpV8SQttPexA
	 J0GNn4rMf+Ox2lz0FX4nRy2D07TFAxEY8XXmJDvYxY+uHEznAX0poCkdZS5ws0neI5
	 LVD4pcQiEDc3802uLugrlylTtshe2Bk4JlPYSHwPXQJM4npyeraF38c80Yi2kmmCOt
	 pNztfByNpogxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B74CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140079357.25462.6361124045328934179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4dbcd6d7c9c0758790df2be2833d767f453680348d0e7fdf0bdb610f5aa9735
Date: Sat, 25 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761400793
