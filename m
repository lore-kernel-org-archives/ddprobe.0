Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB273A16A0
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782446854; cv=none; b=uHIEqAHYFuKn/MXDY6Pmr03mxlflFk0iXC5RE9uGHAr2WBt/n//t+HaSrxDlZlxCMsY7rfmPIskUnsPH8NctjwtOXRut1HAPTQE2+XahdeDQQJ0YfkjZFL5snYrLt73oJ0y+2vcVXOTGa4YJ35vFUk5WhSJbUoo3qUqgcBilFVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782446854; c=relaxed/simple;
	bh=in1KcyqfhMcrMOjTuyg2JdyKZI7Oj6/W3rjwHeFXbms=;
	h=To:Subject:From:Message-Id:Date; b=h247LgLEjmn1KPb7IsXwqBtqoYTGdDvh5srBb8bIRixomReEy5tE91oFT8TW/KiyFwa9icHDNuq0cuSp5KcqRR4mgFDfwcTqfEk8AiEkcAL3LYj+GxO8mgI+O3U9F29nP+ODAAy53qWpLLLRpQhZ/EwpzY7u5+pEvUL4VSDU8gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRcaAs+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRcaAs+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B2BC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782446853;
	bh=in1KcyqfhMcrMOjTuyg2JdyKZI7Oj6/W3rjwHeFXbms=;
	h=To:Subject:From:Date:From;
	b=hRcaAs+Lg8PvovrkHni5VyzKceKC5FZlkUzS7d9TWjhNI+AVTEXW/3rjZnHoUDVIW
	 u2nma5+wYpSWhS0aU4mLvYfZ6Eu2l2PoCG63tvQQxLNxTIxCtp6W9qkaTVQdyBXnhy
	 pNpkximUMEfccp+38ahGqGWyOpSGQa0qOvLhvTlk3Zgl98iaXSAbWkPFVsSzPGu7JL
	 oa2IAkkjfMsDSKqYiBTG1johWtutFfMJHpv7ci+sw9wrd4XgC+g0/hBnqsoBr+L6WZ
	 I8MSERFD/F3Fkk1ZoTYXokXd15ky4yhutyI7nVr3uIrEng9wUSsi1hnQ0etYR8xQYQ
	 oUO//XUfjf4mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9818CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244685368.23898.5836898191056505959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edee660da998fb608c381e8254cee3fbd0dc13c57e758b909c97990dc3884030
Date: Fri, 26 Jun 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782446853
