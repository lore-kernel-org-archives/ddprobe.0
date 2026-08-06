Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6262A302146
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786057834; cv=none; b=qCFDLz0CHCLEyzO+1Qvc+Rmq8ObT2IgLlvubg6Z4b6Dw/KBuYLyA1BvNU4td3ySDVPf82y0tb0Sh0xPBYGVDCo6mQUoj4qoMi+jwkMPQbOHIQ53k/vSWBret91Y0N6Ao7ZNlVmSXhYUNmthEZclkolNdeK1GR0ClAjc1idsZzdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786057834; c=relaxed/simple;
	bh=B1e1IcUjCjvYzqwkbSymeJEylWJQ9gRHdzbqvg6kTMc=;
	h=To:Subject:From:Message-Id:Date; b=jYdAp1S/5dchj5NnVi0RxndAYzlRWX8zUkCXH2Pg1stu49TG/jBLJfDSZ950zwwamHW9gThiS0TfIf+YivxphcKK00mDOohvj539zVfuBuM2JV15NmQo5nbTspkbZPNzXDnP4SV2234get0tfvN2p3J6gbF5nI2gr4LqH5ULmfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSEAuy+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSEAuy+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA2CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786057833;
	bh=B1e1IcUjCjvYzqwkbSymeJEylWJQ9gRHdzbqvg6kTMc=;
	h=To:Subject:From:Date:From;
	b=QSEAuy+j53xIm6+bPJKd5jEHew1gFIVT6o/qPivhjj2q+BVnnPw3g73IJjIxN+zxt
	 0a4ekhZBW7DzJUvgM91bXTVtVBjRxyQhLzN2O/OuyCCBLBGkCjuEbPb+Ua0IBq9nDS
	 Q2ba19KKelCu0DyxcHbVwKHSJOEGN4S+gQ4DgdvKnRdjeyo5zzWkh0JfywDeJroAO2
	 7BnKpdX6ApHZ72XCUFP1ZWWfzsduLaby7x4zVvZOzEQ6mCi6Q6DoPgazO1qzHY0PNj
	 JySwA5hRNVt3W6KFSTisNzBPzxqnmqvY9uOCFFQ+ktaf0EHe0MIqeaQKNQbEU6dEkb
	 dnt/4+WTJwlxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9955C5AC7A
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605783368.4502.5997554410731327939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d812a7cc58a9aa89665e44d557e32e5e9052d4218668f9a541d55b1e423ffb0a
Date: Thu, 06 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786057833
