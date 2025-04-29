Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3142813AC1
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745968794; cv=none; b=gA4Dv+R/9wthGkCo2fPYDAdNYfhIR5REjBg0ftnoENV+8WKkIYsHwMiw0Tiqgf5qF8ouQLHQAF2TYV0B6Rsu9q3CshnFLD5GBhBXSDflZtDJG2PjIHq2+320MVXoJyGqD7mO6ZeH0arwRWrexvOc5omXdxQsN5CBkDjZmd/Y0+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745968794; c=relaxed/simple;
	bh=deaxoCxy28MoTxzA0mSZzxrAzUCwTcmJRkKKvJXkppI=;
	h=To:Subject:From:Message-Id:Date; b=F8P4YdBqrViH6sPO+v/hMzoOG8PVUYGucTODeb0WQrmCoSsKD0B2bD8rIaqSLr7AigXijR16QlFy4G2db6WsxqQ+zDzthh1mRe0LO0bPm/f9VcaCtsXoQQLcJOr2IsbEP1uU0CaQXMsOaaj/I6vm+7il+y/Sxces1mAOmli43FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbIbPBHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbIbPBHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E853C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745968793;
	bh=deaxoCxy28MoTxzA0mSZzxrAzUCwTcmJRkKKvJXkppI=;
	h=To:Subject:From:Date:From;
	b=DbIbPBHxp9VXnmQ2rQz558Hi0xEHiNEsuY0lFulps29kzRW3EaQGJfv3XZdF2EdcD
	 3jbTM0gkXmKJTsBU+aKSaqm1e2FSiSrvnCjgRTNCTCAcphhoxNpiA82jAbyTZ3Qdzi
	 Nrhda5jp3AS9OXTIvwafnolVpovRqDjf/l0r+SetEpbIyDcZO36lsqinhPLGJw67N0
	 WrjBnwsg5oIC7x3+20/T4MgmleCXc53XWu3zcnzrZ6sqStMY+l4LdgpmyqIRgkqE4x
	 yKKRusQdd/ZKjMpfDujVESULKWE2u/uq8tmefjDsjQeLoYB4SDoP0nN243t5AInxmr
	 n3fpvHVqrkV+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD9C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596879357.20699.3931103847377760492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2774e6e80dbcc5a10630c3c895d306378b347fac6aa7d86e11939c1bbc018be3
Date: Tue, 29 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745968793
