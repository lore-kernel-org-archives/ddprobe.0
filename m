Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13328381C4
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767480234; cv=none; b=HkYskD8H1/t5oHjpctMleBPUFiOvxk9AdTeLK7lVW+CwvpjwdhJ9FzPKK8QhIHlsw0aTfCGaK/OXAqQ5mpIsPlOxgEJLc0U6b4bAm3z7NgF6yEKeHo0OOAN6i1qnxHZPfQbojEztidPcgJzfiC9qe1NcbGXBEIKhp/wwGYu85Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767480234; c=relaxed/simple;
	bh=xx0DZtA/PfTpN2UYBgxwDXwVxzQyBCaPG19wmKHysjc=;
	h=To:Subject:From:Message-Id:Date; b=LoR5Il8UoVNgz71TgInqMUWLU31alH23BBN3M46cLaeytnkTOs4VNfyqRTXVEBBqtJiOikcA3RpFLrUVar0GKuANUC6NlALcVt5P3GrdwDQ8iqbzonazcACECJKtPoMBM6GUoQpfrBCLvRmPZIWq97c0jzbew/X/GOx1fIzTD9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJ3brHkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJ3brHkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1152C19421
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767480233;
	bh=xx0DZtA/PfTpN2UYBgxwDXwVxzQyBCaPG19wmKHysjc=;
	h=To:Subject:From:Date:From;
	b=DJ3brHkUCDV8Q3O0VfpzuKPN/Jw3ldBJf+Ge6g6E8fS9zkQuQ7Tn333XuNSwrTFO1
	 Rq42zavTQRhmMMkBb98ZWX8G6i7iTO3vpuNCRnHyljX4J5mc03t94n2e+ZKCR4/3Gq
	 txkMzlUFLEUnqZgl1p1zI+ldTJGWaLt+2OqUxh3d3R8jNdVxdb5b2ouSOoqVEC/lZD
	 hPsYetMIEW9imS8I/7R6ivJUgHtIu73aVLE7X5zLU5mSAKfNgK/QuzTocpVP6biqkU
	 0djdOuACShAgXr+Rx1J+iwFGOh7msXr3gXLPiu4mg8nCN/+G3EG4BenNsrrD2O1K3D
	 zlCjQY3W/XhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF39C2A062
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748023358.14897.1751464153757732132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c06d52101f6e4014c78a561b0ed8cf3533bdae09b91db237487e0c9dcc5419
Date: Sat, 03 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767480233
