Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433384414
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748138994; cv=none; b=npCFD/bncWneYXO0lRbEh5uRDwCc0osdlQIo+ksNH1VldQLtiixmyDPs1WfMklzFJ7Hz6UpXKZNtcREKkcQ1C8NJWjIYFPNzt9G8BAveaAF3P8pGZewcavowvP2LMgNz3bxcc4ppLuI67XDL/WTmIn5VTdS5TIzD3qZ14DXzmD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748138994; c=relaxed/simple;
	bh=kKvMQ1wMVsReq1VGlE0UaO4uZfSfmQOrIxoSSzR+29E=;
	h=To:Subject:From:Message-Id:Date; b=IFDJO3gjcfROHPw17y1C4BvQ500zV4Xzy0a3smA4tvCWpuvu4bcJp7VULqwNw9iYe97cpLk6Yd3rcfjysbUt/kbQ5FetMyC7pg4Zh1Y6cLwmUTRev7Zy/NjQhELk3ih+yhkKE9M2/JZfIG2hkXatOlsKxK1AYEs9y0nv4xLI2+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDNfq7fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDNfq7fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA945C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748138993;
	bh=kKvMQ1wMVsReq1VGlE0UaO4uZfSfmQOrIxoSSzR+29E=;
	h=To:Subject:From:Date:From;
	b=NDNfq7fay8H9rNHh63V7ZZ3DBSOC19maILPtGrHteKD0bZek/fmWqLz0u60QG/rGw
	 spdMMIHjkqOal6RQYOFSMHl2c7NQqzaZMjusKeWhPhqEUIVLCcKAHCzN9VYaObtUeR
	 IZgdFxiAPMNNUj9O5ZAGHuXyY+HMCXey1J4y2iSajxG4ySCYR7apmyUn5VLS7WdZJK
	 Ej25mCjo+N6DqilRUBm6ICGbPr48LaNqYZ7rATQjQLkdTSt4znS16rDKLzC4V+G/v8
	 OXsA6pPOd9lb2AkUjyyRVJ3IhYM6zmobsQTz9jLIA0yaaZjCZOLuzu/f+KnCrXqfbd
	 by9VqsKvkAxoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9744EC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813899358.19993.3341188230013123058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ece1fcb147e6b21a4a0d880f7a6282b085715cc08b7c16aea51803e9ed761b3
Date: Sun, 25 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748138993
