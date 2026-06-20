Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E3D3624DE
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781953595; cv=none; b=GDYmVVua6z3GcEOQuPENIOPx85AqhB6eIwZotWWv/pla3CRDAKD55av1nJkf2qgwBATXJphKc4YO6/8Hz94GAN8/4mL4MO5VQ9d8x0ceQugwFQQANJq8hkE+n2ahHJZ4Ma0nqHbEOn1D1h0iNjdKKBaiunfWE1cqj9ABv5gXikE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781953595; c=relaxed/simple;
	bh=9sqexAEjnUl71ifuEZ+ERx+6/b22kF0/7ByGBo2gYNE=;
	h=To:Subject:From:Message-Id:Date; b=rNOtxUduOD8bQrfdYOtyuUfJcWY3ULDYFDrHP/GBej5XQt+xPy8kucnU6kUOfFDGbs/dOyGCW465aPtvlfTMcQWCVts5v5xNIjszkFnDrAPVFFd4/l1kBI4zM7S/+IWJtpiM1N5UE2TT9A3oOPVVqwwATdENS1YQaZ+/DkSz0iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7k5PjZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7k5PjZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2781C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781953593;
	bh=9sqexAEjnUl71ifuEZ+ERx+6/b22kF0/7ByGBo2gYNE=;
	h=To:Subject:From:Date:From;
	b=U7k5PjZmYKAbGC9mxnVL7MC06+C2+3TvJxFlaJn4jvnp0ugBlk/SG/AHQbIW8w5vd
	 PREMAxwIX+Yr5x1Bk7tjfo0W45s2Roq7TrefXKYf3RSK7e5DLtBhZmXQfRev0k9eUc
	 wkkSpOfaTMxVGxvD/tvIIDLOAt12p16UN+eQw4SSDj6J+5Ga+IurP53dA7mu/BAgLp
	 XBcCUEeKM97WnVQuFpQiAI5IxJcwfFq8Bz11R/9f+4mZNB22v9aGEHftxMPrQr/ZE/
	 yVzusqsFHq8NXSj3danyNxr8FlzulwQr0pLKoSIg4VGdyZlkHijWhdQqYq48bEzYCu
	 YTU9TLTe1eMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69EECD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195359370.9458.3289366142365399973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa89544356fbf63f3e71eb5df23e98b9681d9d1c37d1ae14ccdd48eb56e7a26c
Date: Sat, 20 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781953593
