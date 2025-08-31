Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A691F2BAD
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756623595; cv=none; b=bX/jMVzAtmWhAOhgkccdpt1jc1efgIuvZ2rHr6dfGH1CdetOUtDcM574KDYTJPZM4C+w1lYKi4LX9ApVjf3nB49g9QBQVQaeKoznkAIcl2V5uax1zT04eQqW/rvkCZ6aeGoYkJjLCWZMmNQFiv9ZrFIbb0+Y+0GtWBCqIiPSqEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756623595; c=relaxed/simple;
	bh=9Kh/YsDy1hSQkWUI5K0PY0UnhrnY1bK/bdbzhuGzhSY=;
	h=To:Subject:From:Message-Id:Date; b=P0aXUVrdr4qB8OcXwIFY8Vx4N2Rq8e6EOelQltCb8+HeM9hdqcXHLOmkcXM6bCQ8vqvYf1VVZ4q/FMzNf7+gvsTlIUKQ7aDwUB9SpTk01IMeVqKfbiCQkqNsu2lK8NAd8xM+W48T0S8PLmvdIEMr5AGXi5sTiwXdKoGTVyOBimw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1I2Mp7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1I2Mp7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A66C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756623593;
	bh=9Kh/YsDy1hSQkWUI5K0PY0UnhrnY1bK/bdbzhuGzhSY=;
	h=To:Subject:From:Date:From;
	b=S1I2Mp7zTNDjmCpvC8SnBq+YH/aYrsbinrwlRJnz53USS3WRQObzO0ff2ad8TJ4hl
	 upgfH0DAptrRyP9IIGoQqa/YAWlwTGyPCOUbEskAPdgbOkBv+s/26mVmuegWZI0jCC
	 wjt0nKNySuBdT2xnaHnk3OygXhOIVYlL4F+d7Nml4y2r+HUtpcKV5mLkL5VouSS0RV
	 RHjN/GOXfWCSN30Y+mDs55glJiQvUm9tx8++SNNriCcc79R4guNxXTwuO6TVH3FOhG
	 rfxIo45VPCeWYPfCJyDkmjhTjvwGDd+fwhzWuBuRlneRpOYG4VHFUWZAHdHtG7DEHS
	 NYOJYMAxeqC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E9CCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662359357.25274.4466021662079963527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94437bba120e21d026a333d9e7b0e0a66106cf14137f77e97c5ca454a820c378
Date: Sun, 31 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756623593
