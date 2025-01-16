Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236A91DDA18
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737029754; cv=none; b=B92ipnS5dX0c18Sb/a200uspe80PkpTh7PjSoYO1n+Vz3QCgH+wjnHwRP3EpVvnBv7mFLOEIl1m8PWtnkhhTORH/zOJ0biEX39Tciy9KvBzzq+ZatijaVa3F8YFdkADAchKBjIi1BDioWO5qRc26SzwuV4eULhDLNxGfnXJgz0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737029754; c=relaxed/simple;
	bh=/5S9izTFYlzCTntn5G1jxVVbR0Jofh9WplM2ouF9d3A=;
	h=To:Subject:From:Message-Id:Date; b=Sh08Fj+OkDp56z0A9fJEx6UUc091x0ndk0tvBpfNFfo/4q4UuSBennzpNFUUgRBAyX0Nqy3STMVDs1g7aV806xXOqyrosy3jTNGV7aE3cV8ontloJthUWxNdAQ5bN+kgvLgFmrj9JF/qoys79upyJMUwQTv+LFiZH7lo45nrSjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFzmWjj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFzmWjj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A7BC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737029753;
	bh=/5S9izTFYlzCTntn5G1jxVVbR0Jofh9WplM2ouF9d3A=;
	h=To:Subject:From:Date:From;
	b=CFzmWjj0qnoG0wbz0Z7bwkSvkTo5dSAHKmH+B9TB1MOxN7oJzyIs3XAWXHIwc2gKw
	 DMw+qmpqqLYhFz27KaZhfQ4GlrhD7BZWDLuYP7D2lzb87KOfAvARnwpTrVlstgLxn9
	 7P6P2z8lAuWOXGetoMSDJmf4Jhx6xEqUxzIx+01JNMs1fQgWKv+0YfAN50UtX46Ve9
	 BomUNMrnkSGsL6+VYC0I24WywglmnqCDssY+RAc34nxhBjHxiFRCWYF9ABA6h0FWVy
	 A9oD9223KH9FtRYM1+LlPstsZ5np/bmQne6lc/Q0K+BqF0sCIC2Ukw7fVmszBqvtWS
	 RjGDvUrFQ70Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1724C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702975365.8678.17872170772436483296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec4f7658ceb399964060dcf6ee490f66a51b71191729f65e7ab24aa8278058c
Date: Thu, 16 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737029753
