Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1105B23E35F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766232234; cv=none; b=KMfUtqSdTwzeQFttj9VhiukGzkAgi8blOtyKlqmnEXbb8cSlMFrp04dzJkkmYis8D7SObmHXkGwuCo5LPZEUXUqKFYp5E5XsbKX21uorUm5LxnfqI4XV+IOQmXubtt65MXb3O6/3yrrFrDNo3BGrw8Hty9zU9OhzTLl3FhEHmc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766232234; c=relaxed/simple;
	bh=sRuPDzXY4cP8WQE43+zxYAKWQbzsSHj1cElGIIFJyuk=;
	h=To:Subject:From:Message-Id:Date; b=CSxB38twn9MdwDU0IOUcSYG5m+NRxGR9tD/Jd9f2adERQe9jTbb2v2HBYnqexKFu1hnhS1OF2ZxHbSs4VqM0ZQjA5hqAkfzOhkP46SPa239lIBYKw6PkFvDU7jyCuZyhAMBop5mXNNbHSu61NZ8JcMlvCUgFIk/f6tSDlByKcpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rytKWSyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rytKWSyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E65BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766232233;
	bh=sRuPDzXY4cP8WQE43+zxYAKWQbzsSHj1cElGIIFJyuk=;
	h=To:Subject:From:Date:From;
	b=rytKWSyhLNpdAMVeNhUkaya2QYIFkb4rSvqwFkreLCoDs6X0JmK3mnyT7D2EoHLMh
	 hMbZkj00CaesbT0Nc8IuK/X3qCJ/HWmw70h8OGF7dshO0AE8QC7srGlDBAKEmLvN0h
	 MOP0iuOj1XmLJ724CxBnRM7ygXowZJuo5xiTQwsONGeaunC55+0AMmKb/TLGPVG5kx
	 A2xBowtHqbeqqD9tBPXz7N6ZAaauO74KQDSYjgOVaDV2xo87Jktoa1i+1Y9BHey15J
	 D/kjndKG4w8Vh/EN2qCml1l8rnmm1i5j1K55sX1l1CNnCQESGbOWxymRvKfw/8o2re
	 fCA63G1mzgt1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90971D78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623223358.20570.14472232377125410001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ce8aedcea249a0b807332526e22edc499ccf1d7206f66697048081463075cd
Date: Sat, 20 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766232233
