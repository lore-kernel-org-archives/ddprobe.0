Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5002DC789
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791781834; cv=none; b=TdoGkf/Wofgwgi0+2oAGTCTUzEXW3P7uzoCe+f4i98IYNwxMWxhV+iEC/+6QQh81Sagg05lVO465W8X3kpQB6BfoJ30jOmcYoF6GyoLnvvJ5mJmXZhPdLG7ROcZO9e9d4y+kMP37AjHqVxmdhdG89QzcC610ZcKBkuYRrdm0dzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791781834; c=relaxed/simple;
	bh=pfBzf/6ykgP0nRqNof+86DldHlTJJUYbNo4fLDQEvCA=;
	h=To:Subject:From:Message-Id:Date; b=UaHTS5N9DgzNnHmBzuFLux46rmEgKJWSCkS/v1bs5Iey75hVgaI43IO9itzmMEc8EbTtk+QqYh9qc2h+rnUbz7zztB+lvFPgM2f4a9L9IMVXL0MrRzaFa7ESVrHrNr3AThh9bbbysOw1GUhlVGsuJWSKCRFLGZyk53Z+pNtgaHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPdB9Scw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPdB9Scw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4588C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791781833;
	bh=pfBzf/6ykgP0nRqNof+86DldHlTJJUYbNo4fLDQEvCA=;
	h=To:Subject:From:Date:From;
	b=jPdB9ScwcsJkWv2/vk4mu7PV9WfD92YglvEuwMJsmoTDEMJoZMPBFU1bf4onCgn17
	 iKMpYK/9+a9pJNbZKvMz1SnoAIRr2EFoCQ3ixObB+ZGNBbwedL1JHiEJy3w3ZluPQx
	 k/X5he6pWecBbJ2H23iC5Hp5llrOediTpj5i/HVOBtpMHK49UCx4gQIOd+C+G7d42y
	 fo+MXLU68HKEva5iOCh/caUfg8L5LWdy3Loh1+IxxvhHKMbOSfm77RZF5hBtr5WOkz
	 pVfraspobFLojDbiS7eRNjpEp1wK2kkyvi0MFb7/ZrPhFnvjZ74DP3AwJ+R0acbLDU
	 Do5QGhbU5rqMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B047BCA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178183369.29662.7525161448466049856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e338fd9ce0bacdbf76d470cbcc64c1e6a1d33cf10fdc2a1d874366399f2ba47b
Date: Mon, 12 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791781833
