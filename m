Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBCC326942
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772147094; cv=none; b=gYXhS2sVZ3zke9/vbs2QCu2dCuSWlWHa/zyIeKTLobKkIy3ici/84/jT7VB6HRUiQ7AE3c/SJE1Wyq2dfBprOdgC/i1BMFJhh0KuOvAZBdz1tH24UWkmWXsUhWRDjAdrNHThemTqi+Sgenods+XJv6rkLA/CGHEF4s0Wzzz3mR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772147094; c=relaxed/simple;
	bh=oGeeB7mGsakzFNeZbRs/uepeAUw8r2Cgn6EBkyLlvt4=;
	h=To:Subject:From:Message-Id:Date; b=sE0ckUnFphc7/OG3ib6MUfJ/w6L6QpRuyqzoHDLZ7cTK+zqvyQBpbFGSfpuBKaxhWADR92gzk1nF7A7NHxF7Jj8EVQhVAEmS0+iTo+jX9pF7sUhlGdBJJ1ASt4AFbWNeoLnkvLbMVZEgGg1YnCOieLD39fH6G/31whoAYJQmJXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u31k2j+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u31k2j+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB96C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772147093;
	bh=oGeeB7mGsakzFNeZbRs/uepeAUw8r2Cgn6EBkyLlvt4=;
	h=To:Subject:From:Date:From;
	b=u31k2j+6gZ29IPWNoKjHYVKwg+XPJyugdx+Z9j3OgZPCWz4XLJYPWO1/Rm0og7Gux
	 vlhzJSyedTMN6g2er7yFkvvBdUQEaOyIWWE2NQxFWaEqat9nLd6e6Br/8GPGRkUWRo
	 QdoAgax/6cRzRZROWHaBaV0vv5QFejaHwraZh1wgDd3BcF6H0RfkGIhdwfcuZ1gw2P
	 Hw5gkkBzsrKjIqIJDirWpc0Z9FUV75EihLMNN+JZ/aBrwJpmb01SpYFLm8oNmb+U/q
	 E6fBsOJrX2dmr4lE9QNF/gKwTfky7/yxCgC25L69G3JD7SNhHOdgX9z47m7GT5t/hn
	 g1cFz2MebIgyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C9FFD9E1E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214709361.19678.13637204707142461664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924b4ceca35ae8f873eb963b7cda93626374cc31807deb916fa2a381288f5ace
Date: Thu, 26 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772147093
