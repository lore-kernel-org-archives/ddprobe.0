Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63914A32
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768090433; cv=none; b=bJaltsQYizWnQ2OJ2b7bSmwhLoyaNR+lwM5qtl38aDXf+It6yfwKBmqnACtBIdKQZ74PrKMwUnv+vI6XWwQT5A/FHMZTg/r7QL+ABTYhJNBpPsawupuCts5QcEiY7/b8klx26ae5I5yTiy52yIO7IWKSy2ZA73k3MEs2QDzJNL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768090433; c=relaxed/simple;
	bh=ObA9Xkxf1uAoH/qkFzGttRspPylNUKLB83rLNAoBO/Y=;
	h=To:Subject:From:Message-Id:Date; b=O6pBZxsYvppm/fpsTIaLL/7jcNgEdr5Xy6+gxXE/1fAtAOl8Vw63UJSd2k1DR5mzXDwK/HsENKLV38BwpQQ+//fyxk0jgrW/tDNv9e9NnJyEpB3NGRHNWTL13wRdAcYVxqI5OKhFA1q06FyrJvZ52wBTYtCsmNFbF/xh2XZK10M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhK4pbI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhK4pbI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0C4C116C6
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768090433;
	bh=ObA9Xkxf1uAoH/qkFzGttRspPylNUKLB83rLNAoBO/Y=;
	h=To:Subject:From:Date:From;
	b=mhK4pbI0p99LNaIL+nKu+3yra2IIjJikTAqOlQR92WKIDu/o8n+gUvAxyI3tcpDv4
	 0xG/fVzTPiq6oe7zpk7Y+OMJhzSyhNjAd2jOlsh/1K0OyfYCzoglDALrZtWTPl1Pd7
	 j2FLbNJYRW79Kz/WaLiHTzvL40K4sKC/yq2mDbvQYTZKT1qouQBEPSDM2Kp43sYnT3
	 fPm05AEhp9N+z6eyz0SJBlnM80e3Un+fik1wToxbBQ5SLTlqH5KK8+JqwNmVoTuF1+
	 qRcJ8fQKr5c6QumXd46vyvoRTKqD2sERDljvSNckOms6WoqfDdP80euvh9gKq27zzr
	 cPd/c9ULMGd+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED28D2502A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809043357.21252.11696381721119950640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c282dd9d2401bbb3df14984dd4640851b0e1c6f7bcf4b8556dab56a65a00632
Date: Sun, 11 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768090433
