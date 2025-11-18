Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA382F5B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763442114; cv=none; b=XuNuMDYrHMAGqrHlO76gZe3uBMdlXUbKDhUlSAf5tFtJPEDvKdxACW21dCrxReXT6bl5Dr14bD7Nzb99f2DZA92JE+MZj8PDBCZgUBOmZ9a/Rayl9rp3qJ0aBdQrNiTpbpY73GU3iv9icmTuMo+SlPADBDNcegdlDlKVksn/P44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763442114; c=relaxed/simple;
	bh=Vl1CTBrX+EStI4C0IqTwGgCJy7KLXlwqb9ZYLe+uwRU=;
	h=To:Subject:From:Message-Id:Date; b=n/4DzM0WSk6wazuYYiryBS2rHszCzeJ/CMIv6NTjzMzvE3cNCIRNMdc+LHB8FuTsH8NB24LQgCcuqwsPpn2tDc04AjW5mG9QRGV+OS8NRmYqUNbbig0uR1c3QxfznmKqPAnQtWup9kkKIxr1qtypl1ElCOXwEyxdwFU+Pj2lQak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNtBnD66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNtBnD66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9564C19421
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763442113;
	bh=Vl1CTBrX+EStI4C0IqTwGgCJy7KLXlwqb9ZYLe+uwRU=;
	h=To:Subject:From:Date:From;
	b=uNtBnD66JFvelPa2XngGqypxxq/fYDhr6+pQzGxRqgycB7XxIJ3NKBddrMYx80Xjc
	 yz8326GgylpDcinXAehc/0hPO5FdP1CAiFCzVpAc7pSsXBSpyssHPppuu3+ttGTdcb
	 qZxZREjkJIWcXnPEuCVUJ/hbqoYcFEYfUft4E16yWrxvLBDbBUiSkOruVC4CzwJoug
	 TMY63N64zfent+2UNvUnhXPlCBmLwvYH7V7aiW9nOIn3yej9BKLikNH9eJ8KSkbNEv
	 mf3esjAZNjGyBaC1bky7WaOroM8cocS04yIEJEcgNQNVySE9IG2Cv4FfpSyXyN33zY
	 2iKNYOSkrcNQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93014CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344211358.32077.5255062187849526768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b32603a9aa2a0a8bd080a332f9d1e0e90b2edf4d1842ab932657933afbea67
Date: Tue, 18 Nov 2025 05:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763442113
