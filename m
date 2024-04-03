Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E561A156890
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712188697; cv=none; b=IXFEuWiA44dnTDM51yII1Y3RzGuJXBMI4lzrO/uP92cHleK0sE1g1VgwvcVxm0snauuqmULSiG3/LlyozKhKBnu+RG6iDsiGQk4DgXOs8xp8cDyIBnTzXeJjItNuY3DWPu3LG1Rz8JB0BKmV0G1vxsHWum811YFqqMTzFQVsbZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712188697; c=relaxed/simple;
	bh=4LoHcrsOc5h0XTWt0pUpCCiIZopjjv1WZ91jX1YkZtg=;
	h=To:Subject:From:Message-Id:Date; b=iLTUf3Nb1n7sJkarD5G30xADgQCfP2nKAfNnT5e+S53dNFfV5dpmprHMAvSnbL7FhKPnkNxm4XktPGC3EBtzpa+GPhFHkHhaKL7qTMe+lTv1nLm8UoxSEW8uxPcVcu0bOAWc4iqqv2Oijy/vSo/n0kxvwjP0oFUXIq9NYQ6y1EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7UA5RJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7UA5RJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761DBC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712188696;
	bh=4LoHcrsOc5h0XTWt0pUpCCiIZopjjv1WZ91jX1YkZtg=;
	h=To:Subject:From:Date:From;
	b=F7UA5RJS2X/63UCbIIfKvs6z7j4c3RtL05TIlsidSWUn1cL48KePVugfXjmHwUPXz
	 +gAelMjMn3EMgPmGSrql976WyALKW4NMvde6GYzDwVlcLrA9N1PNpJMMCffrmnp1fm
	 GjsBgMXrah3gloEX/E21Y3GjYQxT/cmG8rSWWASOkgMR1OGoj25wjlRA0UzF3PqPWt
	 OwuzLzocxgu56Ksx7mCHDiJ9mkjvGhrjVnjF9MsT3rXJSygcCNEWt5qjNYKkym5tXy
	 7hMnDFhzKie2ABlNTTSE8b4gkkAmnYaQ2s81S/FAaZWvGJ2PyJqeXBEOE6+lwjjtNv
	 KZJQ8POMDdtiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663C7CD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171218869640.21583.16341578927262106111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc05c6ce1f599864ba54d81ed392f0e49b7da48a068b31e9a9ae20668b7fa438
Date: Wed, 03 Apr 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712188696
