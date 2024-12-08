Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABC11DA23
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733693754; cv=none; b=COnCsu2fERC3SO7CAmPdrnTz2UGnlAHMBWmtXKNF5b5DpFCDtzlJG/i82XkSxZIS6I3EUJ7260ClpDR+s8IxXKPDFcMEZ4x9XUcZuzk1KcHRUun3QNK+WU2UNPPXQNgp2ZwqQocuRAbXrqr7Obmb+MAFiajrhdvTivXOXr9tSKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733693754; c=relaxed/simple;
	bh=mEaiC7EByEz6H2P2zwrETW7lbEwQ+piPX1BFS/dZSl4=;
	h=To:Subject:From:Message-Id:Date; b=cFr5Uy4iPTXq0Rnp+4f1SHSvQk9bqwIofiPPFWqvgERjQHuIkUTiCaWlu1KELqWazShPswtk+fcj0CyYp3YJftcbOKLhTSACKnoGOOsrP4/z8FstbKTZxGww5NBuC5bVecBi3PpDaze6YbV/oxKuU+/RaIb91RUNKsGD89Xr0JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3SJ883C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3SJ883C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2662C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733693753;
	bh=mEaiC7EByEz6H2P2zwrETW7lbEwQ+piPX1BFS/dZSl4=;
	h=To:Subject:From:Date:From;
	b=K3SJ883C2EHCCdeJa+N0rs2b04uj4pXD/ZzlQKDFRIxljMliecv//Q8kbA6sjz3ZG
	 r6HwvpMT6YZ/WFw3WSlcn3fJKpsPZY7YqJLAoSMAqKl3SglSUY/mnvGaIk8pvbB0sR
	 7txCiITefHBDWpqxwKhkSYwmfMswHXNT2E00HueN1LJGxEp4erwxolCOzRwf5XPwTy
	 /3qu+QLf+IYqCZ+YrE+qm0j5axqoOj6d4XUW9ls1j+248lkm9meyiK1hr4uF24Ftb8
	 IIAt1Do0XimRbgC8aUHsIlZvrDXuvuxa/ilxoPOpnzVyGpPRRlm+tbB56l9D+FVE5g
	 82ZXW4TiG+tFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAE1E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173369375362.10678.9906122222111622343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311cbe3ef177314b99c8eb346291e953519fd05017d50f94bedd4d90ec3e7be9
Date: Sun, 08 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733693753
