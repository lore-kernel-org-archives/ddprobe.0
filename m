Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2232A2E9EA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782394; cv=none; b=QMk7Et0sRDvLuPXaCXUKNTNp7kwKleLNVvVbJGHegIvWTs3v/d05A1U+h5BJFIFAkSl+qCCrOzxyFpAV1tOktwEzds2z7WVrifJfWOaG7mUA38kh31DKViKdS7bFUkjWuZ4TvVwT+Gzi9lcLJDFr6hevMsqCupC21EqVbd6Y4VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782394; c=relaxed/simple;
	bh=mUEhDAgpABhHZQbkKbEirhp6bcRXog0C/x2czVk68pk=;
	h=To:Subject:From:Message-Id:Date; b=ZWTDKXYxpZG9iaTZZy0KnkNcR5a/wmDh4HPi6+tgsq3bx1QHKP2xk2cOUAhkApU+DwrPUkCxz1ZQ//mFR4QPc5IdyRMWzsQnJADmRBAHr9ZqU8SrB+8IBKBO9kRP4ajWRQFejirSueY2Fb8gvx4Q47Tq3z3X1FtwWadXkgMu9c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvhZIcWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvhZIcWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E515C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758782393;
	bh=mUEhDAgpABhHZQbkKbEirhp6bcRXog0C/x2czVk68pk=;
	h=To:Subject:From:Date:From;
	b=kvhZIcWuSIGUd0X3o1KzPdbHtXLJZxRtlPcWWs7lUdkcybgrnDKcXvRGma6uPPJc8
	 NT4M45E9A52FjSuu/IFNZxXUzbM8dsSuEanwiNVCw2Feempup7jcR/HjBZVbbbj5o0
	 eDgaac2/x4I6NbZhHpiVQpVKIkssxWd7d4qST46Zw03cECYA76LcrnmtYED+9QroiB
	 CwLZIzM2zkjxWW9dHQzxsQWCb5HDNELszU9W5nDjDTiuyhcvMp9HMyrgYqgwcIFaEG
	 laL5FPYKSxUZXYcLM5t/ggiHDspHznU+OXHPqTY2KWlzaIeynrvVYwqgbgJpDcPsRl
	 b4PK1BKEKaFGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F368CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878239357.9090.11866139163527564198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fe84531e21f41468c7fbfa8516dea3fcf04d4d1f05c220e3411a9dde232515
Date: Thu, 25 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758782393
