Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71082797AB
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751870393; cv=none; b=SnFJKrq1igIqdAlPWuRnV1C6VfBflbV3bQaDiXRcrHaawmFO75HHTdk3BD4POIXjAXP2iSgtNDmRbh/OW2YWT7OInl5K87+UOKXBxhGuLdK81VAmvZ0uF61Nq2VGFdvINsenS44kihTjUv+H4MO+jsCd4gOkvVZ9X5hnrzIr+sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751870393; c=relaxed/simple;
	bh=W0F1rvqJZYp6fKdr/gz3lg/G95S/ReUCxTsXSXbVJ9Y=;
	h=To:Subject:From:Message-Id:Date; b=fgbiPphNjF3EFJkIpYVeYNSVOvdsI8TcS4qUB5ZKQLCKPbvx+XARx88tg+lEOY5ubKGrXRDxdXGmBGZzpQoDi4bxdmIoy4S45lCbv349fN8io7eQlQDvAaQwROl2lauLmnq3Bq7nttsLrcMZbw4Z73jx6oufnN87Cw/XMAb8Y6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMuS38iV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMuS38iV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5ADC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751870393;
	bh=W0F1rvqJZYp6fKdr/gz3lg/G95S/ReUCxTsXSXbVJ9Y=;
	h=To:Subject:From:Date:From;
	b=CMuS38iVZ0Aw2pvHBgRnlfVQVQnTqb5bTPIbp7aU4vYiebjFYoZCb7YW26nos4SiW
	 6MuTDANhaUTLxdnziLXhLM+m0bVwL1hzrX6gfS+ZXDJ/BIeZyppoYYR4AW5zKCjts6
	 FSwaYne4N1yHWRqWlgwVRBPK5S/ZlVqwHOAIost3YyWBtsIM6IB54TuigZz6wKUAB4
	 9rGZ2g54lHifREqB1EOgy/MriuHarqgrola3KIf+IsOp1FFRltsnIA5I4HdxuMSQRt
	 RzKi3NzU4+9CWD2U2HoNb8dCO/MGt6n3d1TZ9zbfPYl3Bx1dZeqK3iyJA4iZFqMy5g
	 Krr99Wpk/+HeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E474C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187039357.24274.1813178260780868134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9c3324f78a10f0d763a4b8bc45b6c425b789938ae6815d2c0fd3a09f93839e
Date: Mon, 07 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751870393
