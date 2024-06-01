Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABFD6AAD
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717244063; cv=none; b=scCI5YetP0LGrQGPCqHbYcJac+gQtUUEzfO/K6RK0eZbjDmnLRo8MoBKwG+otDS57TZV9mT8PsJKqLFwU/5TPTJXB6FLunlJMS1WtH2/+0UCBfK53EoQfhhC1OrtHn/uC/xaJa7PXLKbIc6/9WOibk/e1LPesqnxJBeGnTyi/ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717244063; c=relaxed/simple;
	bh=5f00OnqJPL+uojpFJ0wAF/CImjdxKdR+4OQcTeNjpp4=;
	h=To:Subject:From:Message-Id:Date; b=k8YRe7zTMTczsGbNaD++WcFhh2//+FKqJk2k8YnU3MenpxtiRoF0ysYzHXtQLT9LUcP3wJzFYWccZ6l7fCibSkUPKTcTK2RyuoPvJdA4X4nMNKj5Lwt9UBEq6r7gMlP1vf0VDFBzUundBz4pYJ9tiKhW2a32l9pSt3Zws52J4ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3F9g63g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3F9g63g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33C5C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717244062;
	bh=5f00OnqJPL+uojpFJ0wAF/CImjdxKdR+4OQcTeNjpp4=;
	h=To:Subject:From:Date:From;
	b=Y3F9g63gsVWxBMTNicFvvNq4wYayMWdcVIkg0ipTVxr8BldLBujZMS1wBbyxtxbaf
	 WNf257NZfNCVxf2xHfqkUJrB/yPpzNPxp+XRwggR9UiAj5SXdi2idDrl+Sc7ZQ5H7T
	 MHsc3Udk84RFieahNnIZJNqD43aRQRnPGPM90A3y/Dqf12PQFj6XVajpzNFSPCT4e/
	 997vssQEkKECU3tyih1cdHamd5qWAMnKCboRYJ571OyqK3danxazExJWn0K6ROG07e
	 aIT8K1Ylc1TVfulu41OnR51zNCXyG6OOHI/fVC6OAvcnY4EK6c5eSe5E0R0unRe04t
	 Z3QPACA2mUTBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D3EC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724406278.2432.5966593889258093133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ad5c98f57158f9daccf60d3dcf4b9f5e61b8d246108055a4ede14b31633013
Date: Sat, 01 Jun 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717244062
