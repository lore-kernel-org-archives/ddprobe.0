Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5D433D5
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713706223; cv=none; b=SeU8u0BrhWy+nQSmwvb2BL+Va/rzcOXBc3CXDFVQSUWPkmNSJiSenDXSJJUdV8/vhc/40NODRYC+r7yEMJnRHkE0F3F0A/0K+1mkNQXrZ6lPX/lGgyojqs6ok4aaNmIaEiINSmQ/ogriKKw43Skh4xBSQq3N9qPgn4FjGdB5KzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713706223; c=relaxed/simple;
	bh=wZ0Y3RUt+LtDV8nKTQQaoSWL8+jNMErf9RY8SmFtyug=;
	h=To:Subject:From:Message-Id:Date; b=soG1s8h5SzeXQ+FT2VmtNUGS8KqmisQ7iTx96ykBWwNIYz4wbSgqWAc3nEXq6b9CunXyHa9MVNLLfh22/VSiYuu41XkRVuBseRJSTKJYqHCeQ3JaqkM2FGb2T8f3YoDEVQDUvtAeLRJAx9b9tbKy0qF2iLM0Gv4dM7jJungNd0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY5VjRrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY5VjRrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B3FC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713706223;
	bh=wZ0Y3RUt+LtDV8nKTQQaoSWL8+jNMErf9RY8SmFtyug=;
	h=To:Subject:From:Date:From;
	b=LY5VjRrZvXx1d0hVSXPn3PJD5jydqHMfX9fqG7e3fXfoF8Xn2yb9Gc9QTSGszq66J
	 XrMox2ShXG14ZAS6WiAXNKpQDT4ZTzejgxl0BfWhXF5GLfzIPkVHDPO36IsX0ZXcs3
	 7tom4tJKBMjuD3gEZKzL+Gid97TIhNr8a2s6dL/PVkXIe+zx4Ix1qLk+V4Of0kgS0j
	 a6L8DIEJtYqoLb75p6ZYT7yS7HhLQ4amWF2doZHCsSnkhCeTViEvggrvnqzZvrNpwy
	 j4xCVdGENDyLi2KtAREviTRT5IqbUP3UPVR3wwFn40uEWboRyFjQhxpDS84WugQOkq
	 +S4PGMKD9/iwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D525BC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 13:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171370622283.3710.7370667101948505920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069b8f88b67d46275458e447fe07540efc5a8e9913d31c99bd59b06d23950807
Date: Sun, 21 Apr 2024 13:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713706222
