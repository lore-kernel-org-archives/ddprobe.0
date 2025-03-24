Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA38946C
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742777995; cv=none; b=BjHteBQJxwIZ/MiSq/Nbi5P143NJSr3l2RIUvWuDK7jcTDucaaNZLsnoEvgbQxX+aJylAynuPbqsOs89Hwfi/pt8fJ8CFbnl1fUChNCpVqjAWEZkj1hSwnu21pWpiA9VHcZ5jA6X937eaoIMCwLdZL8aeZ6D1i0sEiCD9cWKshg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742777995; c=relaxed/simple;
	bh=+KiZrXfmzSOkmPA4Vazq882HE5lHE0Rrf7ggAcYVkaY=;
	h=To:Subject:From:Message-Id:Date; b=BL+SYXt65rr092G0ZNhm9nlPSEoI6UPIoJhp7P84tUUMklSKBCpXVKsZIlnstX6rjlLkfQnkLxkTNmcJG/AKRcdEA6V53licSk3iNU0AvvVPYzAHNu8wP1hUKHmDx1+lupJj9DIq2zzHXxezydxs0t3wRR/N3IkE3w2WCl3h5Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPqF0qAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPqF0qAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED86C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742777993;
	bh=+KiZrXfmzSOkmPA4Vazq882HE5lHE0Rrf7ggAcYVkaY=;
	h=To:Subject:From:Date:From;
	b=BPqF0qAGsO3leeyTKx/wXTDBeB8qGMJFLKCaAD4DYi87jf+rBy0TWKtupN38Pa283
	 X0BwWapVot4ERBXPhZHr7eGI3wF1ksYuPB9uUJdFsXPZhllMe4BDtDYrMOQWcRg/YZ
	 J6/DDVldDxRcYZiuwI22lQpWyJoAtkygbBuyN/BNAdnaG9MPChrezGtdzfnG3raPF4
	 2SORfO2sVXG/WnkY6TK/TlMEjRm4d5/7V2Pky9LT3Y2i7gGhBuuAkAfNrSkyHfhNZx
	 W6aFZCN4V8ubDnhPFOTB8rhIdtXH1tWDa1FSI4WB78hLGnx4QwQc9+DwojsXrPpd2P
	 nwWVWNbOLUtlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3ADC28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277799361.2527.15667032721910508899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2faf1a9a5dee0e20587f191bdeca45aa7ef33a8eb30ea48d1ae42fa28121ec
Date: Mon, 24 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742777993
