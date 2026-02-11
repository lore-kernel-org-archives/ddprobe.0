Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CEE28D850
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770810894; cv=none; b=P4unooWCJb0VQArSpaeBfMtyj2zGR8f2rCkpIAywshB+0kk2E1gOsj4zSy0woFkt/MXXl7mBVtfGT7iBIsW0xrX0y9ASO8h/VqSc8YbqAb7mY+DO9psY6PfPye6/zibzAHfjvZw0alwZCvRFfrqveT2NLbhmfGCiudKKlLmgXP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770810894; c=relaxed/simple;
	bh=AfKCF7nFHrlwfZ/HWTHeKb7Xebld60XmLW2psldHSMs=;
	h=To:Subject:From:Message-Id:Date; b=tSVFsrK2l7lJAvVAwylY2/PoTo1pwNhAwSufRj5KcBsUDT4dKEw9oc2BgK1UqHvddVVXyfy4QcFGzYUmDMTtnw3mVkpL/uf7RjH65d7wJaWHPeE/VuvPbYZRaFfJmpVlYhfNgkJUo60pxIr3wabx2vsWPAQPduH2ZTHhFqgUGMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFD4UMwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFD4UMwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6962C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770810893;
	bh=AfKCF7nFHrlwfZ/HWTHeKb7Xebld60XmLW2psldHSMs=;
	h=To:Subject:From:Date:From;
	b=VFD4UMwu0dRpF96yLC0zwTsKP4dVyBJFPrXy9FAYPsnYvJ5lGdvejgGFAUQF4L4cK
	 0dNEEN9gpMTIpBVRlyCsbOyGgvWs9oDKnhxYD0bCnxc8MZ4aW9PgEtwX8WW0IPPKyJ
	 4qYmSsl9/I8VhjXiqlgKt+K05pY0DCSWFISqu0ZimKkOcyT1JFR2rhCyjEo5+w0TNd
	 SNp1hh/bbN4sPWEnUWb4NB/HoBL/eMlp33ZXVaMHgoDBsXZFVcNzje1DrB+wj0ON9S
	 aLstI0aSFGVkF7T+kBRza9Xqk83IW2/w9a+AT0I7SMV5vYeGYthols+NUHvdcyYCxi
	 6Jp5kjuNlmcsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5568E9E2EE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081089366.22006.8728808945142893580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0fd08c4afffddf2d142dbe89d84b32213c534e280679f42905a6b9000e696d
Date: Wed, 11 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770810893
