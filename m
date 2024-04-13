Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A1456B64
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 22:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713046163; cv=none; b=hnIMOBya1MEHX9qjXrawUZIGBz4P4QfbGkqRtU9y5Z7F256a4bSfcpYh+A+ghqJ34cxOuQs9BQMfI1xVqzmzCVKURvzVj66fLTxisWgd/GDppTKahpQV6Ou8cPBB/Ff0rq44QEex+hnFbnFlkI5ROpEGmhI0c3rbKRX48O/Yylo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713046163; c=relaxed/simple;
	bh=n4widMj6Xlj0hVpfoMgGbu9mepE7yLuyWP5bu5DNDhA=;
	h=To:Subject:From:Message-Id:Date; b=gLUd3LEXqB/SRvEnJL/boHlsayGikn2dwy2imAFOu0saa+jd9+X/zuqF4C57f5QriUkEF9EbTZF4Iz4ES+C4AsEZsZM2dwSXZIrl19jJgrhqvGP7f/039XEB6rzYmGM58yQ099fPzIFNM2miopoWSXQKZP6eoCWEnz4mPOdixxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2uhruxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2uhruxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1753C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 22:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713046162;
	bh=n4widMj6Xlj0hVpfoMgGbu9mepE7yLuyWP5bu5DNDhA=;
	h=To:Subject:From:Date:From;
	b=P2uhruxuDE9APGH67kNfd/cHSkrVBnOc3pqKv5j7x9+jERJNoOBc4yFJ38DzCECXy
	 HUpuaQLmpZ73cyt5r3yHxdb+I0/818aFmxv7F0cE2VzkD0LKKpz/HwVmTrterOMAB2
	 Re2NN/Op7lvYdmkhmvVJgJ3jWBuZdcobhk1JwyIbnA7WQOP8CjhrnnkuosPy+9lKSO
	 WbfnhQoHUF6j64/jQhj/WDomX1CwQ4zaNHPx8G5ZGFCsogqrf/s4Jwb66JQAgMroPv
	 iVx+AbWTePygsMJWcxGYppT8C4ffawo/gmnczN6PXUZsDqGM4KKzyYsPnE/d21DFhR
	 ZU2W3EtZThYDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D4BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 22:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304616275.11995.8032909662088878530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986096e6805ddcdc1aaaef3bc69245ae66ca9343f56a9aa673076c1bcdf98d1c
Date: Sat, 13 Apr 2024 22:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713046162
