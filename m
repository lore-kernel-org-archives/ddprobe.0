Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7702D13C809
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719231143; cv=none; b=g5A5cd/+2DulH1J9NtkhK+SvFAuoIpAKbpPWUKPOpgZ5izN2PcnOf6zjT0D5Cw1gzJ8t/tH3o7PZlh2PZtO90U7hJ0AHDaPJPdo4pWdBPN8Odurs0kbBfDpJ+y0o+I2ZqKiaQ634CpJe9VJLB02QbXW8fCTkfNsjxwePzKCbESU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719231143; c=relaxed/simple;
	bh=hfifGx2sSX7p+U6g5KUDIPoxPF1R4vQ9j0GArJTL8Pw=;
	h=To:Subject:From:Message-Id:Date; b=LH0b7OBFVI9hefHkqnlapEetOac4ZPUCLw6gudECXHsfZo6FdKA5CqdDQD7eBI2DPKH8QrMBm4+v38AxkdqIHQxB3B6jIOXsyxGpLOsx6b9ETlp8MJGfKk5QaheaQ22BeohMEt36/lXmsNObdxGh9YPqUy4FP3lI9+KzCAlGw3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDhMsBAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDhMsBAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE789C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719231143;
	bh=hfifGx2sSX7p+U6g5KUDIPoxPF1R4vQ9j0GArJTL8Pw=;
	h=To:Subject:From:Date:From;
	b=IDhMsBADSB0RJMpqiwrPXb9SYzs2vitD7sGEHcyO+22MSF1lAHHWUaazwDPJWE5x5
	 OqWBhj/bmY0Cpfu7JSmJT1/MRhRlZ+1ypB/FXanUcba3P+QsLxPTDdkzOCiYuYOeU0
	 62nz6M6S8/p6myEa+G9zHgOXfyhYs+gpRBx6vtvJC8YIBneidhXanZeGqMt3nlesfn
	 Kyc1eB/FNvI9SeJtCfEnJMSvEZ9hn+9XlqmlF6B1ADPsXnsl7SjwpUu5xNjQpGDiJx
	 YKx+pxOBb3DUm7A+a7Sjb0cdJDy7WK2Mx/uAblvFdLhWrzJMzylk+3z/xKrXGWxTba
	 FfQS+qoRyi4ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB1A5C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923114288.30703.16314146121718016718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0ee4b002aa9e9e1315df69370e03eb02b7286ab1d5041182028d480b6938cc
Date: Mon, 24 Jun 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719231142
