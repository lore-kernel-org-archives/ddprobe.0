Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344C021CA02
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761358794; cv=none; b=MDerQUgWFs4x7tZC46Ndijjrs2yQ3PsrP9XWhR+v/XEcmst1z26jxguXEtzw/+RvAUqd+u9uYcNQXK5zggn8USWwE98QGOvHLqeR6qYLG/j407GKw7yBpJQKoWMlXmrk6WlwdAd62gGRnxuy9UPCdIXgtfjbTDTPE5F669z/Cb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761358794; c=relaxed/simple;
	bh=rHPcZyWK153OcKXC4eK5gu0NeQ7G7eoXRnw0wEptjnc=;
	h=To:Subject:From:Message-Id:Date; b=UmdtkW8CHIS0/L63n8GiwQrboraph/ZsDVgYtdcGZAZtFf2ofGTEpacKaNDxIIgIVtGXxPW74YPyg9XONr6QigrOcO/7dnUDn44rkZxejrfSHwOxmNnFfDD6q7nMHnA2s9WFLmiqdu5kShzyCyJWHpzCyAsp1n2o0PjMnDh8lJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkBqql6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkBqql6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABED5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761358793;
	bh=rHPcZyWK153OcKXC4eK5gu0NeQ7G7eoXRnw0wEptjnc=;
	h=To:Subject:From:Date:From;
	b=fkBqql6Wt0wAf6oQbAWYME+qy3S3a3IjT036kITPdgIj8aEWns8spq8NZtUSoYjAx
	 zULk5m/0pkQ5XzCWf/KZIW5MFHfixS7SfkqlEt7Xzuikgk0D8mvyCFPs6vm2tgEJMs
	 DB7++dOIzt7l3HEAJAqhhk6V52J+qZ4M6Ddy6JUeWjdqeOHmKAM6xLD9jIz6OriB06
	 D4hROmpHcAd7LzXE8TdbVyubu9QgB67LyVZ8mxmDW+EFxgxhoDT1MatFobSVmBhEan
	 /jBe9O9yZqZQguXsUjYWkUbu7sUlxp4PBsuRoBDprY11usBZKvTSY1DlqPr3GPo2qO
	 eyNlJFClZkCOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98209CCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135879359.18736.11247650158257694167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb869130d33ad45ee37f72d69d3f68bc591dec13c6c87eafa859d3e976e3614
Date: Sat, 25 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761358793
