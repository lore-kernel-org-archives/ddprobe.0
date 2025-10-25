Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1297B223DDA
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761379794; cv=none; b=R/IrrZQBT5lAZIRAQe8CkpOumrDOLkM5PgE+lG7Y7ig3CTNDVkF0rzFlPdsXQ10Bq3M/jcID55f7F1JgdVfteMfnUt7Bkv1tCwrhM5tZhuf+5TTQuMicqnrVi5Vt6jf6I9Tsn4T5gtzBZ6vPG13GmzmA8/K4EPCmEWVBeslk038=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761379794; c=relaxed/simple;
	bh=0/ggH4/4J/6aAykw9898Nsj1FtcEPiJqHNg8mHTEYtY=;
	h=To:Subject:From:Message-Id:Date; b=d3IVdSQWW6mavG7NxI1O0YeKQn7iEAc61RonCyh5RfvJgLTF+hnF/HxxAicDvAO30WzyOKmuLyS7lmFWSS4QEWDhMDQWnK5XTEymQM3YMEZedPgEs3x3hIAY13RRJ4kBuhA2Lsdnb25S5QUTdLcsHyUJ7AfQ4d8vGPYhQOvfsQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAOVu2Ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAOVu2Ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C65C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761379793;
	bh=0/ggH4/4J/6aAykw9898Nsj1FtcEPiJqHNg8mHTEYtY=;
	h=To:Subject:From:Date:From;
	b=UAOVu2DsMsS8ka40o5xmdVwFg+wzTnGaCkYPDcBsz1gBppQFK7is32rulcTTBnzQt
	 gmRLS/MNJ/Z3k8J4WQ9DBe/5OA231mzESjis0r2YocnLX0w73LL+zZwO7JbYRkSmjR
	 bPWFoifOtUsa7VYSuvhAzQvn/fUbt3rD+vXLlWCOJpPuA1Udd/GOCyQZ+NU9bcFB+H
	 6iO7VYYecEJRS3+IAjXxfiASfypLOV59eCks8sG2NLOsPR1hCxYQJubz0eOsPnjcXs
	 22aVDtu5rENWW5GiTYY8lggKhDAtMvZvvzZLgCF2uh05hRHc1UCgpCKCrNUpLPoIQq
	 99206QVMzNLSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95972CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137979358.12468.5205444236255652315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d47ec2f6342ea2d15ea9737c55936060e501eb294aefb5c1dcddf4be539bea5
Date: Sat, 25 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761379793
