Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C70A243387
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751350194; cv=none; b=FXTuaN794GgOMTxlB/yi4tdAXIzOX41qySgZge64BLhslDWhaLIKy6jjlsxbh0zO+XQR3x+GhbBgYUO3EyQQnn3EmUMJrZ7+KJMM2qaVfbkEn10mAEAJvvUJKBPLIOsecQ59otQInORD0cJjCR7vrwBJSEjJoz6YMXK/kIlU01w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751350194; c=relaxed/simple;
	bh=HVdMtfHUw9iTjVJZuXk6dsyTgLonSzglaIc0DlImPws=;
	h=To:Subject:From:Message-Id:Date; b=fIVxk+sheBePgXV4k9owjrR4+UopjbS9ljfgp4kz9M/1Syl45APFYlMNEDGm1y4lVmMm3GPkdhmKciAhqqfgL6G6HmlYw9+qqHdmVgSnriLDc8CxGuvfehc0fj4jjn56ojGARvJ9xEImmB64UZtBmSwo0PM9p6DnyrLv7FecooM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNIpTxWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNIpTxWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8E4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751350193;
	bh=HVdMtfHUw9iTjVJZuXk6dsyTgLonSzglaIc0DlImPws=;
	h=To:Subject:From:Date:From;
	b=LNIpTxWzsIhncHxkbhsVGJ3jn2O4R6LHG/D6GSbunM7IJz868oNNjSKkmymL8eSWm
	 yIfdmm8PNjFEM3tzx6tII3KaS+Pj0GQ87PGNyxQ35HFpfdiSXOHOfBjz7J8LE+zTXf
	 iiM0eMA/DWVR7vmdTnRE3Vw4qFAjEmqNZYCCEOHxGYMmOrshDFmktX2/7ty4pm5zjO
	 UK5dQJCn+r+TPZ2FXPU7YJ7gJv2kCRGGOBAWAgnw0jRESXyYUq0aFh89+Q55bWccCv
	 TFsAbcqh0y7M2oOE/13c36hvO9IGEah5UbsWJ3x2BT9u6r2rkd/rBlATeCeTK+axMg
	 +MXka0d/UhCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C443C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135019363.12103.4411723391850646006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf5f784090a118376ba8361ad200accd1372a383365d1878acb500ab820913c
Date: Tue, 01 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751350193
