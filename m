Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEE51799F
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772885693; cv=none; b=NmwIwv7xvpDZ1mPf5EqPQTsN1XkyeRS4AhUhLQVvjJJ6Jzkp1/W2aTDOefHBQ2IttPLLHOIePvD30GxuwLc3hocP/Prn35JcaJdfZh8TRoKD6ZJOYdOjLOPmCLkQ7mYDGH3Z/ZiRWJqkG4xw7dsJyrH6jXmcYztczAdR2ZyOIy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772885693; c=relaxed/simple;
	bh=h0nS8Dzu5cPoGVB6mhsWwqZjkBbs8GxgR6ZjyWIDGiM=;
	h=To:Subject:From:Message-Id:Date; b=XfOcZJQCUDdhvGdNVci/SyplimEML9WlD3JqAzT690DS7aHwTcfFmMrYldVZF0It5/YxSYUg1CEW0dBVu7uHLh9CEPpsA5Toyxh7P0Tvg1kehQQr+DhoYfBqM24l8pYksDce48nfWpooNtW6xNbZ2aWVrknK5kx/Tl715lHbPsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgsYM8yr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgsYM8yr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90C7C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772885693;
	bh=h0nS8Dzu5cPoGVB6mhsWwqZjkBbs8GxgR6ZjyWIDGiM=;
	h=To:Subject:From:Date:From;
	b=rgsYM8yrjYZa52vPLpwR54fp0exPDMXeIkiokAssYBNkrYxo6DzduHTM7g48et18I
	 vD1QKZGNcCTVrL+/79S8yKak4g6nc5My4QcSS2agFGf6e4TcdNj1R3Pt4Sarou7BDG
	 dYUCAS+8whaSEO5vKUv9IbUMF+mrOhVg0DjGDx/OrnXEoePVAw1pyg2n6AY+Un88sP
	 2glW73A3kW6GBBYWWi86eJ1r3CqQxmUrk6yIzsTBsFdmZQDoK9FNqju1A2iPpPC9E9
	 IJYQE6RSwZ0w2fWZNf8c6HWeEaSAI8Ce8TWuCXQoZPac6BS4GsWtHVOrj+PksHjyI0
	 uvGDMGjAL7IVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91891FC9EF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288569358.28422.9086106257215682426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64dcca050f18451fa306a732202ca3d2de5aa052f5c07955ff489fcda20f460
Date: Sat, 07 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772885693
