Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E318500971
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768872234; cv=none; b=rU5CaiWRuFxMRiNfYFYzelHN8WbYi4XDHupYiUcm4hZNOU9cMoWsUAd+RzSkBAxIRKP8mX+yZzqkFJMHZ4npkQa+v0+AxI2TtWGZm1PWizSfyA4PnSZgS3TDmQSzSxanQQVp5z8fdBY2lrtoYXdi0KqkO+ycNDUyZMu0GLnWmQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768872234; c=relaxed/simple;
	bh=WQQZXRPUgqkJK8qbTB06szp6rfcwWfyLZc8GNwV3F+s=;
	h=To:Subject:From:Message-Id:Date; b=BuuYVc7H40Sn+GIa8XZLeYLPDEUjB9CFD2uDNZmmZErUUnj2S4esJERmKlK3wCX/xYAYdsmdkplBBiiBJ/wn/+hKNM/mFgnCqbDVbhfbI6MOacbbNO2wzxk7iQ6TVWHSaTR5uMmTN4U0L2qhYdohpQm5hJ/bqaHahfZQk0hL4ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Il0zgQQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Il0zgQQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6116C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768872233;
	bh=WQQZXRPUgqkJK8qbTB06szp6rfcwWfyLZc8GNwV3F+s=;
	h=To:Subject:From:Date:From;
	b=Il0zgQQhKTaXwPsYap6Knkt6qidFLQyvqIjb0KRdv5zKwpRbZSXcSsKkfFqcIDF/z
	 zFSjfpWgXZrqz1eU0fTnvBouDzxgewvtFXF8WU8o+XrE4c+EKvEDVkiBBfHhS3ctJm
	 g7G74SSVn6o4XP56yweI4CZBrbnxYrHHZMEvXFfhcCWNbFH0wcA+PB87PffL0Xdugc
	 JErXOI5xDXBb56h6ndoC7pT6jYHG19hDeYFkxHBUUlGPr4hShNqPzMgV49uytcyxgf
	 eL3oxMj1do8DMWNwjSipDv9lP11f0HUUfHXmc8G8NtaMfWJKNKIpN/OTZRTKZaUK9g
	 mSvmGMCdHCucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9537CD2ECFC
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887223357.16201.5409840342895027099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53c8fab1cfd3912b2801fa8ccceec4272fbba9e5f84378c02d710c4bba2339b
Date: Tue, 20 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768872233
