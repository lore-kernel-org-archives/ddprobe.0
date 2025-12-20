Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2497724169D
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766260434; cv=none; b=APHUpBAGlSD2y+po7LDSBo87xh2SXvR1RcsjaGl3NsFvA6aMy2cMd7VtLjYz0VOevS1D044TkyaQ6caMprvioLTb2pXd3iRDk/DalRF859Z7x5nBGkrezMkOj7pD7iJ/1eE/Qc3myVfvGyTcKksS/8+XIItoKhYA7H51An4qjQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766260434; c=relaxed/simple;
	bh=w4AQvW5J1njumL3d+CGTf43jZyD6l5faFY6bRuJczHU=;
	h=To:Subject:From:Message-Id:Date; b=O4fpICAN1MhcRfZCTxBWOhSu7F8Avk9eY1MWw8XoUojXh25mz+CugNLYCsYnXPiNskFX9R6ZhHcFV8zsGq2H3gcFRL8ViLbKk1WOvvnR3CAt/J+D6ZTF9alDRcy4fyRPKoHKnTyQw0SZ1Tn+LrugHRLX62MWO8bJ/8iDRrDsyDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWORk+CJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWORk+CJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766260433;
	bh=w4AQvW5J1njumL3d+CGTf43jZyD6l5faFY6bRuJczHU=;
	h=To:Subject:From:Date:From;
	b=AWORk+CJlsHZ4Nyuxvo9w9p4K7EMGHvyWbqPBlEccqiR3sHJohQlRZJvzT1p0agB1
	 I7hJFY36CYozZkEEAbqMN7YtMY70Vzucn28ZhB3UxS9QjAhjKA0VLReNBLoVImU0cx
	 etB5ai+1B42zVsfM6I/cvqh2FxlcF+XK+JsbNNntnogN2b3rcdcRznvwB4Q5wZRjVc
	 294NauKQV7K1WrdwLVWcnvoR/0DuYd+DJy8ISy+2Co09knzGMXd6I/Prv1daxsflrm
	 Vl1LH91/oT8+jxzY3Hspv7i8F8M2d39tFfUOSxpApeCutsG2FRHpXZSFWd6R4UvGUq
	 xKWJy08wr9uWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224DE668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626043357.4266.7003307614018571390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1357264a288ee49262cc3c8d956378aab2d2b381c6de7d08b9d7c8de63baa6
Date: Sat, 20 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766260433
