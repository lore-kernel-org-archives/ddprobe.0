Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D218226CF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748950194; cv=none; b=PvV4Foo1GdIq0ALJKKoi8v0Ei0wvdCozbAMthJ82P9wEO0oTXXwJnRm6npbAIPGKzRj9AHDNIzwSO6oTGJ+XgaIed5ZGYMUkYi+4vIEfN9gkFbsx+N6+9tnnFYnWOhir6zsOtqXdmwWX42mm1hA4y40J2VQuWxS8yOVaMSDv4Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748950194; c=relaxed/simple;
	bh=SoyJ+zh38G0T4RI1edLD5wFx4UyFrw+oXZFUGg/u7Dw=;
	h=To:Subject:From:Message-Id:Date; b=dIYJhBgmHdcKKr1e7R06NTmvqqK4Y7id4xrZEQYofum4DYoTQbhWc4HyVgwNl17z8Y6yq0PXXgubsX1d12CGaxP59+HgZ2o1ZBL4n759wnDIjdZe+zBZln5D526510RUcvcmnTmXUu6FZ+u92ofd7ooxtQSTNsFrFUcDrXqIp0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwqYCI3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwqYCI3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E56EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748950193;
	bh=SoyJ+zh38G0T4RI1edLD5wFx4UyFrw+oXZFUGg/u7Dw=;
	h=To:Subject:From:Date:From;
	b=GwqYCI3kJNsybEualbr38nziNn7QOw7cKi3oFroL0gRhsBLlBfbBX7awYzI9PgyKf
	 9iV2N2IeusmKZUH7E+NbtWXUnmA0WGcItWMq4aiYTWFXV+zqY8i78OK17pUouOd1cJ
	 3BnHGsQ9LFEQVkS2DpYKIadQB5xlJ8MFy4oVgkWXOA8d+nzPulHOCcQYv9VVNvpcpc
	 quZp9OrYi4u+UHgg06AVOkr8C9BVmkPDL2IdPBWRXxXx3PGSXyUd+euicfLWvyuyJ6
	 OS1nw+2g4SLhlKzZ5hp7YCYaJS2ULKFlc7mHVg4v/nI3G3BToYBAuQh0KQWubB9MJ8
	 l0nr6KVQup8MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F224C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895019357.2669.17532869656470767575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959670b5acb0a2faf98cdd8a709c6dd3ea1136e48d98a8020324735eb57ed5ea
Date: Tue, 03 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748950193
