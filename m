Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BFD2F7EF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782269194; cv=none; b=XCmi0uh8fhmq8RMaQ+AKQmiOeOW7F4x6mjGbeWVhXeRQ1JHAsHp6FFsDMRABXcSFXXFjEFnf8Acm6W3v5vrD3C2WlIXEhg2MVKvVslzX6YXCTGw7QVzFY8NPXVYscVQYjwSvvyRXbR/PzXCUsC2kKW79jcTlzKcqYyO/Hkh88mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782269194; c=relaxed/simple;
	bh=3g0KpYp+RxJZXMiVc+iEqzevV0Jhtlg5rfUhl1EpcU4=;
	h=To:Subject:From:Message-Id:Date; b=jz5EVrmsUAWmgcT9BIol2OVVA+ucX2RfrVh1Ed6VvM6N9Lulzp13S41DpxWLxdgYV2ftNjOBPCC0n4m81kqllzoJr+Fkg0om0eOQrDzyHs51VareUeLi9KdEJXxaLr9P6OSF/6O3W4ZXpBn2cuN24F9mfcGIHvz2oETSvzKcZ70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSegbLc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSegbLc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB01C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782269193;
	bh=3g0KpYp+RxJZXMiVc+iEqzevV0Jhtlg5rfUhl1EpcU4=;
	h=To:Subject:From:Date:From;
	b=GSegbLc5qvCuomP9bfdRHiEWk6m3PkDdex/+BSct7tAorUKQIpmoLgfuFFYJ064pO
	 ASFuDiNuLMxnRLXLmNH1ia6CmXPd/5F+a9Js1r8MebTeWOAjsqfyeq1Ee+NoYwgD2L
	 ZFNU0KS1Xc4aobDz73BrLS8YlBThvMwuZuCn6T2bi4KJLXTVrWkG3jbOLp3vbgdpl0
	 RQ1dF9jc1oxbRGy2rHTAM6earCqkQpJD4BIo3N4SvrfQYeOIRUu6ene76J4GsjgUSA
	 7PhoZiZvjYuveRL4L6rnbSt+/rjly3FjIPbxRnpymtRygGTOn7s+3aZ67dQrSGQ+lS
	 lR60LfTgkwDbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF3ACDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226919370.1929.3940692152579122282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717c329887852024f473372470ad7def6fe5db2a122f0fd4728c70042e2f349c
Date: Wed, 24 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782269193
