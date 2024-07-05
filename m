Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA211448D4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720170323; cv=none; b=keTCPfV0e9Ru9D3DhXZK4+CmZoU/LsC4vuZZJUV2GQCLtBXAQ0c7sF0yeUIuCjz7/52Xa7+tCyojQ8nomKUijObjWrO7WI4VwjKzBBqEiomAS3NHrmZhA+FT8oN8utk8NZlO5VOY61GAASOPCktbTqpP0h4JXq8QA+AAAspW3jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720170323; c=relaxed/simple;
	bh=I8XYhcRXvmDECxhcUcFunpxpx9t8XULeOXIjfkJ6YlI=;
	h=To:Subject:From:Message-Id:Date; b=ZV6/8CBIcKvCn3kZ7CEfk3PMAMACxZw1vBM4rkY/OFDZqdJJItCacEf9Xthr93OtDuhYJPqJ/DybM/W1lByd+4zbdBTF1avxhdHx4K7CSREcTjgbmdT+kptUO38qvpxhH1O6gomkP05hYYImYb30GY0IUxYkW2pEdHJPZ77K/Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cysDhT4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cysDhT4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20ADC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720170322;
	bh=I8XYhcRXvmDECxhcUcFunpxpx9t8XULeOXIjfkJ6YlI=;
	h=To:Subject:From:Date:From;
	b=cysDhT4sqM+0w8NObqfq0rps+hVtjUgfp8Ppk9ZTSoqV2+HwX6EdlTmKqvfDCFOc2
	 KD3P8AK0k86KRV9z9zdCK3xEaiG9j6pF7REC9yAefwvkmc5rnv0/V3dmhN/Rg7qZkc
	 T6EkvYdciEkrkC+9hlNzLRkA/iUVGc4Y1GPA8aSsVexHK4psDxwvPB+vHLOUQJ1RZR
	 Mvows3TQr7J1CWCvToUHHiv7ZCv2y8fnC5Ua0nOOUuRGgKzQqneand8xiQaBzVSXPK
	 HjCGquox/6lfUdh9kqlPEE4H/vpOGKcMNXb/KVceGE8GbaCxDDbgX+6E7hFsKielsX
	 7Vz1idMEbTdAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBB0C3271F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017032277.301.1363861264378867441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d5107c09f2adfe41d80fd2ce22c146aebdb741046c5fadf26be25b361c8fb7
Date: Fri, 05 Jul 2024 09:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720170322
