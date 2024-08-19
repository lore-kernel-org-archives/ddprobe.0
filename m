Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BC213BC1E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724051754; cv=none; b=C0MAw1ONcAdEKy3QIr4M1g1/B8k7v4CWqkVP3H8ifC2pfJ7PPp52GjynZ1wLz4nuy7KdSIdmqCy6L+FBonvLHLHzNbNqWZc1hmNtTZEfZNLiRfIo5X6/3xn/UzeEPeg9Qh6mPLLbVC5wOlL9ieWqL6rjC+hiWSJHBe4omMNPNJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724051754; c=relaxed/simple;
	bh=z51USkI+Aj+d3lHDsLj7hOuKKxKH4fEP6vJcSzvwf6I=;
	h=To:Subject:From:Message-Id:Date; b=QuMrE0aNTinKGyGfXeMAHwRJAVXPvLUvYYRHtA91208e+NTgnP9xUCoFUZAdblqA0LnX8gtqkEfVz5IBmiI3hC3zgsPVC9WwvPVX3GdaykCdZ0iJfCKykcr+/zgLqAiW49eDYjPmf2t5kFXVtNXqw1vK/2RumixDESJI8kzUpmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPtrusvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPtrusvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6007C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724051753;
	bh=z51USkI+Aj+d3lHDsLj7hOuKKxKH4fEP6vJcSzvwf6I=;
	h=To:Subject:From:Date:From;
	b=KPtrusvHf7ODCTg+wc48HDwVSAFmQHw9Y6LQ85KmsWd+1Kvj+cNNPsfnUWwVU5Pgx
	 BcCQbPFfZNCXrGAsvJ3x6JAR3Fb9UoH7T2ervL4+uTlS4rWHyxr7jh03v7B4XlBVSE
	 zn3uE/AyeUh8YNBTy+VdlAV082l5zo7rAX/eotIzeIh7zUfaWav7lhom9p6GhCKBYT
	 HXC+jZywbprl2fYyDWDMdNtBWqBboVkw2SLXVnOz/2np12bQ4KggKqBHYjYYG8/fWO
	 UcSvZXBSNqEiLdqVa8BrXbvaJJzUSPC2tQJLu63qQRzr9myANWDgTgtH6e2Cr9Gc57
	 1XORFDn8h/j4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE092C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172405175365.29837.3954696655553078590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478977d5f8baeee272a7069c2049c98623ad24ad038f437460707c3b3f48d9e4
Date: Mon, 19 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724051753
