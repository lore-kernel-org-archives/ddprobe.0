Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C4E322B
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744082394; cv=none; b=SKTC/Cjah4RQuyXrhLHK2McHz1w+UqyN+tXPZjn5fqXGCkGjhCNyZzQeSvAGpFwOAKGCnj6euUWFFrtnHj9KZJc0Qq4JZmk+sY8+CsTX3pNid+FN1khk1jZIbrIHbcxA1DE6by3olr4melNPU9CYU6U6y3gHeuupxxL4ZLYxV5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744082394; c=relaxed/simple;
	bh=5CwsWfEvQwadl+1sJFXSVpDM/b+3AquGewD8rfhmfOg=;
	h=To:Subject:From:Message-Id:Date; b=cQ4m4z5ZUCgmTTxhvz9PzusMdj3stf4j1n9+F9kociLyZpLBjV+gHBuCanvgH4HKqJFP1cuRvfIQoxrf+CAAK26PZjQMuReYgD3sdsbXm9Kz079dW4M1+gYFwBmeThZtDdKMaZtZ6Xs3Y63Mxgd8N6IelcAZ293hxTAQorKyUuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rc0qjS6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rc0qjS6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE9CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744082393;
	bh=5CwsWfEvQwadl+1sJFXSVpDM/b+3AquGewD8rfhmfOg=;
	h=To:Subject:From:Date:From;
	b=Rc0qjS6qYFuTudY7ZxqMIJ0St2L6PBZuF4hYxfZhAwpAAOYgaUyuTZUxeO4XyGLQn
	 si/X3R51jEB69DMw0sGmufZDr3qntPiTRNVOd/AgSwUrczyHlXCZ2E0ywCJkjdY+yC
	 2rS4aBJVxatstIzvDuD0bmScwLCF5qSUNTLnB8+wumPQpMzN4FH5mWvYhAenixHtpt
	 pbRT07voc7aQGQp3Of9/amLousHEd89BaIurq9tFfGuJEGgpBqQvivqLlgFxizayZd
	 o3bqHwrtb6qt/Y4zNqPs5zL3zFOOAHxdtTKNzV2h90P0cLd6T6HDUuMqviHCftl+4p
	 vIIki8Whuda1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A102EC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408239363.25471.3291269698187079123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a92e64f88a0d2e2149bb3721f6b1026766cb640d2573c346cd0b846c9b08333
Date: Tue, 08 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744082393
