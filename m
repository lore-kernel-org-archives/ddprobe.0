Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422F12AE8D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756099795; cv=none; b=h4iw2eVZ1GhEcw3qlLVvmak9/rm14dpsjBDwgICH6L4idHszfQT2OgvowWDOv2yeaFAZwqSQeXj9gwXHOl4JqKJPZYyE7QJoSIGiD6YsGqPdK0FdTyYYq72Cc1X65CTrkxey1+sjXg1H7X/5VBwy3oJeoEPqXKfsvdzet8QBuFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756099795; c=relaxed/simple;
	bh=eKoFn229mtFfr9GKgFa6aAWbEPi4Z6wOvusm+0gFMaE=;
	h=To:Subject:From:Message-Id:Date; b=DaksXgyVlNps2KRz8G5W9c90AgScvFJyOr+F3XE0d4UvuekXKDrSTCbWmr8kdElq19D6GoVMrOKdG+27805i6IginKhgYWs3mH5mPdQG90hJyYlAZtv4KVye+GFKxCmmn5Oy9ijK7Hd3u0NLw/ZOP+4C7V2Oum/rA4lyBlr+ua0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlTIPqhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlTIPqhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C78C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756099793;
	bh=eKoFn229mtFfr9GKgFa6aAWbEPi4Z6wOvusm+0gFMaE=;
	h=To:Subject:From:Date:From;
	b=UlTIPqhsWW8WR4YxM2unOLLbuRmB+glWxgyhzxA5StlwW9IKL0Lh9TR+iXa5dcmrQ
	 vJP3bM4F9eAT2hntNn1UWVO+k8tJZfk10xTRzFS2lBRjguIAOiSpCHxtFNzrcYovYS
	 1Wycb7rGnXTLNwfr6I75zDYtrivLTEcroMEjk8TJCFXctONmVwQmyzSoTb8+jxt49a
	 tW5kV0oK5alhxV5Bk0URAjJu/bVCFQ2uSgWYTX8dq26toCklWGuiBWS7JvnQ71pDJm
	 zDM16fZJZG9matS3SnX1y6Dna43S0pDSv/HkPqrshRtkJVlqeDeRuhvAXN1xa6AfCc
	 RkvcVE7qgQX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F0CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609979357.2966.13962257120134992969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad754c4bd83e82d26d4b1c5015ab5145e92045ceb2c17bd28a172f1b0b6aa86
Date: Mon, 25 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756099793
