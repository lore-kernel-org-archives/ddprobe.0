Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68DB29408
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769981633; cv=none; b=ZOnoJhP/In5/2oIeLh+hNcogkwNAw36nf9Nj8dHV38Wpgez6pMGB8KDwzo9xl1uhEcfgMgVgYM877OwbPRggm9ZRDN2gJtfl8J1uhWk9AB/KGKNeYyy8iSLHXaL8fQvE5Fs+B75IXvKIN4aiBZqN9VRbmF7yP80LVDK69gDoJBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769981633; c=relaxed/simple;
	bh=iWauTM59x4UEZfRzF7fQKoKxTH91wjdy8AxqgiVfT8E=;
	h=To:Subject:From:Message-Id:Date; b=mell8ipkbxkKNCCL21VUksEiHlcnlGpfp8vLgn0sqo6K4PP2wwKt849JsfP2icneL6go16ZKA6YQEbIsCTAw1mZX4SJuDXd4MNO9ThIFlcY9xfNT8siaeR4F8gF3RE3Vza50giDYmhNlqan2U7hq/FRuoYB7ExMwC04IOP28ZhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjSV0Xnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjSV0Xnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B2BC116D0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769981633;
	bh=iWauTM59x4UEZfRzF7fQKoKxTH91wjdy8AxqgiVfT8E=;
	h=To:Subject:From:Date:From;
	b=JjSV0XnqlOTRZCdv0O0bqv7KxD0wpLa0FCFGTpyRouEXItymjywjoMl+gn62PdJmS
	 71NEs4ARLjeFIRGvPujVfa18yQ7P2oPo4vkIB91im/4D77uX7q8hqpABnxisq2bSCN
	 GWeQJU1wWj7ukh3uRDvjCf4mpTudYdMY2OOXMzSJKoTI4tMtgW1vIujt6mmkno62Gd
	 D9qp+A8gS3fegnsXh28RPxwx+8LeIQD0v4yt1z0lzi1tsc7K8rEvbYbbD1/VZIs97y
	 V9ledQITJLV8xphIEZXzGKooV3E7YTQICLnerV5O97d6LJ7jTa17nQvso5uVbyPL7f
	 kEWliZ9HSIgYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8F3E6526B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998163360.32503.6057272631695641552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ce3266aa68f2695ed3b7ca9535600c77568698eedd1b193905bcb0e445d367
Date: Sun, 01 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769981633
