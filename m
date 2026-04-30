Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DF02848BA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777570654; cv=none; b=VbsXsUg5bZh9Zwk1fuK38R+UJ7/9BTYRDFrXn7xMpa3tunHQVItT/CxSJ1Kd1imDSoIlHmTBh4pJGszBMQj+OglHTGgJKFAexIP7eWE8H4/hj4aNDsDB3U2ubtNLJtKe+IsHVuCwYfj2SMbnG8aWdUnN1G3DeFQ3lpf/mcrJrA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777570654; c=relaxed/simple;
	bh=cKHaHYLitZoAQBD3bXe+AKIAcNDfS+Sg8binjqlV11g=;
	h=To:Subject:From:Message-Id:Date; b=arVZVoxGtWWyBYESqs9BX7JWETqqOqJlOwvSNrvU7NqFFvIUdzCjv31K6jeQbRnCz9umJ2vstcDnNOyfTNzOuGKjzO0U11R+xRZln+PLHfzc9otHWeLSIXC3tFOfvXcJThzBNmXfqPtXIYEv26cuZvPbWcr3tsPb6t0JnsykeHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWwo0tmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWwo0tmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE31DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777570653;
	bh=cKHaHYLitZoAQBD3bXe+AKIAcNDfS+Sg8binjqlV11g=;
	h=To:Subject:From:Date:From;
	b=CWwo0tmkY8v60tOBFEZvctNohnmHayJlFw/zFTyiZo3NKHYjgT71SgyPRuBTkEvWU
	 zNZhYfuo2087Hlre8U+8+CQ9T8D69Zkd1SQJvEm2bZ882J3DXco5T2eSH7ojh7Hl81
	 T8YvKG2bc1wAhYUJgZ0KD7QMzMA5LW1p8RnHj8tgbplr0L9YRulU7bfKR7sM/9Dp29
	 +VG3ODeuwceJxXC0Bk9Nghlyz2tMLhPGirym4n9dRNsDWcDGS17wmDQfpuo2i8fS9r
	 t3K916GqfMw3Yi7MXEeFAqdImdWPreOQNtuXiW0raBMNAzPCdsiFJq5IzpP0YKntio
	 pst5SKBCoS9Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA88FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757065369.24874.452869715945502889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0c4d00d16f2d87e77d3fd9e81fb62aa5c18d7fd1bb2d2c3f81d2a64a6de9af
Date: Thu, 30 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777570653
