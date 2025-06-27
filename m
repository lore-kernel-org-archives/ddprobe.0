Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD7221B1B9
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751064594; cv=none; b=f96XF6NQ0t0MTzYz5y/8vNHV1r89v95OQYdViHWzTCWM4h/ck+HtuXFf5nkIlohKRQdQotXa8BlyG9oHUfOsDSm+WA7r0oy7vDU6PX4iXx6VjpMSXXIzSS+XfbXNL2hQt/nWKfPhjYndZZQM54137EsOfqDbeDTPX/IvRnKSDpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751064594; c=relaxed/simple;
	bh=24q+GR6D2688bcvl/GfCVVZa6BVi7aXifBHHb7laqj0=;
	h=To:Subject:From:Message-Id:Date; b=AjhcAPWOfEI/C3NcHXSVF/DdcmvI1PSDmpuQkzLLFJ+L8KfeYAi9NzVx9zchJI8CTxqrIbyXNQ6pglh+qeTbl6wX4RZ06JYDR15CbD6cb8B8CuBJate4vWfb8liWrMBCJfcH/5dvvJvUacsvtowuaXbhaR0C19kWpvHclkkFAQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4/W5U6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4/W5U6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FA0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751064593;
	bh=24q+GR6D2688bcvl/GfCVVZa6BVi7aXifBHHb7laqj0=;
	h=To:Subject:From:Date:From;
	b=P4/W5U6pPmdfJAWyr75OQd2W3XZ1SH/9orPoVUNuzrtVql+e8f5cy5bGV8iS+/d09
	 L1beKq4S7AeQmuIVm+utrK19+iyRojy3DknEwj/W+S9I6UGqHvVSpnfKsILkuIajM2
	 4MI6TLkcIIuV5p4t0gHtUVs0ifGU25lVlOt0UI3u+NKlgoD8xkhGnz+nqKS6nxd3Wr
	 GK9OOYDF4zfMvNu8cBt0EJJokRyxjZo4oTa5CsXunAnvIDe6tvuQuH06/LQhjqgmDv
	 GGZP4shhJLiZFOLIXgk9QNi9h2VdzVfqIeIDEd1J6jJ+dASwkZ/C7k9yqzcJyBQ8MN
	 hm7+n2nIMFYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1582C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106459365.23315.9628001620088631446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7565a8db6047f1507416974cac34802fa1fb8cc7e5ddd712e9a8f72b366215
Date: Fri, 27 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751064593
