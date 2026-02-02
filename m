Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB8D281525
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770056633; cv=none; b=sBbrsUd49FgMG9OzlZNE2QCqdgmG+VXfGH7EP/0F98sjrwK0y8P8kDKSxUPCATpRaRJKoWhb12GvTnJksQMKO9orGOMfeGyBbYfmq399CmnRYhPdNtY8MbtebwbUzWkLixyOZY9zjh9Dp65p8Yau/um3fxpuM+QqrgHOqK47248=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770056633; c=relaxed/simple;
	bh=B999C5WpmAJWtiyzTpk9ZXkxdorcVE6kmXYsZ3NuAng=;
	h=To:Subject:From:Message-Id:Date; b=nSa91v+18gyRktd9EwOg8Rj2iV5yoJ2QdrSjnkDNCIC1lEiC9USrcHzNQOT8LRSVFWPgXaDKMELJCz9aFfji128is3L0hCetHbsVvYwAZbXHsM6rkOpB1mnO1mnAQFwOEX9U1CfdDRe/b2lV+MN+aRDi1d3L5SER5rP8F3tUqzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaCkVvj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaCkVvj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6678C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770056633;
	bh=B999C5WpmAJWtiyzTpk9ZXkxdorcVE6kmXYsZ3NuAng=;
	h=To:Subject:From:Date:From;
	b=gaCkVvj0ZSYR/ARbtkrF1wwW89yGDA+3aTJyR0NMHhOklSNWdLG44riqRXjIxN/vO
	 1wD6wnveLV9sm0O5kk33te4hRARBi6htGRCB5e3/g/pqjSaEOa6Ym37h1CK7PZprGN
	 6J6euboPRL0wEnzoxzBbfHdlN+rn+EpHBceUtv3oTbDYF8GPdqUtZqBmSsWstnopGe
	 8rXhd1KtV26Ap1MLi7vumpm7c28NDJBv5Ie00dZFonBG/cxtt4ysbeb+tNkE/UjWio
	 +QFxSy9ZEamwLdRQzwtQWJIisgt/AOVl3mysQ5GD+u25CzCtHv00N4HDX5dnEilyU6
	 UBsNPRqOZCcPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE4E7DF19
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005663359.10424.16489101426543780554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82b908651a4555cf3577e26bcf2d18b70e374955f9e6846a3d7f000fd357d95
Date: Mon, 02 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770056633
