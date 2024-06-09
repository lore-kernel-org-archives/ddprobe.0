Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6340E15B3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717898243; cv=none; b=ikayQSDH1gY9vaezD9lyYBIiCyEBZERlPZqlieLcgJWXF+TjYwi/bX7gWfqF5Urstu3JyO94mJ0Gxpqet95HBkh0aVxaH2CwDApJubYxka5KWO0Vw7pWiEOWcgCHRdLOLuP+Y0BTHM5YpBBf6/w1UIiobiNV3N5k6JZBDrKO3vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717898243; c=relaxed/simple;
	bh=LsBxbLdbbGWlxDfgHx7x3//3y33SuS2FULxT/fbOh8Q=;
	h=To:Subject:From:Message-Id:Date; b=uNLmZIb3zExD7I2CaRrm5SjQwNJ9NFJKuI9EuAdvAXdwtcOdK/gsJkt9OqATi3GQEB2bIGl6+53FEkb55BjBenF72g1s0oOxu3+xZ6t3nOZNg3WoF+dSz0S1avYHM1FwZulZAqwn8HytBGgioTXfFEzsRoYGD1FEln17MUcYXtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beh47JOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beh47JOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D713CC32781
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717898242;
	bh=LsBxbLdbbGWlxDfgHx7x3//3y33SuS2FULxT/fbOh8Q=;
	h=To:Subject:From:Date:From;
	b=beh47JOGRWFBaV68boUCcgqj8nY+NUC7qqaE8i2CtnGd+b4PRP3e4m2ow7zh/FLPV
	 r4setjFkN9bQ5WQm1gtBZno99Ott04KaBt5spIAIW25jun324weY9EIz/1dfhShcHR
	 tW2mq2KWKGIeknJYteyou4/oLw13/5xaYpRqF5fL4D0J1SxK+U7Z+pMPIFZev+u8A5
	 AEFBTf4g6mZ++t5bmcXlPipYmyEXhZ5JyN2y9as39HCvf2RqjL635yB8K/HlRFquYM
	 OesQGgv2y5xsrMWYzpUh2hycRencnnJtcB0qwveWrWBpBUUmyd650TQrpgWxJHGQ8y
	 G73clJtDt3iew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A8AC25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789824277.21420.11502799675658328621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56de1c4a0c8d2d6dc8a09771201a5a53675e4303cbd67911176a2fa8e9872bbe
Date: Sun, 09 Jun 2024 01:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717898242
