Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253631BC4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750600194; cv=none; b=ZHb6r6leE4U+N+VNKfUt/Ms9T3C12U4o/15aZWw2gIK4mrfyCulKI4nNbDKL5D1cXOqWGEQAhM0Ari+GOfzE6dHf4WCbnVd9dRRwpBKrTH5TE8de05hLOoMvSZOSXj4ctsq2eVqnN/HWDsqd7gEYoNJNB7fleDnc2ZHU2YrgGYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750600194; c=relaxed/simple;
	bh=xLF5JtBGI94x1c8v6cUGAOHo3G/531q/tRTHimjtB28=;
	h=To:Subject:From:Message-Id:Date; b=eKgg3mzXU/Iwp/B+ycnAQhO2xy1WnJOUnR+uRYqfq9Z48WGrG/+TOrdi99mRyMJKnfinwyKrueajQYpr7Ga7Xl4aMml7jyW7i5sjaKkrz1827KsqZed6H1/MpqYShFJ3rwsWvEHyi5SpWsvJDbHNTSBBpxlu4cz04f3Kqoi8qr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bu+AbFWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bu+AbFWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB21AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750600193;
	bh=xLF5JtBGI94x1c8v6cUGAOHo3G/531q/tRTHimjtB28=;
	h=To:Subject:From:Date:From;
	b=Bu+AbFWHWt1/t54orvfC2Cw1mlW3SyaUvud6TElld4tyCbnbV9I/N8nRFkEeXUkg+
	 0FMq3ayQDkT+sfMBCRbhGpUaYX2Fjj04aHyA8CUX9OW/+TgSblXRbBJXWkAbqSSmkA
	 69VooQ6PgLTOs6EzQZqYqN2YCU2249k+YZsUbXoFl39u5s3zNflL02wV/y5Z6QAo6t
	 U5Bw7qCpVuAeuCYpzji1aDXHUzqmjqpec4Cw1RQGQHUHXTi3PXArcGMkEeNdB7HaSr
	 PmgMplSw3uVZooURNt9jP2gFCFmVuLGGPgb70EcwpK3LLplO7MSfMY/BDnHtVxCHbH
	 2CJfGpLDTnGmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9839CC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060019358.15665.683531046656939224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e1f3e80a31b2eb2621eaee2cf06d4009554723a3845dca8d8ced55941e98f4
Date: Sun, 22 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750600193
