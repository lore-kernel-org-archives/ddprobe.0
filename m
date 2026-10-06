Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBCC430305
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791291036; cv=none; b=VJAS2Wh6rNmOxyGOYK9Px7xCDjh2tjglvjuicNvfWn+mhbaBIfO2pXmyvZ0TxUXQSODfMgwQpDOCVtVM6zwuwBDd7wqf3AKC7FmRO3oJ34dxHDK30rr2KpD11RUsTeH+6II97GdcDKX9wQxUUBCYZzw34i3jTLGVqM6CujpWJLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791291036; c=relaxed/simple;
	bh=YbZ+1vesruaOa6hiTO2By4xLkHYVENHztajUIl515bI=;
	h=To:Subject:From:Message-Id:Date; b=HPMLZOclkp6mWdCDytYDaAD320wkN5DIEGMm5TkmzHUExXu05doBQ1kScPGYaz5OKNgprP0bPZ4tv0geGum4p0SfYZLgZuRWMyA10VAeAZVh3U66p7X3JHyFwlsm6n5dpiXc+JI34r5rtTrSnsqBE/QsoMFy1Fe4fxK18HqKt0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VefEHWzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VefEHWzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4C8C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791291033;
	bh=YbZ+1vesruaOa6hiTO2By4xLkHYVENHztajUIl515bI=;
	h=To:Subject:From:Date:From;
	b=VefEHWzcjiV7twOk/IQly25rFZD/Yos2YZulDFMjS6mpvOkQMWqPf72PD6fVUKfy/
	 FVw/26d4P6Jm5xgNTPPvN5lYuosPUg3rIpx++XxXDTmuDYw19n/HjCgNaZ7g8AdZrj
	 Ajerkwv4gmrP16dmhHxcwe23Ti+1ewaixv4tOanVVK60c1iNi9K5i2YB7VxVjIwJUg
	 PyH/oTxfv0A9NFTarEJlkUUTWbRhJX8UV4SoZ8raOzqWSYU7BSNO4KzBFm/AHwvCOi
	 N19+HmiTIeB2A1XFnsiPAzjCUBVATq81ths3Ka1XgFOPgWGv0z2BLg8Gxy4GHwlOXW
	 p6Wu9mR1GXxZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC6CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129103369.14703.12586912213798523852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa33843ad7f201eb3d5249bf62d74ff886ca303f5312a7cb61ed346772fbbdb
Date: Tue, 06 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791291033
