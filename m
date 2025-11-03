Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BEC26ED4D
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762210794; cv=none; b=M7WMcGxTr88BqgiZf4JvAzuNzh0YCJFxYnRdZ8x5pwa6ZrxQXBGi3ujn2N6wtQSrU5ERbROHCP6pwTOfsg5f8GwnXOjhWBdiUTQAsu6j8NnXZYiSk/UvVmsvgLhbWNxz6NKDSwMfRRcTBm4X4KOoJP3kGu0fpbLrrl8Btd+51Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762210794; c=relaxed/simple;
	bh=RXfAjFD/N9adJ7SjHygsY4UU0P4K2O0P5os0J5Kmjuw=;
	h=To:Subject:From:Message-Id:Date; b=Ts2bYo/Ma7lD97QCfi9RhWu9k9DtU0WdJA6wJnnu6ahcKtF9twT840RRX9n2ETZKqZF/lZwwveHLc+wFv99AH/GdNK4AnCvplAuEAaFY6T6PYJtpTt8cujn6yZpmBqsv7klrgf2dU8lZia6UtSP+KmyeFMwXVMmXL+0VaUnYPMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHtaMxh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHtaMxh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A11C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762210793;
	bh=RXfAjFD/N9adJ7SjHygsY4UU0P4K2O0P5os0J5Kmjuw=;
	h=To:Subject:From:Date:From;
	b=YHtaMxh5CoXlkTRT4ntx7DpkdB+hVzpLVp3S6608q4gSyeeDmG27f65RUXuOAvrZb
	 Y530b/vXRuwNH3UlCEWt7Ah3rLJ8JN1BwiXABlVxfa1DkLmT9nTec22GOgCYZaiDU0
	 lSV8bjzKtpKQxcxVeiwa1s4RQwDG3JqpOglEkNLag/jKHsUEjyRivFN8st175Ya+FG
	 AhGBFuggUxFVAJct0YFMl/NXuzKG0YHJlmFr2W2VIwTssGd0DAWTP+eE+qQHPZwxQk
	 0xNE9lbxAIWwakRAOxoolch1u+T0mpSGlD9JDLbjKi6U6O8YKyG/IcysecXl0L97X7
	 FzOKijvgDsxPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0FCCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221079357.25443.17003242977362747329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e0e273648e33ddd2f973ade4a8c2543e4a10fb4b272f5ad93d10a540401c72
Date: Mon, 03 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762210793
