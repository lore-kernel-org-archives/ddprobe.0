Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C843A7849
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787307635; cv=none; b=bPcWNsRYMSEtTJevFcsuWScEEOf/DWJDZ13vqQMXlfiB+nqmwjCT66+2dbhhWXc9xtds1UH4X9HPcjaIwGcEZK00eCyDT3RsqcD1b7KxrYycU4x5g/A64ztsd+RyWYHutqBPuCLqvTO4ujD2aT6bj/ynu7x/4wzUAn2h/LtNbJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787307635; c=relaxed/simple;
	bh=8HG/gddJax68o38tlkTdrg/REqtPtC2GJNqvE+wu6ww=;
	h=To:Subject:From:Message-Id:Date; b=OP0wUiBR80FLb1xKLwnn98HOHDYE+LBwTDQfAOd9NtdkKMmrUP3CbFmZy6uHdGk+OQTfiaYQsHqEMp7RofiQh4IIhJoIeHeDQ5mggI3kKNWgfxY5th2vSF6wwa5LWx2B1KDAEcozxwHlKeiuKhDFTdohbT8/8+EsFtphl8M0jCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZzKS9hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZzKS9hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE081C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787307633;
	bh=8HG/gddJax68o38tlkTdrg/REqtPtC2GJNqvE+wu6ww=;
	h=To:Subject:From:Date:From;
	b=iZzKS9hpOez8zWjbfmUdFdTsPwN7NZ/LCI4ivXE1AZjCEoyv7TNYJxY6tbdWjPxnZ
	 v2r6SJxBBJJzXlB4I8E5Xmx9ET6hpMJwyuE4J788XPUcVb/yOhWtunJcwGwOyN8uFr
	 L1WVOs9WKPPmT34APn5GmE0wN+0jCOzh+89hYlN14WiAodkna+quPWkKnH5nr0N3GY
	 1O9U0blM3QZhjmkooTMTqEQ5zIqV7G4hbtSEo2Rh5sRWKom6JdyCy2XGHPvCTJYUxw
	 jigbNslcecjsdyK8ENLL5OyUHHWAt7nMQzFz9r9FwcIkAkyzf46wIwEF3/i0fcpgZM
	 xqqXekwX7ZvpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AEEC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730763373.29089.14986968684813217984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02286e9b84f0a1bcf14300147c66363db4daa30e07ee3ddce622607bacd51a92
Date: Fri, 21 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787307633
