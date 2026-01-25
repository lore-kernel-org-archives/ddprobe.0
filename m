Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9281C84B8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769368434; cv=none; b=dQe5YmD8zYzSjuSRujAZ3Mgo5tc4ZLQWD2VBfeR9SfWIf850e9JI4mGUwREfPldiFaF6Ep82+FirbIHwGgafExy3Hwzb6SE0WUrteKTsNgABNYaPY1ZnzWLuBouvmjmCGG8RrA5BRWE4AOIab7zZZ3zVLitOWrsgtDhAYmu/3XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769368434; c=relaxed/simple;
	bh=hvOUDPaiOOC8gZ0I2awzkANMbhfQvYvmE2ngjHfTHcA=;
	h=To:Subject:From:Message-Id:Date; b=ECHvPkgKB0sQsMrdkmOzvYtFhuSBUdTjA7zBBEqwS+bu3ffNDqtBcR2LtCFtn5UtTS0eilVNGNGHVuC4W/pJadzlg6pBE5sAkZdyIb6DB2v5NqN7wHNu6Kr1A6ggYEW8Mv1aXb/aYm0R/PuxSg34ZjQDb/sqecMbaojZZbIFbdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd5QF6Kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd5QF6Kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD878C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769368433;
	bh=hvOUDPaiOOC8gZ0I2awzkANMbhfQvYvmE2ngjHfTHcA=;
	h=To:Subject:From:Date:From;
	b=Nd5QF6KgIvEDj9oC0bKlpeVgnGjAsklCNyuOTOb4H8ZCHtTKSGKmgPTtLN/BMkDrs
	 N50li9KmGVaOjuCaTNwwG8yYEWx0xomV9drfxd8YR9MOPBiQP1K44yAl0v1369l6fy
	 avfP+xuTb5V8Cp28V/CyRWxE1Y1u9OepxnTyLftIu/WlN0Jem+JCZfMXvzhjz0Pw7X
	 KmZJ5WEQEb5uS/57KtmmbMOKY/G+ldlnyxs5rkx/PV3wiWimttb48GBUALYYm2NZwa
	 yMMAAjba2Ec+xm0c7OkZAn9cZYM9hodrZ3Ql4FsPkKCmx4NCEuQpBF+sPw/zpV072I
	 isCShdSYxoEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A836E63CBF
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936843359.2172.1547398275379597056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e18b4577d038303020156772c8e403eddae78c50ae6259198a2447450df5829
Date: Sun, 25 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769368433
