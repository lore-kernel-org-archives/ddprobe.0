Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E62A22170A
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747974594; cv=none; b=JIAFuIN2/FSSKMcZqT8bzavNmU8LtIrl0kcz9rTKifUPXO+SWGyzcRDIjcJmPyv5bJfAJ7H9+mRekK/y3vIULP9QyVlYyHFNSn+lX5L7iCKcNO/WWr684iReI8NYHa0aQDbBZsHevpIYLhF1lFKfWeweplisjZcOHrIZDtQ58GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747974594; c=relaxed/simple;
	bh=Inb2aIeAnw6HEBApv2bWeaId1/nJgsorRjg9GsFZshk=;
	h=To:Subject:From:Message-Id:Date; b=NgzZwEDCaXjuc92r7FpbXkh3oSnDYCrReA0R2OA8FPV3sM5YeYymIhi6mbnS/CjQ+tFmjlifncsjho7nS6eftvJbGCaZZGyRukRinmK6RHI3tq+i8z4tZo6kU00p0i2DNujylYUT8pHv01LcyQAJmSO9UYFuvYr8Lw0AmDd7KZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfIQAeIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfIQAeIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2107C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747974593;
	bh=Inb2aIeAnw6HEBApv2bWeaId1/nJgsorRjg9GsFZshk=;
	h=To:Subject:From:Date:From;
	b=lfIQAeIC/xRw3APWOOMf3rTtAbYCxWYC4thRUtc5eC6CHwBXMLP+8KotXqwZOXF0j
	 H+D86JvxQbrzCWhN8R8ZUNzCQUg1wLu+ny3g5y2lfrItc4B1f/ZLR8EdV9KFh6R5NG
	 Z6Ah/zfXfSF4bDmgly+1z7JS9TwsLC2wvCKMKXqJws7WgcuWX3NED0ovAjqx5tQNN4
	 iAn8un+Dv93ukzKxYKVOwATDNgeTLTr1A/3ZZdcEDzLyFLOVNkXdYXVesk8nET6RKU
	 sVG8dO4KhJhTV2blYybkeShboSxAleH1+iNtVlLdR/ajjqrI8AxQoOAj7XZc9l4oGA
	 /L8xzsPWxDFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E699C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797459357.22898.8446903416652194292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51326f5c66eb6b685a0a1bc669505badcf57eaaf8964526258dfbfa7e750272
Date: Fri, 23 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747974593
