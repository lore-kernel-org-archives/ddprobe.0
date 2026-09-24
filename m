Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6664D432310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790235034; cv=none; b=a5Bx5QcXVqEVoiTX26r1CpD4Kv3J3v9Cn2i2H30H//rZfOfQ9xWMVoF7AlbSyfMUDFpQD+UwrMCyk47HCV7cCO2heU6nFy6pEeRymbRHfRt/Cgn7CDpwLSkTL0YG6MILVOWj1NE9pxk/8+w5YDkvLr2sRna1ne26ClcWRwdb+1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790235034; c=relaxed/simple;
	bh=ymf4Vsp/Xhl+r620MtoKlUX1ScOLkDGfZBqDah6AANo=;
	h=To:Subject:From:Message-Id:Date; b=BDfmEzpbRpgaUL+qA8jgkfFA2TYnTMwx8orRSvG0Du+kB5/bNC6G5dVO8e26QJLYLgda8IuClTQqdkGCKw2OnNHO6u39kb0GyMukZPdDBVMjT4BNYeD5aLteIGZrYoql2diwbqHos8EHKXKPCm2or+jXm1ieACpqaJHH3UMWnJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg6LY8Xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg6LY8Xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD3FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790235033;
	bh=ymf4Vsp/Xhl+r620MtoKlUX1ScOLkDGfZBqDah6AANo=;
	h=To:Subject:From:Date:From;
	b=tg6LY8Xq6P9GIEhJhUNDd5zdCwOsIUDFZQnu9HSeYp6RfrK4mBuKkCvL8PGGn9/04
	 Zdkrg3VL3q4O7vVyrx+/Moh79riQwi5TaCtgcnZ5uTHA/UkdD/wkZVbdfEDJaLpVAo
	 aL2CqwCyCM/W6jUMruLz02W8liJEq9rR8zAYvXyHJwzy0HAQVboxKBuMTXhBy6XdSV
	 dIbwYNWaUeKdZLfbEqcRw0rT4k/BEidaRWek+fwlNsyKMipHnUx13QoBFpZAkrm2ip
	 D/GmqJoffeBBBLQVFeCE0TxHaKGUBJSqX9V/cKbgAo972Q/4PmYRZcRpXnYBx+v05Z
	 6HWwLd0d+oTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA16C98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023503369.1706.13996853133370867722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbeb7b705ac8009230b51dc6e95d2ec6ec38cd6841f4bda7a7de90793617686
Date: Thu, 24 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790235033
