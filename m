Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354D910F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758337194; cv=none; b=KRBa5CPx/EhESjKil5SNxv+EFdNZLBkAo/jZe3fjtW05wh/aXzUo5k+RtDUQOVntWwlGldAjluDN44hHrN/OK4cvSyvpjL0oeV7J9yZ6WAr+AbrdYVPCbmcfFV/rZTFAAVYjp12C7vWemLgAle4UE8WWZUhS/aOcggiHJa+i87U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758337194; c=relaxed/simple;
	bh=kIDuBJnN30vJyS5kpKN5zaRMmpLUXKNqwTiVK/oHmCo=;
	h=To:Subject:From:Message-Id:Date; b=HEkeX+1kyOsljsZJUzxouRZwYXFckn+piYBQcN4teLEaNXk7KU1DkRfNjmG9G8IZQqSPCyuqrMGTZ+GFO7CP68iZ6OxqpZ15jM8oyvhloVEu5URk9z0ZQBZ2wGT3rr9jUU3pe6ZAVQTPqRDHpY0z8QOX7k5yfdmc7rvHIxjqlU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp/aI5up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp/aI5up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A219AC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758337193;
	bh=kIDuBJnN30vJyS5kpKN5zaRMmpLUXKNqwTiVK/oHmCo=;
	h=To:Subject:From:Date:From;
	b=Rp/aI5upnxM+Ap+WMIE4iClS65+lkDq92h7dXrb5YkKGsX+r8VOJIzRNHkCDq0Bvr
	 Ax9wYIhZKwaWIpasS9MgjBLtVsivgmdLR29QKCGU3IIPVVeLiOvM53tbCyIXHsOytB
	 HXyyAWfx+qz2BL/ATYWaGFM/+uf+u8GvOZez3ubYCzaRlG8GZ/ojt5YgJbLFx5YnOp
	 Xuv89vfdvkgueXK4vllkBW45GLjVrJHbMZvm34hjU9c0kq2YqyQfzAc3gChEkam9bZ
	 fZDCGC9R5W9+akq1KSgfnHypdR7/OVwBMClOX8NlzYFpdl2FThhK/Th8rG600Oh0A2
	 nvD73T1Ea6YZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C1CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833719357.28944.17148507558229206272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc99a9510e0a694eee7521d6f3a398b96e4406c8b51fb013de4153244d3305b
Date: Sat, 20 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758337193
