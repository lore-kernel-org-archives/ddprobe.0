Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED98223DEF
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764622374; cv=none; b=NXjWBrE17VgkFnL2PuMJRn5R+5xGlCCjKfBvJ49uswiGSVeAguWaPnAj9A7H4mxPlshDLcj2UvSBYkHgsrrSjPuvIa76czNbzyDqrsOEWZAdPEH0PSuk5swoWUrkpAGVT/dCE24Mf3ioNrD6GK9niW42sPcP8YOU+trbF5wMD1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764622374; c=relaxed/simple;
	bh=HjrJV90hlMpSVQUcPTlDUoqmmTOBEU9i/trvjACc3rg=;
	h=To:Subject:From:Message-Id:Date; b=PDvoRkOpagHQ2HPo/V4L/6Ls355L/O4AshfmdHdmyT5ttYidoryi4Kr1+SKKzLLw1/V1Dpf0TUdEG2Mhsj9fUk7joQPs0LSBfGk5bMEkg9/wEvGiHaTFEDn4B7eWjBQJ7k9G755fgGjYhrjgZQTLa5vK/rnWzGyu5wXg0nFyAIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgLdUdPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgLdUdPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C7FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764622373;
	bh=HjrJV90hlMpSVQUcPTlDUoqmmTOBEU9i/trvjACc3rg=;
	h=To:Subject:From:Date:From;
	b=rgLdUdPc50UQIQtQtQ2xW0/azXIythMWo0lN1sUPAxhrdTHyNaYim+IqGVMix0PcO
	 pBN+3XriwwWK1ABBT1qKGy4lvL+ueYPWi2Hjxf5J/b/2Q9EEvT17p+PfR9rQRZOBO4
	 1NoQ3a2pAN65V/3lmqXkLhGlI0Il2qDwD08XotyoNoJnOROCnHEW0y/0UE0WW9MgO3
	 CJwwUSd5Z5No9QChdBcNXn7kxHbaHg50tRQyJUdDjzpkaaTdMP8zeHlEY6zCXPeF+T
	 Mx4+iWmSVdF+jFoJJ2ONyhSuFt6Uxjul4xjTUUDozWYXz7G5S8relc4clE7y8ZCiZa
	 mFfkuwxBuyYRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D24D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462237361.28548.15275369568192654409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9652a90bcbe2ffaca2338048757005b545d99d1cddf3519e7653f25912defd8
Date: Mon, 01 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764622373
