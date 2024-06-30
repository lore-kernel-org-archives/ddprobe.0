Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3DE153BE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719773063; cv=none; b=IcU2NKp6V9eejhbwN1y4vLZrFLGJoPsfhGUzmOqDMFV99niSYiWt8Z718xgM6z+7AHuaSoGqu7R7HAWN3G90iE1F6C72pBz1/v3qpIwLRLv12+lXvxioHp9GmJ52akMg5ASBkH0NrPuv7ay7roTNZch1uGlMA3OF2UpHKO9OaaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719773063; c=relaxed/simple;
	bh=wlKqALuCMgDDvOyrwT4zS7V8Yw6DIGWBFNG5SubIAGE=;
	h=To:Subject:From:Message-Id:Date; b=u8QImJrFZ/R/jo3hkXL18w62N+8RapisP3q4AIR7vSZ/5FCPtuAMoapokVTlogbqqjtNzk3I/yKUnEtHmXG3Hzs0CbQ0/cmL01GnaJLebzyY4BVmD3p/wxe1Csf95O1UTgoOc/M44vVvtt70rpN8DR0plHknjrmT6IClpasTr38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqBez8SH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqBez8SH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E3DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719773062;
	bh=wlKqALuCMgDDvOyrwT4zS7V8Yw6DIGWBFNG5SubIAGE=;
	h=To:Subject:From:Date:From;
	b=QqBez8SHYwo9wkCIAWdry2RxVBKHgYSAHvmk7irTNiOOdPIPjtQ3SxxkaOhbw3IJX
	 68CWDlkuXXPqFHcg1F9rQEw+WEoZOwDaIhqz4YTPeaOF/sxBT1+O9sdQEEcTBNjbMZ
	 f9X/Z4XS/051lRbRMKR9vcF/3pSJ8J3InsZPPh4+SR/p04KscSQUqxDe2Cb+L76/NQ
	 1AiZejCJB5wE+GTwpem7qvfgE/EPmOFAmO3fWj2bUZ2JmeBdQP5THcizIUDODChZED
	 WjO3KT00PDb8Wke2ejl4+gp3y+xpDRCUhhRxMTceCtjXbvo5QNeg6fE1F1ELtnQbH8
	 ovHX18V33X87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB46EC3064D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977306275.13086.3515015524938716161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b822fe0902058fef2804c79b5c90e459dc2fc4ee16dbde2e906609743cd7ef42
Date: Sun, 30 Jun 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719773062
