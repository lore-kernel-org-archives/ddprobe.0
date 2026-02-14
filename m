Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC172FA0DB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771071294; cv=none; b=eGt4yQKqw46BxSXpr32ZcburrvbzbvklwIRSrqp3N3AWe5PKSD1MVbEhdvv3ln8O1pULqs6LAYN3MT5uYNa7BG5De7LZFTNqUZemFvXRpy6FnsYXzpkGP8EQKqZJ0vyPQhMB03y0PnAskzWy9jZfpof3q1F6iQdX+92wCsdP8Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771071294; c=relaxed/simple;
	bh=/2CjNdmNEEmWogFp5aaiEaJFo9ScTaqB/iSj+v9LhQw=;
	h=To:Subject:From:Message-Id:Date; b=nkbUZ7Fr2G15gCFQu/c14wiDzb1Hi4WEViaCs6O8pUFN8ueFcRIFzMM4DTi1w48Z6DK6PJVEYsQh1rd2GAY04d8aNqd1ykDulWu5OOkp4g2iIomksW+26YrpA6T7ww1vUKi1Tt6BMxUgxELZHszo7ijgfox7qs7qhiymhguJhco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=repQeOtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="repQeOtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D9AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771071293;
	bh=/2CjNdmNEEmWogFp5aaiEaJFo9ScTaqB/iSj+v9LhQw=;
	h=To:Subject:From:Date:From;
	b=repQeOtX68Ei9wd18HYhWYA+LJ52OeQDVeWEofFwryRqEnIy48159wblBNe2tKnx6
	 pigzniUeISB7cbGboJYVfzCd0fh4PS09aTdkXd9fX6XdTm/Otgz8mWXmfgqVYRHYFc
	 +nS0/IwRqAwUdsjSXrNcnQOmkoqvJcwzYi6IScC1rJs62z4hjU5nK0QJLzWklcNA4G
	 EWF2NHgg5Ph+XBMeg4t9y4J8BA5vdvGQFh9SheIsWnolkkK0ZrTsjObeWEdbvdyU38
	 7X5OEVAxnUniEoZh0Pqk7kfIm6YZcQa8rngMDvfLzglR5jWMgHG14Ab6fgnMOi3hz/
	 21C81ZLZUUqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C3EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107129359.1839.5096036555081608365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2548bebb2d06a4ab98233365bcf1c2a461421c2b579d0ce6ef7572f3f3c8fa
Date: Sat, 14 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771071293
