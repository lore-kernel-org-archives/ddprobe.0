Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2243138553D
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773213294; cv=none; b=PW0ucS5wLeoqVpRb2om1AodwBXymHyQNPP8GC7yoAM6h0gf8Do4MRM0LdkhYEzWeC1YiBWfR3B4BL7A0kQMSZQd3BPnxtSskurgojBAis6kthlAnlKtUxorsTAZG79Ci3S1Md7bnLZP68lGdtgCy2TX4YlDb4GLks4FGU1wimXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773213294; c=relaxed/simple;
	bh=ca7hAbU8fZ7kCNngEz3+TiUlzH0iUchGzqQrrZHDUL4=;
	h=To:Subject:From:Message-Id:Date; b=VsCBrKdpmxm4E1xfrWA8OOlUufBuOwwQQi7dXGGJAeJwwLgTXr0yVNRYdVJnHRWwiOedudgJmZitdbGvUewF3+pZPvtFfoqBIOQ+WsWsQHXqFt678nobcysBNckTof0Bo1Llt2yvKkGFSvdImlyb8I9zdN/gZ6JX1hZHERz5rAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX73W5EK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX73W5EK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95851C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773213293;
	bh=ca7hAbU8fZ7kCNngEz3+TiUlzH0iUchGzqQrrZHDUL4=;
	h=To:Subject:From:Date:From;
	b=fX73W5EKDIGUiqbJpkD3R0O0tUv4J5fvd8gsEqiP4x1VQ8hWYs6LWcLKdSeHC9SwM
	 vARHN6AXBluVR2HKlffV7V/IwMg4Rrm1oGoesgSv+e6bkZrdnHlvOdE5sV93Jn2dm6
	 0yzUeceqZMdMyOXK4W7wSq+Tp0TDa5t2zGHrrna/vqbYLi3EMpgTnnq17z8FOWo7po
	 xw0S5115xa8RDdM5ADa2X9DKCILQpTiVmuRvjIrNSCP8RlyaGx1q55gm6oRSXqa1FA
	 Ud35EYsVNW+wauJUqLmaZvZSdPBHPXH2ulagprumRjGUXa+UTMGfbgx13q29KrgppU
	 GsDusnVhw1Mjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DEFD062F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321329357.12415.17980963230671845592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78aab08236f1dd7c9076992995a88ba5acae78ef569e10b53623443b0113052
Date: Wed, 11 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773213293
