Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1452DC79B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784189314; cv=none; b=gIUbXe4chY7w9m2jldfgtfclztgrt4xyMKlnGR+MTz8Uof9yiQoHkqRLt3MPUUPcDlncZhp7YKTGEbf1uOrJfq5YMitspx6oor2CIWcSrqm7Q+ilnvJV2CEalFVlvwRDUWU8B7zwxplObPFDOOy7+GxV2uVuTODwMToP3BgYkpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784189314; c=relaxed/simple;
	bh=tOwm4i1d+pvZUPAPOSeZGd66nQiaI8wxgK0/xlRpo9s=;
	h=To:Subject:From:Message-Id:Date; b=oXJSqaqWxfxMrnGRwG0V68b9A5OoLfEI1a6zcWXcSMUJ0fHSfVbjvxJpd91uEdgtDmJ2jayy1rlX70MyfsxDfl5leTtg0062i02doLpH1gTQbd6EaJDtfg3gedMyMsY6c6aqnnLtjlXr0iRVIThQBIbTe3Yv2Ll+zuaQTQFFG40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVZZ9i/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVZZ9i/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A70C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784189313;
	bh=tOwm4i1d+pvZUPAPOSeZGd66nQiaI8wxgK0/xlRpo9s=;
	h=To:Subject:From:Date:From;
	b=XVZZ9i/3px5eUy/mvLa0NPflOVzarQ0Fm8bEkaSxYAYfCkIF3TnL9sqR6Kx3Ldm/P
	 Wk+ODD9N9rUCTlds8+wpL3XwmRZ+k56WZbF+gMFJgAwR/mpFmBiFctY7bmiAl1Fs/v
	 T8qKRaPxoh2HhhOqN8OwzJKi1v2ZAD3fADh/NOdbyxyjC25+LuVlSxOe1Tsk0efVik
	 bXI2jzqZNglLD8fA2ZSJo9zapHT4FnSFi85BtLMTFGl/aMEE/cJsQCcdTSZFM3Ou2h
	 /Sm5ADnAAmFGAPqRt9f2cuJGSsUgJz/NqC5JKNyJwVbHqq4S2Oe7kHKRx8nYugD2SK
	 Wukp6kkb893dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF1AC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418931369.20375.6457084329888044623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddeda97197c02c1f1c2edb93630c597c6a21bf1b2332c1215ee1f9fcfb8eb747
Date: Thu, 16 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784189313
