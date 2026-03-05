Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1CF1F7916
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772727294; cv=none; b=Q7lyskE+troF+BuPqKWDhHEZBo3sObTWhqruD4VgPdUEo70PGlpJ1MJWlzDu0x2lV5hAC3qznyAaIIRtwGZk9ZSRbyiZEiuBcGR9SE0X5lDtQ8I8mITmwVkKnSEkqayqa2kdqUfMy1bK3B8dsJjc6vSwfO0uoN/QbTyjCF/2y0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772727294; c=relaxed/simple;
	bh=KsyvHe2CqcAQ38o6OkRuEu3E1bpK7Ox8n0a1LfkUIko=;
	h=To:Subject:From:Message-Id:Date; b=RyEQca8frWFhlX2BZS+1p8Vabu7JD/nZ4Gps0K8eSCXD8gt1W9n2uhR0b7/jFx6gzjd8VPlXHfAyvWjizws1jKCnEfksOvXLf4M/5x055FA/ZKCRRo5hKDKQMcSWcckuKC5HqkljMrg1xkWhGDkc2WfIQ7c6K8aOH0+ZNAAqkK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOvIREEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOvIREEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A4C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772727293;
	bh=KsyvHe2CqcAQ38o6OkRuEu3E1bpK7Ox8n0a1LfkUIko=;
	h=To:Subject:From:Date:From;
	b=YOvIREEENtTbyofeRXk1NwLJu92Irkoh83fth3LAzNxsK6THzz8ZV9ZqLDgICK678
	 UWtKER1dQDWmiHiwMmktBZ0RP97bXxiZk6U6icG0dvaYwTbgYeOe6fBGiCwDfUcEdj
	 CAeCwYIJaGjYSWgr9vifhLvlZorgJmOpBvVgbdQnmrpXWMBNyCGkSQ4UT19fEmtkDo
	 +HbfIXcMNbX3awlg6bK64Em7vFzUKuvmR+qzVt84o6Q3wsos/ez7EeNeNuG6RlT2E4
	 7mWDHJ/2JptTiJ9R9Mrc4txbXlTPlCisHZEv+MzjHiIAfdKbc+bVCvtzWgYEeuQIxK
	 1OO33XAnihnag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230FF3D32A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272729358.13546.9010187753205730305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aed04732eec7a5725ed8e477c99cf61ec63c2793efe16c68f4e10466e2099e9
Date: Thu, 05 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772727293
