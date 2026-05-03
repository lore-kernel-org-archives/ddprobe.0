Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EA572618
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777777654; cv=none; b=jH7i/FFgONIRuxsb3wLyJAtKxQY8M5cKW6l56FxgundnWLnSDUha2PCwloKDgFdJ9bnsxGSI5UGrkOPfJoiSdUlv0eb8N3mZIflE1DXM2vzj13IXi9Ynk9UlDEM0VHPGaCbNcON7UPkTJHF2DmDe55Jaho4UVZQWM5smczaBNmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777777654; c=relaxed/simple;
	bh=RHcE5q+EYjN/r6k75RizMkYRrFg92oHrYT1sErnx5h4=;
	h=To:Subject:From:Message-Id:Date; b=lJv0HZ7Nj5dFctNEn9smj2v6PKdxCwUxuxSlVZSwQgdP6eaYjg7Ijv+RaEZzKmrvsl37EkEibdIYCFYXRlrIYjt+h3TU6hKg5UYVOgy5ZZ3cXQNaVjrXPxXLdgOJATFibvUDgQBc6yae1nSe8wmXXb4haeTZY3wAe7FZcO0+Q1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrq79eIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrq79eIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1263C2BCC4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777777653;
	bh=RHcE5q+EYjN/r6k75RizMkYRrFg92oHrYT1sErnx5h4=;
	h=To:Subject:From:Date:From;
	b=mrq79eIPl5FT7J771nywr5aouUXKNEXOcoC1vbwoc1AtqKxJWT2AygdAzW9cwAx0g
	 DJYgBo05JXjQ5/lGThjBVc+uNcatZJyhF/URgAZh6mWKCyysXf6Y1iRvqBJbn70zvo
	 24jgbnwbledegCt75qq5eo47VBbg7h2OYkYA+QnGxglkLBn8zWLGQzdYypkWwDzGay
	 bM7FBwDI4tKGgyso1Cq7c2O5LfFl3/fHxLP58fKOwtPZv17/+d6jsGNoSFqtUeI1xr
	 /s93uCpCF9MzGRj8Gg1qc6qJoJHzcz75GLkSFJqfLcSiBG5J3O5nrgzNQu/3lWStL/
	 AgsAPaqflRY+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCA8CD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777765368.4815.4906567839330460487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5881f816b7cee564950380d93d875679e3ce9e2d1c9a60e82f815fc6129abcc
Date: Sun, 03 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777777653
