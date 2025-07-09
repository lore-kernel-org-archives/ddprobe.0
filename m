Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391E55383
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752051594; cv=none; b=LCu1ui49W9dVDAbpxa7JJh4j6o7y+bhtXrOYtQDPGap9e03JJl2N5nqko1h/UAGlufDqF54HymWs9eTeXmUioiJdTeinRg74+kAkWtJ9pbQoX3CE9R1CgcqNNbMfnFYYODvestIO/TZ3SMpUMKM+SNV7bgUToFgi/Evx/yKFX6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752051594; c=relaxed/simple;
	bh=cAb5J9MpYJj4/w7R9IejTLBe4W5mgvObcNRbVF8B1pw=;
	h=To:Subject:From:Message-Id:Date; b=XSLELn9RgD8hJJFnn1CA0/QGttnd6Zmh+66+xW5sMX2o0JDtDpCu06z5aGUa3OykVNPYhxgqO7KxUQ4UneHyydHaMszAPqP0wl2uGw2jLO7+uc1Kzczzek1QU9jkqJsUwgCmLo+IYn0ybgYR9qZhsnWMRCYG/l8vd829fXa93IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDdHrnnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDdHrnnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3C7C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752051593;
	bh=cAb5J9MpYJj4/w7R9IejTLBe4W5mgvObcNRbVF8B1pw=;
	h=To:Subject:From:Date:From;
	b=LDdHrnnL25QHEcIsyK/M3k4Sh3INWofuokhYHtNdV8meZBegdGTeHJ3DWgXadTKkw
	 w2F9GLtk8JnTJgtCnQyG20Mf6p5CyZ+CfkcC/9VV71Ep3OfCBXd4c6wMbQg963C663
	 MQNx7IXIBfiVDBqAEtRN12V7zlrFh7swgZNgHZP7sAhUtHBJ4BtLKyuxpYJgkQ32cd
	 2nrkDgdYOY3xnr/wLO1Z88Iop0VW26XVffJkRP0wN03Q0+5EMhlZ3aRGQbtChdZ4rg
	 2qMBfYSmzHea/9ufGwSqr4QV1ImJ22ZmBRJ/tIoppBva0LDMRv8dEQjGmsBbZ5530Z
	 6QDfY61zHNGcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E719C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205159357.21713.18396895796225548315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8208b741cb29f5c622323e62a9abfbc4ddba1c84541e5ae1996ae04aab0f4baf
Date: Wed, 09 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752051593
