Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0C314A9E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775503534; cv=none; b=mhqIjH5bHP5DvM5igYqttWD60M5I9lVqdP/YcKzX0T2IuB0VF90vd0efNqINFPP7o+YKir3QZAQ16OpO/Ez2vASirbj3FP7OW3k5jsfyjlUXdOa6ra1d1i1UDBGL01/oPTBeusf6J36IjerhMbVfpRrH0TAzsilkyBPmVqXHXqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775503534; c=relaxed/simple;
	bh=fI1IMntO5cboGS1kaZfxSFVsv86hiQF2goM5eXjNIgc=;
	h=To:Subject:From:Message-Id:Date; b=b2q7OgvegPdALCFzagYiwU+Y1zqIDakE/7nWuyqp89c5tqdO3d6Tz9Tte+vhQ02iAyGROUCNe3qnYaul387/kOW44YFqrhpD2EsZ4GCy4vwvsamFS5PRHEWwi01k5yRlVw0IdaMyXjI4HH0DmMbhngIgSipt9CSjMFzLgGKB5b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppYBmNpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppYBmNpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A49C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775503533;
	bh=fI1IMntO5cboGS1kaZfxSFVsv86hiQF2goM5eXjNIgc=;
	h=To:Subject:From:Date:From;
	b=ppYBmNpSQ0tYAq5bxwempxAxXVUNJezT9O3Bh5NghaTsg4dLtgmL26zwCpp/FfmjG
	 PRGVTb8sbD3G3VgMISwzV+2iCIRhCZOr0yYJFahKY8Vjdrv3x4DZiUfSCqLREElBQu
	 tC0GB48BgHYKQnuHO7VVO4xKtMI8r6rE3BTabRL5cOFG0sKm14rzdEOCPjf5TxnYqu
	 zy8swPFdO+Dgqazzhdvaa8sqidYCFR5blY9/wrOlrnPAZhmZTQT0nLW0QjbRODxiAH
	 AZXZtHvvVjtwabEmk5/J58fiqGwBjJrO9ezAwaRPycZk6Rjk/I2oXHTcFuyuy9qEhe
	 LTFoiRmO4kP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A8F46C69
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550353368.16477.18235566809516824451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5b0fb9ca820f5df2c34d17cab6fc6166de9fe0a7f0043a076fb9178b1f04f9
Date: Mon, 06 Apr 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775503533
