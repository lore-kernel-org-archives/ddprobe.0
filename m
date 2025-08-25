Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E32119D081
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756145394; cv=none; b=Fzr77OqUh+z3PTRwLs7X/uYLEAXKcZ2wg0XukRdcGRZF4oPD3yhK6FOud/WytqVYyXt2r5POnOPJmNUIbzmZFB74ziRFJebySv6rxBMoG0CD9QY6CzzoqKWGPgcOMW6rPTGwmQhOhch9ZamZ/xBNYISWVAvy4wMCcgXTjCKRsa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756145394; c=relaxed/simple;
	bh=ZZrLWcYeUDfNo4ckWqvtuda0hScnnqn/u0kWITTDInc=;
	h=To:Subject:From:Message-Id:Date; b=A9pq16GtwwtV4B/bhk8HG9eAkJpLJX/vpw3Nn6QQ1s8YberXfIGAFF3eymkKuUiqdQDghmVJ0SDiAn+uaC/QPPMDBeQbvIAhVLGO5cgP391dx48nanHzhlxoqm0fadPdPVNNO7mQ3Wjc5/UhkZzM8Q7WuH0rI8lf7flv+hM3REs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gfka2vjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gfka2vjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F20C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756145393;
	bh=ZZrLWcYeUDfNo4ckWqvtuda0hScnnqn/u0kWITTDInc=;
	h=To:Subject:From:Date:From;
	b=Gfka2vjnDMREhFnX3EE2y92cN2ntoiVjHkKsxPkqfwWWhVr4BvpRPtVs2hrFzaxSx
	 QX6AVlYS+M/bVeDuntgYzyLWFT/EXCQh6TBJOjUDCtQufw7EJLsbzdPNLrfC9uhOKg
	 SYPFNgU83JXVoFeG5w6VxnVaTEJBJXcWpEzDXMBmxEMOmaukKT9uyUMqOycj14co1K
	 PUcsO7N5uEPLti40mmJiKV2QTP5QBuM4xzvgDqfMR0Aifk8YFfcTKGxpgGwb+5WeNo
	 I/CkTr6negTOnRwzo02IDXGUduoqtEPSlbftIqYZGXfFXwGn+DDrRSjYColfJCjoXv
	 1vh9krKK+ZxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BAC8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614539358.27480.316196087110558356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935b40d8fb1ec7ef0569a6c468d453f63374284d99576938c0703dcbba7b3e5b
Date: Mon, 25 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756145393
