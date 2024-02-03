Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266375F563
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706980697; cv=none; b=KdTCZsrq27EkN6VjR4EZqhhgWfO9QgPhgLRI7FOqty9wQEdmhiA6cBFKsu+B/ADyb8PAezybJZnu1NETZCRHSuKsKCiv5CyZ7WyJ8rEv8aZ0cQ1jGrXOExP6jjFYkth1/NnJki37AIRrG2fVFgfuYOJkexP4FGtdKsbg2BGkeM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706980697; c=relaxed/simple;
	bh=SuYC39nl02aUXkQYOyMS5szABQsnvpPon/VUqsnTuzw=;
	h=To:Subject:From:Message-Id:Date; b=hNODj6oqsi8bUrgDLrplXEhiC4eeEWQmlehRH+ZDUPFvv8rMuTmbex0UL1z8ONrzNYPWo0UmIp+Tn/JPa9py1PGAUDUHfJJ1Ab6E+x1Xur2OF/5AJ7eSvq3iqIrfxbC2qwlGxonVdYqQA50pYvc27NrdTF3voLrxsbJYmfsokhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEawdinD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEawdinD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F507C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706980696;
	bh=SuYC39nl02aUXkQYOyMS5szABQsnvpPon/VUqsnTuzw=;
	h=To:Subject:From:Date:From;
	b=PEawdinDFiKAPXCZWnYvOZZA5+KKQ+fafC2c4LzV5rpGuO7UFdF2DBgFeDiANz+5g
	 kHiSJp/TDeSGp9QhFpEJ5//Fc9RjtVB0smW8Zlja4PV2dg3OlBl0g8QLATdyApeprR
	 VJcQVbpuEThDOgCtyVOLLLDZY6XnYvzPUPvamP7xHsp6jsIx28nThK26EQQWrMznnA
	 KWKhr7noaKWJWtahg7VO0C8jPVDSZer28jPyas8BrSDP35+y+x3rMTFplb8IkJZI3Z
	 xQx5nrbuEtyewCHGgFFf7PC0YyZPxBV6caaSgTuE+EM/i+BHXdTFeFHk5VIsrX5bYH
	 nwlARYbcFwnOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DD8C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170698069638.616.7202666193630882595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3b1f5e202be988a2a11aa4c4f8b0d1f25c38e778ecee7e97cc5ae01d99f3f3
Date: Sat, 03 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706980696
