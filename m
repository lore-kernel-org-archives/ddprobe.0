Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEAE647
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736228154; cv=none; b=CiSMoQjEHCdFcNo7j6suItiyTKcWGHRHRxndh3FWjQnVPRNR+IOGopmWl1jwWGRVzPWm5+JKQT8AyUvpOJn37mglmREPpkm0NbWZ893u9FcThbNk60bElalAcn8q0ZyTt0DpaXy1Ijtd3O5HeYpofeikSgtzD1ObQVzQJ254M1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736228154; c=relaxed/simple;
	bh=GYJvjFhw7Q2KlOjfDvgrs9E4APr7JC9PPAp5ZsKOqWA=;
	h=To:Subject:From:Message-Id:Date; b=OYS6tvsxVM6o3Yn8FSO8gaTlQP1EIlNeUubGCBZ6d+xcqNzCHk0Ft9uWr/FY4mH5JPzaOKi2TyR4rYwiMdMbqZYOPJynxa2utFxGl7QsgV4NMWgC1jGv6ckxCFQeAKUwmo+sWtGCVZ+ntUiG2gL4FpEtB+cKJlNhyNcrgQffOFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWIJJGMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWIJJGMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CA2C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736228153;
	bh=GYJvjFhw7Q2KlOjfDvgrs9E4APr7JC9PPAp5ZsKOqWA=;
	h=To:Subject:From:Date:From;
	b=qWIJJGMCs2pN7G6d9mPfOUEaXuBgqRdGrN0Mfd+mAKIyAu0hxPt17WindMxq0HVGO
	 GnU8CsYv/kxTKSrlsEVXbsSG6JTcA7rrkQwRkofPyiAX4EUVF4TTcg+E96Dro7mDrc
	 i6It6MSrd+DcVbXxIfa3JofYIalrTLLDXb64Dbg4IIAuUZoZK0O8oAF+FJz7EfyFE5
	 hCdhSNRXe5qD385fj039fRl8G72E65NoKvYosYKXUxUvHKtq0RAUHFn22bWH9+XJGk
	 nCxoq5IZtCESzQLbbbZHNslsTUPVALkiJ1bgDSJHtpVdWhyy7kih1wjuTAQGqj47uE
	 5dy8ZZB6LwuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FABE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622815358.10084.7704160152556691535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d29388b6e4081d7bc46a8b7bc53f917d85bbfdae48d2d5754d09d0d66d45aea
Date: Tue, 07 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736228153
