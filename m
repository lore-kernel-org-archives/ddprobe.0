Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AD419D07E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790220634; cv=none; b=IK8seYwJhOMkf2ot84ppADqNuob/xQ6B/EXiwsw1XXSH0tNginuEoTj4kKAMqbLe4sJNcGcsvg+v8iibFKN8gt5d/d0WbdNgUPmSrG5OT0/UjqefPIrHKh4/RmcMhrCXKv+M6ft8oHwf1hYbbeoD0ltRgy2T38mTQtBKXFf0H4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790220634; c=relaxed/simple;
	bh=Q5G/8w796cuWb5POXNh3l0XkUzf5+E/hWCqM+G+rp18=;
	h=To:Subject:From:Message-Id:Date; b=d6NA5Vj2EOdHKV5OJa9hjGSg40PuBCC0BpyjZGy4q+JgMX85n+m569jiG/a3ur+NCo6pZXeihpsEvpHEi/1VCacSIPgqfGH7yyDLQNDLQyEYk908AIcK6NN4tsHEDDR78WwjDTpOeFFN1Pj953Zzd3Ctl2g1BLt66WFDI8FHofE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwI92zsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwI92zsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D392DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790220633;
	bh=Q5G/8w796cuWb5POXNh3l0XkUzf5+E/hWCqM+G+rp18=;
	h=To:Subject:From:Date:From;
	b=LwI92zsmEhzq627IPBD0wEQAkG//348t9NLXQyw/8bOvwwm5UOjRpWhYBoJ7+WS5K
	 Qrx4B5GPCg9rjY3hUC3GC4XtbiZ92+jNsD8hl7BlMuAIvReHsoSvNK9VxOe+RBvwH8
	 lyEWD+k7F0pHoVTimzhIyf52WJdl16Y/t2Kxdc814pSFuTEeIGG7hsLLrBW/EnhPkZ
	 xFcrFZeu+EhtsAJBmBUNmckvGcVLSTdiGKxyHRpkEaXDizp9yuUTADpNMZWW5hWDz6
	 MfxrD0QAggngQvumhkqLE7+BCsqVnPtEs55Wbl4iujBoiLlUXNj7UGYQtREbQp3RiL
	 NRb+qSgZjxy7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8E6C98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022063370.2431.14439454720155878247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64b28410301569906f21aded52e71d5b4eb4ef9f84ec8c9f25421c4ccd03dcf
Date: Thu, 24 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790220633
