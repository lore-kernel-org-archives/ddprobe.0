Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD202C158B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763138994; cv=none; b=fmQ3PQ0ypEL4WN4O5RvREzQTpLFypD04Fsy7Nu2Z2axUO4tbQrbCGy5j/Ki9okyr2BbqESjbu9xvvwi2zQlWL6W9T8rsP+/uKBiRaA0tME3+kNPE3Q2BjcV0lJ2l+QgSzbLZ02yD5juU5RAFjv+7jFl82evrXXgRxfhlexCEbe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763138994; c=relaxed/simple;
	bh=NnjFut95aa977GuHcVfDQPBzzqFbFWrK8GZ5MWY5vec=;
	h=To:Subject:From:Message-Id:Date; b=LcrM77ZjTERc9zGil0Cifgfc8jXFteJSNMC6Zrcq6oUzGYp13FmUbFpH9wG8+xm7WuVKYL1KP8Li6HLsT9qFDIWJyxz9XpResZ/G7U0mVK6DgAk6oHZI2sU6hMBKH4kk4dDbh6FzVFFq03+LCckefsa2y/ZzJYcxgVE4iOIn4fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCzYwbZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCzYwbZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763138993;
	bh=NnjFut95aa977GuHcVfDQPBzzqFbFWrK8GZ5MWY5vec=;
	h=To:Subject:From:Date:From;
	b=cCzYwbZcX88S77Zr7OlVWVM7EZm5UprLaSHQIipic0KEAP9whUUhvldb4FUp2suN6
	 /20v5ErPBMmj7frX4i5dZSTNXWToz9SMvxhZjgKK528t2hvPeIelveavqv26JMRcp1
	 KpOveXBMquuU0UL3eTs7k9cHiEzzYDHGhkNyYIY+Q7Ey8HqtzneF7cEDHS5FC28dpc
	 7BnVeV5+m9jP+Fc56MQAllHnkXO7vd1c+iZDoseb2i1n5ia/SC1dIbLqyKNQqmTabZ
	 ycwM+C6VqDgsY30WPItWXobaxUZbVqhOTVOql1os91MeqPtz0FMUvsLOqlaN6S4tF0
	 E3da/DN8GUQBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D73CE8D4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313899358.30910.13274244957695016361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533e25827cceb6a074085577f44c4da2b97cfbff1c066c4f4440b205f3fd6758
Date: Fri, 14 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763138993
