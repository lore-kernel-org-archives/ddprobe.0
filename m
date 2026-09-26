Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7C743CEEC
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790428234; cv=none; b=uTFHxQ/qfbzq2+FqcHdz12wOayqnZeN9wPtaDf+N9DacVFuLdJILU+GbAhTvDoazfxypUNgnqsGVNonT7oUa2dfdjnfZdU1Irgr2cumMbphYb8eGRi14w08uR7799dFL2ib+dbFxLJUuaGrhrLl/kQlsSDL0mZYPJkyg0MLviQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790428234; c=relaxed/simple;
	bh=vG1pY24ibUpT0uslFfzXmuHpRBLHDj6tWqXWRPYqeng=;
	h=To:Subject:From:Message-Id:Date; b=rPzXSwSgxgou31ryvw6cWjUlOFVWlsJfZ1ca4L1y2SYh4QU3kvCCgTk3PNvFQn5u0YOUSOke0JxeKON6WwTUYOWdW/X6mnRXRqk4eAEs8v+W7jrYA4Q8lW/QwOqa9YOumM8mybTaK0GgGQTG+XDSRNdFIwgjhZsSw5nC4fMMBx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noqMm1I8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noqMm1I8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB16C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790428233;
	bh=vG1pY24ibUpT0uslFfzXmuHpRBLHDj6tWqXWRPYqeng=;
	h=To:Subject:From:Date:From;
	b=noqMm1I838Qhj5i2RTXJ1kOI44N9XHp+UFUiZ+Nw65zA26n6HdHEzUSeLyVjZVBTZ
	 qZWykrJwLCW/a5KAFZiOsH4VpUuobNTpGoeJ1lO7H8wCY6jU1U9EcedDOlDNhLe6i6
	 LlE4UTdrOjxRA9goNw/ePfmRWTQRUS9Dt0OTBUyZoTjItaBfE7ClfYA1WpXMPXmc4Q
	 aNZV0x96uG4TxKiVqUrNZRc5WfNA1gGfo2mDKj1uzgaRwsIEnxWpZnqngK1Qopg1hd
	 fn/EK+xhe4R5bVyGzpj6ULMkkqoVQfzXCcY0g7kO5dJWRkIASBJxrfEeoSS4Pn7QbM
	 aJ2+oCfgzhqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD77FC98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042823368.4241.14151719453066258751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c153f939fb450afe4b8dae69401fe7c43e5fada6df9f881630bf4d09c2081a
Date: Sat, 26 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790428233
