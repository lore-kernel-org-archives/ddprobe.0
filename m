Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2991118C933
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753046394; cv=none; b=A9+ZBUFbP7yKk0801VNKo0LJhwYT1mYY2tThA5vaEgqw27F1aZC95MQIBqO3tEvlo58wl8d/UiAp8OmErf7xD5PTXJzG6+eD0PyFJ6K4aftXTFdF9EVi7RxELSoQoFayUfsq3hovHbzjwq1zVtjJeE8vpaFetxIabIKD1DFioF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753046394; c=relaxed/simple;
	bh=ks5zcd1RLGR4mqmGjjbnJ3F/47J5x7DBix61boUxXW4=;
	h=To:Subject:From:Message-Id:Date; b=syNMN/uo5BTmgchyby0gq25GU7qM+RHGjLtKGpOWcuMNAp+FM8CH0fumz59zhRLXaiZFWbn1gabQjvkpAVB+0lzJ7jCFRGsc+DAk453nR/ZRrlfIDolsw8kUC+OwnT3xgxfS5eVTBwWw1THmwH+TWYTngc/qurfjZUeqZiUil18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaWsowjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaWsowjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B5FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753046393;
	bh=ks5zcd1RLGR4mqmGjjbnJ3F/47J5x7DBix61boUxXW4=;
	h=To:Subject:From:Date:From;
	b=WaWsowjjzUE3p7FZVtxLnonBXHjcmgWoOxDeLxmYM34XBEak2h/C37jCtC5QExZ0w
	 EC/HJcISIlyyOKiXmFsJVQCe4yMZRji06eDRNx1rHrn6KR8VUX6PcbYoe0EfNyZ5jK
	 WfQCOK7H0dz5KhrnSYTv6bqBe5XrVWjqD57VcvOZFhG6/Cw2wWWFMCb2TdgN2GB4u7
	 Frd/vaq64UwxTXrcQap90+n9Mcv+c4+x2cWWjXv60w1pCx/CjvXJq0idP1AjXNyrkh
	 cyT0MKWGG330t9NuchRzVasd6tTHBPVARbc6aeIETDyLNHzKFi9FzrCiNU6zjPX7r7
	 f1JpChZ2jjCiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B9C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304639358.7465.5271606419306431937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f61a6b10b2bebd659726bd727b2ee91beae7d4abfc488ce9ab1e68e28a54f6e
Date: Sun, 20 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753046393
