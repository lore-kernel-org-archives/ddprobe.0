Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C387CC8EB
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945233; cv=none; b=upttrlEBdvyYF0Uo2qYNFHjNnA4aGhr3GYvejfqGzD/u+Uk0mtGkkf8R5SG4QzijFpi9NJEUajHTVD3BYDutmL3RQpy+KTAdqbYBno0F+wRAfPoL1YWsMhII+Ji4cTmaQ74wgu14rXi2yFNpW9dfvjBUNTF/FODuIdBOJ9F7A3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945233; c=relaxed/simple;
	bh=yspnJfjMZb9/cisFTPZLqo1LJlrgCPSLfWoNd3KCtRU=;
	h=To:Subject:From:Message-Id:Date; b=WiMomspuM/LClWhX7Yy3txP0b8mrqEpXwb3CadlCOzDGZjn6SZwo6/lAOy1EVmNv4BktUNsiup+0aZDW0vv1XLDv8lUZ1dS4zneZwXRLsYcpwJ12yqF2eFSjWsI+0HxIUVM9pXJlPttSDDfpV2NL+93/BfccZrf5u7huL61XTMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5y7V8F+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5y7V8F+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF2BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767945233;
	bh=yspnJfjMZb9/cisFTPZLqo1LJlrgCPSLfWoNd3KCtRU=;
	h=To:Subject:From:Date:From;
	b=h5y7V8F+ZglQCrHs2v8+3U1btATSOQbXuSuJ1sW0Cm04gIScsdfxTg7suPhTlknmv
	 bZimKgyqk9zY4xZ60LGhurj76qlq4rBlhJ6hJNLDyvwLTJDZfqiTjflEOk72MXsBnp
	 0w2KUp7dHD4q5u4qEzoDuKNlocpVMcxf7sjeVlbv17/Iox8S1KLaCAMhLfGnJImq5G
	 zjuX12Zn5SJltDpdSSGNeE1/gnxhyFjLmbIyetNO8lDTuqfsDevc8l1wusYqwzfb/B
	 MpXjsPPKj0ywADtdxmX6qVr5Q5uR4nzsBrIpsez4NnZPivh98MrY/9xx8Y605mRGzq
	 skMAwUmtxFNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80BD232EA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794523357.3908.8716093941428260925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cbd60cf938245c110ae42f9bcd93b71191b2d2f0912f67690f4f2b411cdf1a
Date: Fri, 09 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767945233
