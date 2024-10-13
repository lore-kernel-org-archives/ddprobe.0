Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB9C231CAE
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728858954; cv=none; b=L+BFLVUi/f6NO/3JlPKnjUM0xwJe0PYnjxh4n2TgLVyhBcS1zF+0CPOMRUu0iL4CwAeOz9EJe2+cSi1rknUwdJy0bqpNh7tiE6/pWBk5JUuH47+/uG2ptTPb7WEPHGD+XZjU2oGtXHt66Sx91z0bKyLsAhtZKWA/T/3GR76r+3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728858954; c=relaxed/simple;
	bh=tAcl25WkPW9TtIedPxD6tPvZl5INXi9ghZRGT8rl95I=;
	h=To:Subject:From:Message-Id:Date; b=KV14oX3QtxcmVR2LZoPY2LOHMfioGX0PmT/9+Tvi4urBxb2CsTphc1hM8tdtd2/71SiJ/I4fFhb4w2gQNeW4grCFxt/O7GWwp7Vm9UlK4zoVYBXzny8oPU5VjpK88L3wSORg7JjRHxbaiZnf0aeDFA+nLzaHIy6tMWh/fka/TG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNPW6lu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNPW6lu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2ABFC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728858953;
	bh=tAcl25WkPW9TtIedPxD6tPvZl5INXi9ghZRGT8rl95I=;
	h=To:Subject:From:Date:From;
	b=cNPW6lu+w8AiMeiH1Bn0i/XaTa1nKAbCZYQw/rtpBJDiBd1ntLdvRfb5RjncwMEyz
	 12+iHogOzqoicwKDS9Mdeqpqj/xfZFmxIKTI8xaLoCWIPOKJ03cINICfhS/ofMtksO
	 2XHZludDt3IIFVH03jKtc/YSKTPRfhrrl2F1qVNaL3fO4S+ITdY4LN64t50/7JRzOq
	 AyY98LpeQNfCh+X14AYJlFjmgs71m1p3ggHabfQ+9lNyDwsgDRl6FNM7fjRHb5SAo8
	 Em6YTOiSaAJLOtyRd+jpdyGmZfcf3iwi3ddtaD5OLP1dMoNGSuHML900GVjU9YMLBB
	 meomB40ANLZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D55CF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885895362.4124.12274988274746270330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0763a612dbd71667fc3ad6c8deccd403be0832e88e4905ab73b0312434fc16a
Date: Sun, 13 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728858953
