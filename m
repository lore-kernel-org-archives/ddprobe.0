Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587B0423A9D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780475674; cv=none; b=ZbWA8atbYMRbL7uDLu0U91zET7NB7PMpooMU3Ex9aT/5FRsFtbx7axeg9m7c5taeziwVD1bEbxYSYmwfkhvdY9Zxq0HZnEVC7B7f0IbvEXexlshtyULcEd8JF2bvioW39hL/8IxtMtOUdxtyjGI9L0gG8adMa/o0aiWacAkiuMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780475674; c=relaxed/simple;
	bh=LH/vL9FbyvWmYJSmQRPhEgNVP3kxEdH5rnn6XMluPqA=;
	h=To:Subject:From:Message-Id:Date; b=fNuiAJk5g0rDNhEGUEAfJGixqE1gb+isyDe1rk0U6wDcRA9XCkqqSmXbaoGlg//ZqsHt23wFyizIA48Xzv9d3dZxvjt3ZXh9sS63HkdOnhXk5Cnz6IBCAAA3i8eDLJBx0yXVLelydmOPDnsCc4EPcP2qZo7fYbxm0lz47bBGjao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOe98h//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOe98h//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCC8C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780475673;
	bh=LH/vL9FbyvWmYJSmQRPhEgNVP3kxEdH5rnn6XMluPqA=;
	h=To:Subject:From:Date:From;
	b=lOe98h//ZLiyb/43NbYx+rVFsL066/VbVHBRBLvPezmkfHUf806hksGQTwzLuWTEH
	 JXXhVR4EHKUTk2pPw74qsnq0P61YDsTdx62H14IUCpgbY79gDuIDzEGRyeMIG+3OE0
	 mLwH1aTgAEnPvIBu3jt+gwQdOUyAHmthhkYcktpNVJnByzMG+28pg3/7whgPQxLk8x
	 76jTIbKOtshgYdjocaD8F0xwfHnoeBKPnnbPoNrzAU+SdM8lW/ve77xi0NOfxceIi+
	 Y+boL/CLyDMh0eepJ2qubNKgU+EanJ9phzHP0YjQwMGBTklXCDjvtHt7wTeiQyJchg
	 9FASLvoBEu9Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8982CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047567368.22083.5089376788952050956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d38475ea2a0451b676fcf89f92ed4c0a6803bfdef672934792e95d3213a581
Date: Wed, 03 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780475673
