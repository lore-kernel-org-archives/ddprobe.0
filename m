Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C7D46BF
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718886023; cv=none; b=vBuQ1kVdJPLqGsjt5UNjLBhck2uWved1D5/spDFI/iCpIaODJZF9yar1HKCtR9t09awV5Ct19b9BlvzcSc8rtgplbB3TkH3PmKnEhD6LEwqeVfwRrD+iFklzJ6zrAiP1zA/qizAL2uwQvsk3PDTGnVgY2hi3GinXgt83emrWuZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718886023; c=relaxed/simple;
	bh=iJtTY0W1lQJGmHpbmxd+Mo9wbL44p/HfFUaT5ThOnQ4=;
	h=To:Subject:From:Message-Id:Date; b=WWihsVAeeQQi3UIiA8bXCSEWs+vqVM8NTaswLyVeriY1opF8vjOPiylFtqX1rdusVoehsheJVf1mzIM3L0KK9HC8UEFQ7q3Y13e2IFa0M5hdlGpWNydMnAuSRvvFh0ucDAIkzSty/rN+SIgpFwZreerfHxLxRPAo7CGLc+kWPOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ9Lqsv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ9Lqsv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB506C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718886022;
	bh=iJtTY0W1lQJGmHpbmxd+Mo9wbL44p/HfFUaT5ThOnQ4=;
	h=To:Subject:From:Date:From;
	b=nZ9Lqsv8t+tcDNKz7AKBPO3ZcZ7rb6IoIUxz1Xmz3tFP7knwRQLW8w3838WAaPcuW
	 YdiZgwIqGSRP3PMBwW5cpdEDKGHtWx+YnM9eKlifNp84g402F7/qMBzq7i6A1ymTVu
	 O4ytHpCmGL9yQ6/31xdR2owe6x0Y8Zi4TmtgPF++HicxkbB46gbGtpRD+IsVLLMCE7
	 0q20ePvsK/joXMZ4kOeVGw+5HmQ0899mLZ/O+dH1iMxvFMFoJzYcmlny1WddHeOvcI
	 luz4LeekoU/Kv2ymlsXy5VAEY/27Q41UmUDd2HYC1gUJsb5BPdPF8x44ocMR0uTxs9
	 8oSnrmPR7icoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B1EC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888602276.29998.16496647467864530481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6de69a289cb0fcf98b1c940c454e844c93a9e11d71328494dabdfe163415b5
Date: Thu, 20 Jun 2024 12:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718886022
