Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC45239E6C
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786351834; cv=none; b=FqRsDtqEK7qI4UIdJb8gnxhmaypINxsSNqEyjZybK4f/By3x2/R4aaNbCXJCHVdw7xZG5rhWbkKLejSZ1v047q+JZ0ss6TowMqcDk+lO28Czaa9Q7888NFmutERJ/k9AnJ1yxdvflSzoDfeis9k8hhbDXUexTZnnQQtQTlX4yX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786351834; c=relaxed/simple;
	bh=PHjgvcZlYmsPQaihHNxbpdp3Sby+tiMviqVCBDDPFYs=;
	h=To:Subject:From:Message-Id:Date; b=RxMKIHqKjvYi3sBzuPhI+3Fcz54+6Cu32300yiA6EDkz6F1EyKKyL6S0Ddp6VGjpYyTiXlOlQg7jqwDyXH0B0hqfyZsFuQAaeUTCHd43RDZ2XjRO9+7691xf2D49fch7zvcAeKoDErRrC0L5lAtzPzBbC/W2Gxj5PJTkHgYYdR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kS6j7eRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kS6j7eRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D539FC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786351833;
	bh=PHjgvcZlYmsPQaihHNxbpdp3Sby+tiMviqVCBDDPFYs=;
	h=To:Subject:From:Date:From;
	b=kS6j7eRjhXk0alTg5rgJaFEaBy0x+LE7M+ZFo63DmJk5XCzmbEuNbRIuvhx2YwuzH
	 c2jPWd7OeZzg/OOx/DFRrTK/VYMVoJm6eWlpCc5rBVXMxnHd1iuLIaOddUz2yBISau
	 ek4epnHO80tl1xm25dS6BB1UrtoHV7pG7e3FfmSMVEr3X3tKN/voXNALBH9aKZV+I9
	 hfLfM60QLCtNWYCHuhwAGCsMNBInn2PHb41jPK2l2UibN/34ZAaaCKSR38V5f/XWj5
	 geGGU8jVIQ6GgHzy8hra3b9tJupVqTFgRHT+EoScv0/i73T/hIf2s6uMYf4p9be+X8
	 M2dDFZ9rw2Jcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD6C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635183371.31764.16061495522634800471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92baa8f18fd9e5d604e4b45f30f77b12c4e060ce37e8eb17bdfd371958e87d14
Date: Mon, 10 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786351833
