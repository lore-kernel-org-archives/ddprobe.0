Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0715426AC3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762976994; cv=none; b=cBgTU6p+QNQ3vKDy8Bt/jFadI48VJVn/acRPZ9zn8LgWDK0TnYFkGM+RUkIuhkqUKSoho8pQhWoEu3rinYHx08b9SKzaHvctoUNQ0sp6c860J3CrAF9guK/LPlmwPyD9+CuP20YZQcAtmjupfga5gd+QFF/xxhI6Z6CwQ1thxAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762976994; c=relaxed/simple;
	bh=4xkV7VvrB2OgN06ONUBmcT2WiUrYAKz+KNlijNmuYXw=;
	h=To:Subject:From:Message-Id:Date; b=XsTX1D0LBN6Kjz7Hq/Nhe72XMcU00nY9Qi05LOVIXHasrCRowjaiJai/tIxRG6P0RTBlD7+RYYYUjUVw/9CJO9KgH/oWrfUjuPhdhycc4xWN0zjHmP/iYsz0/oiCMiWdIxP/Tdwsk44AkTrOfyKSAQwBz5ZNzbXSmY3K+587+9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vD9QvEAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vD9QvEAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A53C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762976993;
	bh=4xkV7VvrB2OgN06ONUBmcT2WiUrYAKz+KNlijNmuYXw=;
	h=To:Subject:From:Date:From;
	b=vD9QvEAOUmpYlzOLsBKE/zFPRt+qpJ4kHhmREa2W0/E2To2QB1p6eew++fJQSXvyG
	 jGzkofY3TsArtU5jO6MTWNNaMX23IfXF1d4ffdKVJoNpx8uJePMcY+c0SMf+37j9qG
	 pwSBfz7meMK0gyxuOltpmHkKTnxp1Fa+XRQxhpT8NU3eZ3s0hYf14aHNRG/HY6H/IK
	 6aZ04j4DceKE1cJ3doPYOY6KaZAgv4SfUOjyi4au9N+YmcHE0LfG5t78HTz/rHgtHP
	 nneeXq48obt99/OTGT2mzqvdtPyDuBY9dTvu3Fb4F3uz7xM1maY2DmjaBnelGJsyfv
	 S/YSGkdU2g3tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941CECD37B2
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297699359.17457.10599856749929503958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cec59c2050fb6243d79a4fd8b2fc75c5dcb63eb15d3c9b9fe9bc694dce758ad
Date: Wed, 12 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762976993
