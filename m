Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917BD39B942
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778623834; cv=none; b=FJZO3DpQwKyNMNF1Se2wzpwrZws7wac5AUcbErGQVNTtHo/BPrhHYcTmj3owuzhmUlPynYh96CJw2wuOOU0b1Wp8LQtYlIHId9c64c6/LPtmncz/hLoNmzwnFNFBOScMnV6B4Sr9wTHSMc79+ehwVuK6a8tujywhnGVGQrdzU4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778623834; c=relaxed/simple;
	bh=Ad56UzvzM/jbNeP+KH3lAnXmwMOS0S6UfnWWx9Dpikc=;
	h=To:Subject:From:Message-Id:Date; b=IQZDgwg3wpYjo01T6V75ejHa2PgoDTVgHnhVjHHLB5rmtZpCcrBT7S1QSbourQDdvQuMrd1jY6/Pu9R8ZWGXhNpH0M2UOoIpSQ4y0kTEU7whEWYWVYAddPJMrLaAtoXBXIord/rzVqZrL+1Rtqnz1B4q7LLsGNkXWofiK/GkyH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bILicQe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bILicQe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF25C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778623833;
	bh=Ad56UzvzM/jbNeP+KH3lAnXmwMOS0S6UfnWWx9Dpikc=;
	h=To:Subject:From:Date:From;
	b=bILicQe3ym5X+Qy5Md+Smg9ABglmNtyqKq95ppRPZU3LMc/YQkhMmswWxM49FafVk
	 2psBWJIwew0zTocOHjybEfL18h/CAsmhIXYRn2h9NbmD9YT13HNoDKoVdIvVGG2JZK
	 aZk7/7hIlcCD0GL5YApDa1qjLGszc/a3wee8IalFCJvqZjGzwp1abof/DNlp+FNreg
	 svE+q+XduZRH5CQ8hAoS3UatV+oF7+o9YCNy0YtLs6H+iUQBIttF8p0fR9/G1huyFA
	 smVtetsaYZFySxIbgzH1U2ilgGBgkf/1sQ9TsfkHEm85r5lCn8iFPCDD72OEXlDzp8
	 eO1vQtjOefq/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9631CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862383368.16939.7659900177422652266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb12ec9a2e916d24ac7cc9cb2d5939cf7fa58f17c1f2a4b83cdcdf9f5484693
Date: Tue, 12 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778623833
