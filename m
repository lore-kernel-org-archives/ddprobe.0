Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6868613B293
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787454634; cv=none; b=ZC7m5dK8z8KsMGXKgf+xc/y0otIjQOYDJTEkI0zEfYQpWS87t8H7bAZiLwRMWQN2FAby/gh4rGLTpZjSf50JJZ2a+J5eHwryzGlCB9PUa2g7fQHCoA49vqIYmxLmVO7Ihn/Ig9YKRDZ+deLr6bTbcE6AV0Fjjps8gZwFlgmhVKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787454634; c=relaxed/simple;
	bh=PkRn4ZrNTluLXhlegfHGyDkpvtPs8vJkceP5gb3+IIw=;
	h=To:Subject:From:Message-Id:Date; b=oQdLfor1uCGTzJSKJjsuq437oJr3z88ivMGQ+iodRKK4awZ6JW2manEl+cgvi/lqAkH94HgAYG7PtfLdvtmMhdnbo9E3O3y9pQFeqjB0D0AVW+hMHiwKwlV4Y4sOBb7RbM1FjcNAFyE5GNnppsmAsljiE069NXuevoNPJibfjBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvVO2NeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvVO2NeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA64EC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787454633;
	bh=PkRn4ZrNTluLXhlegfHGyDkpvtPs8vJkceP5gb3+IIw=;
	h=To:Subject:From:Date:From;
	b=KvVO2NePynSkFVTf39jH81emYBJFXysmipDbk7E26bEHk183i6pX6vleGBZtABdwT
	 fSStR+Mi0VGHP4WyJ7dPnlNHGgcvOeLoNB0aEvXZHLKA+3qEBW7rmVas1fKxu1nx8W
	 KslzJJbN+s+9D0dd5VoTSuWTjXnyXue5fvmHJdTpEf2LjMrWupNsCT0V5Tdi/vZkhq
	 j1OtRAi0GcgSYRRimsTs+BMjFFWNk6o0vLrZPy8RHKpIxPnFUl0zN7fC2U+jItMir2
	 G8ToZE8wGnqyRDqvbdz8HGiF8WMlFp1Ty59eaLvgy5uXDuDGkNGH0O2fOvDQc5oz1D
	 kmxuIebKZDvew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B221AC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745463368.18110.4925777513015349755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04943fb1e0201525d8424d7e129f6e936a027a273a1ccab373e6a11970c4df6b
Date: Sun, 23 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787454633
